/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_DRV_AD7843_CFG_INSTANCE_H
#define _SWP_DRV_AD7843_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "drv_spi_cfg_instance.h"
#include "per_tspen_cfg_instance.h"

#include "drv_ad7843_cfg.h"

#define DRV_AD7843_BLOCKING_MODE_NOP		0
#define DRV_AD7843_BLOCKING_MODE_NANOSLEEP		1
#define DRV_AD7843_BLOCKING_MODE_YIELD		2

#define DRV_AD7843_INSTANCE_BUS_SHARING_TRUE_USED		1
#define DRV_AD7843_INSTANCE_BUS_SHARING_FALSE_USED		0
#define DRV_AD7843_INSTANCE_BUS_SHARING_OPTIONS_USED		1

#define DRV_AD7843_INSTANCE_CHANNEL_MAX		5
#define DRV_AD7843_INSTANCE_CHANNEL_MIN		5

#define DRV_AD7843_INSTANCE_SWAP_TRUE_USED		1
#define DRV_AD7843_INSTANCE_SWAP_FALSE_USED		0
#define DRV_AD7843_INSTANCE_SWAP_OPTIONS_USED		1

typedef struct
{
	bool       		bus_sharing;
	uint8_t    		channel;
	bool       		swap;
	int        		drv_spi;
	int        		per_tspen;
} drv_ad7843_cfg_instance_t;

extern const drv_ad7843_cfg_instance_t	drv_ad7843_instance_table[];

#endif
