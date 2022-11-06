/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_SERIAL_CFG_INSTANCE_H
#define _SWP_SERIAL_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "terminal_to_serial_cfg_instance.h"

#include "serial_cfg.h"

typedef struct
{
	const char*		name;
	int        		serial_adaptor;
} serial_cfg_instance_t;

extern const serial_cfg_instance_t	serial_instance_table[];

#endif
