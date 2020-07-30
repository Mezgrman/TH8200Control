/*
 * util.h
 *
 * Created: 29.07.2020 19:59:07
 *  Author: Julian Metzler
 */ 


#ifndef UTIL_H_
#define UTIL_H_

#include <stdint.h>

uint16_t average(uint16_t *arr, uint16_t count);
int32_t mapRange(int32_t current, int32_t inMin, int32_t inMax, int32_t outMin, int32_t outMax);

#endif /* UTIL_H_ */