/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_POSIX_DEVIO_CFG_H
#define _SWP_POSIX_DEVIO_CFG_H

#ifndef  __cplusplus
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>
#endif /* __cplusplus */

#include "serial_cfg_instance.h"

#define POSIX_DEVIO_STDOUT_BUFTYPE_NONE		0
#define POSIX_DEVIO_STDOUT_BUFTYPE_FULL		1
#define POSIX_DEVIO_STDOUT_BUFTYPE_LINE		2

#define POSIX_DEVIO_STDIN		0
#define POSIX_DEVIO_STDOUT		1
#define POSIX_DEVIO_STDOUTDEV		&serial_instance_table[0]
#define POSIX_DEVIO_STDOUT_BUFTYPE		POSIX_DEVIO_STDOUT_BUFTYPE_NONE
#define POSIX_DEVIO_STDERR		0
#define POSIX_DEVIO_DEV_MAX		8

#endif
