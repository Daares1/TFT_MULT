/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#include <init.h>

void framework_init (void){

	extern void pal_init(void);
	pal_init();

	extern void touchscreen_to_pointer_init(void);
	touchscreen_to_pointer_init();

	extern void ad_vga_ili9320_init(void);
	ad_vga_ili9320_init();

	extern void terminal_to_serial_init(void);
	terminal_to_serial_init();

	extern void posix_devio_init(void);
	posix_devio_init();

}

