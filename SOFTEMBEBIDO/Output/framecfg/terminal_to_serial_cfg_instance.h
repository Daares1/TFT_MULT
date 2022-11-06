/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_TERMINAL_TO_SERIAL_CFG_INSTANCE_H
#define _SWP_TERMINAL_TO_SERIAL_CFG_INSTANCE_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>

#include "drv_terminal_cfg_instance.h"

#include "terminal_to_serial_cfg.h"

typedef struct
{
	int        		serial_adaptor;
	int        		drv_terminal;
} terminal_to_serial_cfg_instance_t;

extern const terminal_to_serial_cfg_instance_t	terminal_to_serial_instance_table[];

#endif
