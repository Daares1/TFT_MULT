/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_PER_TERMINAL_CFG_INSTANCE_H
#define _SWP_PER_TERMINAL_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "per_terminal_cfg.h"

#define PER_TERMINAL_INSTANCE_BASEADDRESS_MAX		0xFF030000
#define PER_TERMINAL_INSTANCE_BASEADDRESS_MIN		0xFF030000

typedef struct
{
	uint32_t   		baseaddress;
} per_terminal_cfg_instance_t;

extern const per_terminal_cfg_instance_t	per_terminal_instance_table[];

#endif
