/*
 *	Software Platform Generated File
 *	--------------------------------
 */


#include "swplatform.h"

/* Global variables to access Software Platform stacks */
vga_16bpp_t * drv_vga_16bpp_1;
led_t *       drv_led_1;
ioport_t *    drv_ioport_1;
int           serial_1;
graphics_t *  graphics_1;
pointer_t *   pointer_1;

/* Initialize all stacks in the Software Platform */
void swplatform_init_stacks(void)
{
    drv_vga_16bpp_1 = vga_16bpp_open(DRV_VGA_16BPP_1);
    drv_led_1       = led_open(DRV_LED_1);
    drv_ioport_1    = ioport_open(DRV_IOPORT_1);
    serial_1        = open("/dev/SERIAL_1", O_RDWR);
    graphics_1      = graphics_open(GRAPHICS_1);
    pointer_1       = pointer_open(POINTER_1);
}
