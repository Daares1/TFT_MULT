/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_PER_TSPEN_CFG_INSTANCE_H
#define _SWP_PER_TSPEN_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "per_tspen_cfg.h"

#define PER_TSPEN_INSTANCE_BASEADDRESS_MAX		0xFF010000
#define PER_TSPEN_INSTANCE_BASEADDRESS_MIN		0xFF010000

typedef struct
{
	uint32_t   		baseaddress;
} per_tspen_cfg_instance_t;

extern const per_tspen_cfg_instance_t	per_tspen_instance_table[];

#endif
