/*
 * th8200.c
 *
 * Created: 29.07.2020 18:51:27
 *  Author: Julian Metzler
 */

#include "th8200.h"
#include "util.h"
#include "config.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>


uint16_t valsOn[IR_SENS_AVG_COUNT];
uint16_t valsOff[IR_SENS_AVG_COUNT];
uint16_t irStates[IR_SENS_STATE_AVG_COUNT];
uint16_t idxOn = 0;
uint16_t idxOff = 0;
uint16_t idxIrStates = 0;

uint8_t irState = 0;
uint8_t outState = 0;
uint32_t onStart = 0;

volatile uint8_t fanOn = 0;


// Zero crossing interrupt
ISR(ZC_DET_vect) {
	// Reset phase angle control timer on zero crossing
	TCNT1 = 0;
	
	// Make sure fan is off by forcing output compare
	if(fanOn) {
		TCCR1A &= ~(1 << COM1A0);
		TCCR1C |= (1 << FOC1A);
		TCCR1A |= (1 << COM1A0);
	}
}


void th8200_init(void) {
	/*
	 * IO CONFIG
	 */
	DDR_HTR_EN |= (1 << PIN_HTR_EN);
	DDR_FAN_EN |= (1 << PIN_FAN_EN);
	DDR_ZC_DET &= ~(1 << PIN_ZC_DET);
	DDR_IR_EN |= (1 << PIN_IR_EN);
	
	
	/*
	 * TIMER CONFIG
	 */
	// Normal mode, set OC1A (fan enable) on compare match
	TCCR1A = (1 << COM1A1) | (1 << COM1A0);
	
	// Clock = F_CPU/8 (~10000 counts per half wave)
	TCCR1B = (1 << CS11);
	
	
	/*
	 * ADC CONFIG
	 */
	// ADC Vref = AVCC, select channel ADC6
	ADMUX = (1 << REFS0) | (1 << MUX2) | (1 << MUX1);
	
	// Enable ADC
	ADCSRA = (1 << ADEN);
	
	
	/*
	 * INTERRUPT CONFIG
	 */
	// Configure zero crossing interrupt for falling edge
	EICRA = (1 << ISC_ZC_DET1);
	
	// Enable zero crossing interrupt
	EIMSK = (1 << INT_ZC_DET);
	
	// Enable all interrupts
	sei();
}

void th8200_loop(void) {
	uint8_t stayOn = 0;
	
	if(th8200_getIRState()) {
		// IR sensor has triggered, start a drying cycle
		
		// Spin up fan
		for(uint16_t i = 0; i < FAN_TURN_ON_TIME; i++) {
			th8200_setFanLevel(mapRange(i, 0, FAN_TURN_ON_TIME, FAN_MIN_LEVEL, FAN_ON_LEVEL));
			_delay_us(1000);
			
			// Make sure rolling average gets updated
			th8200_getIRState();
		}
		
		// Check if hand is still present
		if(th8200_getIRState()) stayOn = 1;
		
		// Enable heater after given delay
		_delay_ms(HEATER_ON_DELAY);
		th8200_setHeater(1);
		
		if(stayOn) {
			// Wait for hand to be gone
			while(th8200_getIRState());
			
			// Wait for another hand pulse
			while(!th8200_getIRState());
		} else {
			// Wait for dry time to pass, retrigger if necessary
			uint16_t onTime = 0;
			while(onTime < DRY_TIME) {
				if(th8200_getIRState()) onTime = 0;
				onTime++;
				_delay_us(1000);
			}
		}
		
		// Disable heater given delay before fan
		th8200_setHeater(0);
		_delay_ms(HEATER_OFF_DELAY);
		
		// Spin down fan
		for(uint16_t i = 0; i < FAN_TURN_OFF_TIME; i++) {
			th8200_setFanLevel(mapRange(i, 0, FAN_TURN_OFF_TIME, FAN_ON_LEVEL, FAN_MIN_LEVEL));
			_delay_us(1000);
			
			// Make sure rolling average gets updated
			th8200_getIRState();
		}
		
		// Turn off fan
		th8200_setFanLevel(0);
	}
	_delay_ms(5);
}

void th8200_setFanLevel(uint16_t level) {
	if(level == 0) {
		// Disable output
		fanOn = 0;
		TCCR1A &= ~((1 << COM1A1) | (1 << COM1A0));
		PORT_FAN_EN &= ~(1 << PIN_FAN_EN);
	} else {
		fanOn = 1;
		TCCR1A |= (1 << COM1A1) | (1 << COM1A0);
		if(level > FAN_MAX_LEVEL) level = FAN_MAX_LEVEL;
		OCR1A = (FAN_MAX_LEVEL - level);
	}
}

uint16_t th8200_getIRLevel(void) {
	// Start a conversion
	ADCSRA |= (1 << ADSC);
	
	// Wait for conversion result
	while(!(ADCSRA & (1 << ADIF)));
	
	// Clear flag
	ADCSRA |= (1 << ADIF);
	
	// Read result
	uint16_t result = ADC;
	
	return result;
}

uint8_t th8200_getIRState(void) {
	int16_t result;
	
	valsOff[idxOff++] = th8200_getIRLevel();
	idxOff %= IR_SENS_AVG_COUNT;
	th8200_setIR(1);
	_delay_us(100);
	valsOn[idxOn++] = th8200_getIRLevel();
	idxOn %= IR_SENS_AVG_COUNT;
	th8200_setIR(0);
	result = average(valsOff, IR_SENS_AVG_COUNT) - average(valsOn, IR_SENS_AVG_COUNT);
	
	if (irState && result <= (IR_SENS_THRESH - IR_SENS_HYST)) {
		irStates[idxIrStates++] = 0;
		idxIrStates %= IR_SENS_STATE_AVG_COUNT;
	} else if (!irState && result >= IR_SENS_THRESH) {
		irStates[idxIrStates++] = 1;
		idxIrStates %= IR_SENS_STATE_AVG_COUNT;
	}
	irState = average(irStates, IR_SENS_STATE_AVG_COUNT);
	return irState;
}

void th8200_setIR(uint8_t state) {
	if(state) {
		PORT_IR_EN |= (1 << PIN_IR_EN);
	} else {
		PORT_IR_EN &= ~(1 << PIN_IR_EN);
	}
}

void th8200_setHeater(uint8_t state) {
	if(state) {
		PORT_HTR_EN |= (1 << PIN_HTR_EN);
		} else {
		PORT_HTR_EN &= ~(1 << PIN_HTR_EN);
	}
}

void th8200_setFan(uint8_t state) {
	if(state) {
		PORT_FAN_EN |= (1 << PIN_FAN_EN);
		} else {
		PORT_FAN_EN &= ~(1 << PIN_FAN_EN);
	}
}