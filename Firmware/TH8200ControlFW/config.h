/*
 * config.h
 *
 * Created: 29.07.2020 19:20:51
 *  Author: Julian Metzler
 */ 


#ifndef CONFIG_H_
#define CONFIG_H_

// Note: F_CPU is defined in Project Defines
// All times are in milliseconds unless specified otherwise

// IR sensor threshold
#define IR_SENS_THRESH 1

// IR sensor hysteresis
#define IR_SENS_HYST 1

// Number of raw IR sensor ADC samples to average
#define IR_SENS_AVG_COUNT 50

// Number of individual IR sensor on/off state values to average
#define IR_SENS_STATE_AVG_COUNT 25

// Core drying time when fan and heater are on (minimum; retriggerable)
#define DRY_TIME 3000

// Length of the fan turn-on ramp
#define FAN_TURN_ON_TIME 1000

// Length of the fan turn-off ramp
#define FAN_TURN_OFF_TIME 1000

// Delay between fan and heater activation
#define HEATER_ON_DELAY 0

// Delay between fan and heater deactivation
#define HEATER_OFF_DELAY 1000

// The maximum fan level possible
#define FAN_MAX_LEVEL 10000

// The minimum fan level possible above zero
#define FAN_MIN_LEVEL 1000

// The desired fan level when running
#define FAN_ON_LEVEL 10000

#endif /* CONFIG_H_ */