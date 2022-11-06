/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#include "graphics_cfg_instance.h"

int graphics_instance0_ad_graphics[1]= { 0 };
#pragma section graphics_instance0_canvasbuffer1_section
static uint8_t     __align(4) graphics_instance0_canvasbuffer1[1][153600]  ;
#pragma endsection
#pragma section graphics_instance0_canvasbuffer2_section
static uint8_t     __align(4) graphics_instance0_canvasbuffer2[1][153600]  ;
#pragma endsection
static uint8_t     __align(4) graphics_instance0_canvasbuffer3[1][153600]  ;

const graphics_cfg_instance_t	graphics_instance_table[1] = 
{
	{
		320,
		240,
		GRAPHICS_COLOR_FORMAT_COLOR_RGB565,
		GRAPHICS_ROTATION_0,
		GRAPHICS_DEFAULT_FONT_BPMONO_8,
		NULL,
		GRAPHICS_CANVASCOUNT_3,
		&graphics_instance0_canvasbuffer1[0][0],
		153600,
		0,
		&graphics_instance0_canvasbuffer2[0][0],
		153600,
		0,
		&graphics_instance0_canvasbuffer3[0][0],
		153600,
		0,
		NULL,
		0,
		0,
		&graphics_instance0_ad_graphics[0],
		1,
	},
};

