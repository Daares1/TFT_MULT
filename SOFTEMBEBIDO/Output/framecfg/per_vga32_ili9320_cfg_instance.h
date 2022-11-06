/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_PER_VGA32_ILI9320_CFG_INSTANCE_H
#define _SWP_PER_VGA32_ILI9320_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "per_vga32_ili9320_cfg.h"

#define PER_VGA32_ILI9320_INSTANCE_BASEADDRESS_MAX		0xFF050000
#define PER_VGA32_ILI9320_INSTANCE_BASEADDRESS_MIN		0xFF050000

typedef struct
{
	uintptr_t  		baseaddress;
	int8_t     		sync_interrupt;
} per_vga32_ili9320_cfg_instance_t;

extern const per_vga32_ili9320_cfg_instance_t	per_vga32_ili9320_instance_table[];

#endif
