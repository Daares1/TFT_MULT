/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_PER_VGA32_16BPP_CFG_INSTANCE_H
#define _SWP_PER_VGA32_16BPP_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "per_vga32_16bpp_cfg.h"

#define PER_VGA32_16BPP_INSTANCE_BASEADDRESS_MAX		0xFF060000
#define PER_VGA32_16BPP_INSTANCE_BASEADDRESS_MIN		0xFF060000

typedef struct
{
	uintptr_t  		baseaddress;
	int8_t     		vsync_interrupt;
	int8_t     		hsync_interrupt;
	int8_t     		blank_interrupt;
} per_vga32_16bpp_cfg_instance_t;

extern const per_vga32_16bpp_cfg_instance_t	per_vga32_16bpp_instance_table[];

#endif
