/*
 * util.c
 *
 * Created: 29.07.2020 19:59:00
 *  Author: Julian Metzler
 */ 

#include "util.h"


uint16_t average(uint16_t *arr, uint16_t count) {
	uint32_t sum = 0;
	for (uint16_t i = 0; i < count; i++) {
		sum += arr[i];
	}
	return sum / count;
}

int32_t mapRange(int32_t current, int32_t inMin, int32_t inMax, int32_t outMin, int32_t outMax) {
	double slope = 1.0 * (outMax - outMin) / (inMax - inMin);
	double output = outMin + slope * (current - inMin);
	return (int32_t)output;
}