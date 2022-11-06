/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_PER_LED_CFG_INSTANCE_H
#define _SWP_PER_LED_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "per_led_cfg.h"

#define PER_LED_INSTANCE_BASEADDRESS_MAX		0xFF040000
#define PER_LED_INSTANCE_BASEADDRESS_MIN		0xFF040000

#define PER_LED_INSTANCE_NUMLEDS_MAX		8
#define PER_LED_INSTANCE_NUMLEDS_MIN		8

#define PER_LED_INSTANCE_ISRGB_TRUE_USED		1
#define PER_LED_INSTANCE_ISRGB_FALSE_USED		0
#define PER_LED_INSTANCE_ISRGB_OPTIONS_USED		1

typedef struct
{
	uintptr_t  		baseaddress;
	uint8_t    		numleds;
	bool       		isrgb;
} per_led_cfg_instance_t;

extern const per_led_cfg_instance_t	per_led_instance_table[];

#endif
