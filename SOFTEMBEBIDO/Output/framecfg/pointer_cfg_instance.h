/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_POINTER_CFG_INSTANCE_H
#define _SWP_POINTER_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "ad_touchscreen_to_pointer_cfg_instance.h"

#include "pointer_cfg.h"

#define POINTER_INSTANCE_LEFT_MAX		0
#define POINTER_INSTANCE_LEFT_MIN		0

#define POINTER_INSTANCE_RIGHT_MAX		320
#define POINTER_INSTANCE_RIGHT_MIN		320

#define POINTER_INSTANCE_TOP_MAX		0
#define POINTER_INSTANCE_TOP_MIN		0

#define POINTER_INSTANCE_BOTTOM_MAX		240
#define POINTER_INSTANCE_BOTTOM_MIN		240

typedef struct
{
	uint32_t   		left;
	uint32_t   		right;
	uint32_t   		top;
	uint32_t   		bottom;
	int*       		ad_pointer;
	int        		ad_pointer_size;
} pointer_cfg_instance_t;

extern const pointer_cfg_instance_t	pointer_instance_table[];

#endif
