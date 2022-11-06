/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_DRV_LED_CFG_INSTANCE_H
#define _SWP_DRV_LED_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "per_led_cfg_instance.h"

#include "drv_led_cfg.h"

#define DRV_LED_INSTANCE_DEFAULT_ON_INTENSITY_MAX		10
#define DRV_LED_INSTANCE_DEFAULT_ON_INTENSITY_MIN		10

typedef struct
{
	uint8_t    		default_on_intensity;
	int        		per_led;
} drv_led_cfg_instance_t;

extern const drv_led_cfg_instance_t	drv_led_instance_table[];

#endif
