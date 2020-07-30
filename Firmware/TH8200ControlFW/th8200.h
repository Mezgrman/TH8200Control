/*
 * th8200.h
 *
 * Created: 29.07.2020 18:51:35
 *  Author: Julian Metzler
 */ 


#ifndef TH8200_H_
#define TH8200_H_

#include <stdint.h>

#define PORT_HTR_EN PORTB
#define PORT_FAN_EN PORTB
#define PORT_ZC_DET PORTD
#define PORT_IR_EN PORTD

#define DDR_HTR_EN DDRB
#define DDR_FAN_EN DDRB
#define DDR_ZC_DET DDRD
#define DDR_IR_EN DDRD

#define PIN_HTR_EN PB0
#define PIN_FAN_EN PB1
#define PIN_ZC_DET PD2
#define PIN_IR_EN PD6

#define INT_ZC_DET INT0
#define ISC_ZC_DET1 ISC01
#define ZC_DET_vect INT0_vect

void th8200_init(void);
void th8200_loop(void);
void th8200_setFanLevel(uint16_t level);
uint16_t th8200_getIRLevel(void);
uint8_t th8200_getIRState(void);
void th8200_setIR(uint8_t state);
void th8200_setHeater(uint8_t state);
void th8200_setFan(uint8_t state);

#endif /* TH8200_H_ */