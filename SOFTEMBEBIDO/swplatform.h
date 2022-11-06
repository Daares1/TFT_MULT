/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#ifndef _SWP_SWPLATFORM_H
#define _SWP_SWPLATFORM_H

/* Device ID's */
#include "devices.h"

/* Extra project headers */
#include "led_info.h"

/* Software Services */
#include <interrupts.h>
#include <timers.h>
#include <timing.h>

/* Top Level Stack Items */
#include <drv_ioport.h>
#include <drv_led.h>
#include <drv_vga_16bpp.h>
#include <vga_16bpp_resolutions.h>
#include <canvas.h>
#include <font.h>
#include <graphics.h>
#include <SVG_colors.h>
#include <pointer.h>
#include <serial.h>

/* Lower Level Stack Items */
#include <drv_ad7843.h>
#include <drv_spi.h>
#include <drv_terminal.h>
#include <drv_vga_ili9320.h>
#include <per_ioport.h>
#include <per_led.h>
#include <per_spi.h>
#include <per_terminal.h>
#include <per_tspen.h>
#include <per_vga32_16bpp.h>
#include <per_vga32_ili9320.h>
#include <touchscreen.h>

/* POSIX Device I/O */
#include <fcntl.h>

/* Global variables to access Software Platform stacks */
extern vga_16bpp_t * drv_vga_16bpp_1;
extern led_t *       drv_led_1;
extern ioport_t *    drv_ioport_1;
extern int           serial_1;
extern graphics_t *  graphics_1;
extern pointer_t *   pointer_1;

/* Initialize all stacks in the Software Platform */
extern void swplatform_init_stacks(void);
#endif
