/*
 * TH8200ControlFW.c
 *
 * Created: 29.07.2020 18:38:58
 * Author : Julian Metzler
 */ 

#include "th8200.h"

#include <util/delay.h>


int main(void)
{
    th8200_init();
	
    while (1) {
		th8200_loop();
    }
}

