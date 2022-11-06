#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include "devices.h"
#include "generic_devices.h"
#include <string.h>
#include <graphics.h>
#include <drv_ioport.h>
#include <drv_terminal.h>
#include <canvas.h>
#include <touchscreen.h>
#include <pointer.h>
#include <stdbool.h>
#include <drv_led.h>
#include <led_info.h>
#include <timing.h>
#include <drv_vga_16bpp.h>
#define LED_NUM_LED_IDS 24
#include <drv_vga_ili9320.h>
#define WIDTH 320
#define HEIGHT 240

graphics_t * display;
//DECLARACION DEL PUNTERO display.
canvas_t * canvas;
vga_ili9320_t *vga;
vga_16bpp_t* vga1;
ioport_t* dip;
terminal_t* term;
pointer_state_t * pointer_state;
pointer_t* punt;
color_t  color;
color_t  colorcua1;
color_t  colorcua2;
color_t  colorcua3;
led_t * leds;
touchscreen_t* touch;
touchscreen_callback_t callback;
int b=3, figure=0,c=3;
static void draw_mark(int x, int y, int width, int height, void *vp);
char *cal1 = "Touch screen at marker";

void update_leds (const uint32_t * col_buff);
void set_all_leds (uint32_t value);
static void draw_mark(int x, int y, int width, int height, void *vp);

void main(void){

touch= touchscreen_open(TOUCHSCREEN_1);
display = graphics_open(GRAPHICS_1); //  Devuelte el puntero del servicio en caso de ser inicializado
leds = led_open(DRV_LED_1);
led_turn_all_off(leds);
punt= pointer_open(POINTER_1);
term= terminal_open(DRV_TERMINAL_1);
dip= ioport_open(DIP);
canvas = graphics_get_visible_canvas(display);
colorcua1=0;
colorcua2=0;
colorcua3=0;
vga = vga_ili9320_open(DRV_VGA_ILI9320_1);
vga1=vga_16bpp_open(DRV_VGA_16BPP_1);
touchscreen_set_callback(touch, draw_mark, canvas);
while(!touchscreen_calibrate(touch, WIDTH, HEIGHT));
    {
        set_all_leds(0xFF0000); // If Touchscreen can't calibrate RED ALERT!
    }
    led_turn_all_off(leds);

graphics_fill_canvas( canvas, WHITE);
graphics_fill_rect( canvas, 0, 0, 46, 37, RED);
graphics_fill_rect( canvas, 286, 38, 34, 40, BLACK);
graphics_fill_triangle( canvas, 47, 36, 69, 0, 91, 36, LAWNGREEN);
graphics_fill_circle(canvas, 114, 18, 17, YELLOW);
graphics_fill_rect( canvas, 138, 0, 46, 36, LIGHTCYAN);
graphics_fill_rect( canvas, 185, 0, 46, 36, LIGHTCYAN);
graphics_fill_rect( canvas, 232, 0, 46, 36, LIGHTCYAN);
graphics_draw_line(canvas, 139, 36, 180, 0, RED);
graphics_draw_line(canvas, 139, 0, 180, 36, RED);
graphics_draw_line(canvas, 185, 36, 231, 0, RED);
graphics_draw_line(canvas, 185, 0, 231, 36, RED);
graphics_draw_line(canvas, 232, 36, 278, 0, RED);
graphics_draw_line(canvas, 232, 0, 278, 36, RED);
graphics_draw_char(canvas, 157, 15, 0x31, &bitstreamverasans10,  BLACK, FS_NONE);
graphics_draw_char(canvas, 204, 15, 0x32, &bitstreamverasans10,  BLACK, FS_NONE);
graphics_draw_char(canvas, 250, 15, 0x33,&bitstreamverasans10,  BLACK, FS_NONE);


while(1){
       //para visualizar la TFT en una pantalla VGA

      vga_16bpp_set_resolution(vga1,VGA_16BPP_RES_320X240);
      vga_16bpp_set_screen(vga1, vga_16bpp_get_screen(vga));
        graphics_set_visible_canvas(display, canvas);

       if(ioport_get_value(dip,0)!=23){
         if(ioport_get_value(dip, 0)==30){
             colorcua1=colorcua1++;
               delay_ms(20);
             if(colorcua1==256){
             colorcua1=0;}}
         if(ioport_get_value(dip, 0)==29){
               colorcua2=colorcua2++;
               delay_ms(20);
               if(colorcua2==256){
               colorcua2=0;}}
        if(ioport_get_value(dip, 0)==27){
               colorcua3=colorcua3++;
               delay_ms(20);
               if(colorcua2==256){
               colorcua2=0;}}

}
               if(ioport_get_value(dip,0)==23){
                graphics_fill_rect( canvas, 0, 36, 286, 205,color);
                graphics_set_visible_canvas(display, canvas);
                }

                if(ioport_get_value(dip,0)==15){
                colorcua1=0;
                    colorcua2=0;
                        colorcua3=0;

                }
                graphics_fill_rect( canvas, 286, 79, 34, 40,RGB( colorcua1+255, colorcua2, colorcua3));
                graphics_fill_rect( canvas, 286, 120, 34, 40,RGB( colorcua1, colorcua2+255, colorcua3));
                graphics_fill_rect( canvas, 286, 161, 34, 40,RGB( colorcua1, colorcua2, colorcua3+255));
                graphics_fill_rect( canvas, 286, 202, 34, 40,RGB( colorcua1+255, colorcua2+255, colorcua3));
            while(ioport_get_value(dip, 0)!=30 && ioport_get_value(dip, 0)!=29 && ioport_get_value(dip, 0)!=27 && ioport_get_value(dip, 0)!=23 && ioport_get_value(dip, 0)!=15){

            if (pointer_update(punt, pointer_state)) {
               if( pointer_state->x>0 && pointer_state->x<269 && pointer_state->y>44 && pointer_state->y<240) {
                   set_all_leds(graphics_get_pixel(canvas, pointer_state->x, pointer_state->y));
                   if(figure==0){
                   graphics_fill_circle( canvas, pointer_state->x, pointer_state->y,c, color);}
                   if(figure==1){
                   graphics_fill_rect( canvas, pointer_state->x, pointer_state->y,2*c,2*c, color);}
                   if(figure==2){
                   graphics_fill_triangle( canvas, pointer_state->x, pointer_state->y,(pointer_state->x)+2*c,(pointer_state->y),(pointer_state->x)+c,(pointer_state->y)+2*c, color);}
                   graphics_set_visible_canvas(display, canvas);
                   //led_set_all_on_intensity(leds, 120);
               }
               if( pointer_state->x>0 && pointer_state->x<46 && pointer_state->y>0 && pointer_state->y<36){
               figure=1;}
               if( pointer_state->x>47 && pointer_state->x<91 && pointer_state->y>0 && pointer_state->y<36){
               figure=2;}
               if( pointer_state->x>92 && pointer_state->x<138 && pointer_state->y>0 && pointer_state->y<36){
               figure=0;}
               if( pointer_state->x>138 && pointer_state->x<184 && pointer_state->y>0 && pointer_state->y<36){
               c=1*b;}
               if( pointer_state->x>185 && pointer_state->x<231 && pointer_state->y>0 && pointer_state->y<36){
               c=2*b;}
               if( pointer_state->x>232 && pointer_state->x<278 && pointer_state->y>0 && pointer_state->y<36){
               c=3*b;}
               if( pointer_state->x>280 && pointer_state->x<340 && pointer_state->y>0 && pointer_state->y<36){
               color=WHITE;}
               if( pointer_state->x>286 && pointer_state->x<340 && pointer_state->y>38 && pointer_state->y<78){
               color=BLACK;}
                if( pointer_state->x>286 && pointer_state->x<340 && pointer_state->y>79 && pointer_state->y<240){
               color=graphics_get_pixel(canvas, pointer_state->x, pointer_state->y);}
            }
            }
         }
}

static void draw_mark(int x, int y, int width, int height, void *vp)
{
     graphics_draw_circle(canvas, x, y, 10, 0xff00ff);
     graphics_draw_line(canvas, x - 15, y, x + 15, y, 0x00ffff);
     graphics_draw_line(canvas, x, y - 15, x, y + 15, 0x00ffff);
     graphics_draw_string(canvas, 50, 50, cal1, NULL, 0xffffff, 0);
     graphics_set_visible_canvas(display, canvas);

}


void set_all_leds (uint32_t value)
{
    for(int i = 0; i <LED_NUM_LED_IDS; )
    {
        led_set_intensity(leds, i++, (uint8_t)(value>>16)); // Red
        led_set_intensity(leds, i++, (uint8_t)(value>>8));  // Green
        led_set_intensity(leds, i++, (uint8_t)value);       // Blue
    }
}




/*#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include "devices.h"
#include "generic_devices.h"
#include <string.h>
#include <graphics.h>
#include <drv_ioport.h>
#include <drv_terminal.h>
#include <canvas.h>
#include <touchscreen.h>
#include <pointer.h>
#include <stdbool.h>
#include <drv_led.h>
#include <led_info.h>
#include <timing.h>
#include <drv_vga_16bpp.h>
#define LED_NUM_LED_IDS 24
#include <drv_vga_ili9320.h>
#define WIDTH 320
#define HEIGHT 240

graphics_t * display;
   //DECLARACION DEL PUNTERO display.
canvas_t * canvas;
vga_ili9320_t *vga;

vga_16bpp_t* vga1;
ioport_t* dip;
terminal_t* term;
pointer_state_t * pointer_state;
pointer_t* punt;
color_t  color;
color_t  colorcua1;
color_t  colorcua2;
color_t  colorcua3;
led_t * leds;
touchscreen_t* touch;
touchscreen_callback_t callback;
int b=3, figure=0,c=3;
static void draw_mark(int x, int y, int width, int height, void *vp);
char *cal1 = "Touch screen at marker";

void update_leds (const uint32_t * col_buff);
void set_all_leds (uint32_t value);
static void draw_mark(int x, int y, int width, int height, void *vp);

void main(void){

touch= touchscreen_open(TOUCHSCREEN_1);
display = graphics_open(GRAPHICS_1); //  Devuelte el puntero del servicio en caso de ser inicializado
leds = led_open(DRV_LED_1);
led_turn_all_off(leds);
punt= pointer_open(POINTER_1);
term= terminal_open(DRV_TERMINAL_1);
dip= ioport_open(DIP);
canvas = graphics_get_visible_canvas(display);
colorcua1=0;
colorcua2=0;
colorcua3=0;
vga = vga_ili9320_open(DRV_VGA_ILI9320_1);
vga1=vga_16bpp_open(DRV_VGA_16BPP_1);
touchscreen_set_callback(touch, draw_mark, canvas);
while(!touchscreen_calibrate(touch, WIDTH, HEIGHT));
    {
        set_all_leds(0xFF0000); // If Touchscreen can't calibrate RED ALERT!
    }
    led_turn_all_off(leds);

graphics_fill_canvas( canvas, WHITE);
graphics_fill_rect( canvas, 0, 0, 46, 37, RED);
graphics_fill_rect( canvas, 286, 38, 34, 40, BLACK);
graphics_fill_triangle( canvas, 47, 36, 69, 0, 91, 36, LAWNGREEN);
graphics_fill_circle(canvas, 114, 18, 17, YELLOW);
graphics_fill_rect( canvas, 138, 0, 46, 36, LIGHTCYAN);
graphics_fill_rect( canvas, 185, 0, 46, 36, LIGHTCYAN);
graphics_fill_rect( canvas, 232, 0, 46, 36, LIGHTCYAN);
graphics_draw_line(canvas, 139, 36, 180, 0, RED);
graphics_draw_line(canvas, 139, 0, 180, 36, RED);
graphics_draw_line(canvas, 185, 36, 231, 0, RED);
graphics_draw_line(canvas, 185, 0, 231, 36, RED);
graphics_draw_line(canvas, 232, 36, 278, 0, RED);
graphics_draw_line(canvas, 232, 0, 278, 36, RED);
graphics_draw_char(canvas, 157, 15, 0x31, &bitstreamverasans10,  BLACK, FS_NONE);
graphics_draw_char(canvas, 204, 15, 0x32, &bitstreamverasans10,  BLACK, FS_NONE);
graphics_draw_char(canvas, 250, 15, 0x33,&bitstreamverasans10,  BLACK, FS_NONE);


while(1){
       //para visualizar la TFT en una pantalla VGA
       ///vga_16bpp_set_resolution(vga1,VGA_16BPP_RES_320X240);
      //vga_16bpp_set_screen(vga1, vga_16bpp_get_screen(vga));
        graphics_set_visible_canvas(display, canvas);

       if(ioport_get_value(dip,0)!=23){
         if(ioport_get_value(dip, 0)==30){
             colorcua1=colorcua1++;
               delay_ms(20);
             if(colorcua1==256){
             colorcua1=0;}}
         if(ioport_get_value(dip, 0)==29){
               colorcua2=colorcua2++;
               delay_ms(20);
               if(colorcua2==256){
               colorcua2=0;}}
         if(ioport_get_value(dip, 0)==27) {
               colorcua3=colorcua3++;
               delay_ms(20);
               if(colorcua3==256){
               colorcua3=0;}}
}
               if(ioport_get_value(dip,0)==15){
               colorcua1=0;
               colorcua2=0;
               colorcua3=0;}
                graphics_fill_rect( canvas, 286, 79, 34, 40,RGB( colorcua1+255, colorcua2, colorcua3));
                graphics_fill_rect( canvas, 286, 120, 34, 40,RGB( colorcua1, colorcua2+255, colorcua3));
                graphics_fill_rect( canvas, 286, 161, 34, 40,RGB( colorcua1, colorcua2, colorcua3+255));
                graphics_fill_rect( canvas, 286, 202, 34, 40,RGB( colorcua1+255, colorcua2+255, colorcua3));
            while(ioport_get_value(dip, 0)!=30 && ioport_get_value(dip, 0)!=29 && ioport_get_value(dip, 0)!=27 && ioport_get_value(dip, 0)!=23 && ioport_get_value(dip, 0)!=15){

            if (pointer_update(punt, pointer_state)) {
               if( pointer_state->x>0 && pointer_state->x<269 && pointer_state->y>44 && pointer_state->y<240) {
                   set_all_leds(graphics_get_pixel(canvas, pointer_state->x, pointer_state->y));
                   if(figure==0){
                   graphics_fill_circle( canvas, pointer_state->x, pointer_state->y,c, color);}
                   if(figure==1){
                   graphics_fill_rect( canvas, pointer_state->x, pointer_state->y,2*c,2*c, color);}
                   if(figure==2){
                   graphics_fill_triangle( canvas, pointer_state->x, pointer_state->y,(pointer_state->x)+2*c,(pointer_state->y),(pointer_state->x)+c,(pointer_state->y)+2*c, color);}
                   graphics_set_visible_canvas(display, canvas);

               }
               if( pointer_state->x>0 && pointer_state->x<46 && pointer_state->y>0 && pointer_state->y<36){
               figure=1;}
               if( pointer_state->x>47 && pointer_state->x<91 && pointer_state->y>0 && pointer_state->y<36){
               figure=2;}
               if( pointer_state->x>92 && pointer_state->x<138 && pointer_state->y>0 && pointer_state->y<36){
               figure=0;}
               if( pointer_state->x>138 && pointer_state->x<184 && pointer_state->y>0 && pointer_state->y<36){
               c=1*b;}
               if( pointer_state->x>185 && pointer_state->x<231 && pointer_state->y>0 && pointer_state->y<36){
               c=2*b;}
               if( pointer_state->x>232 && pointer_state->x<278 && pointer_state->y>0 && pointer_state->y<36){
               c=3*b;}
               if( pointer_state->x>280 && pointer_state->x<340 && pointer_state->y>0 && pointer_state->y<36){
               color=WHITE;}
               if( pointer_state->x>286 && pointer_state->x<340 && pointer_state->y>38 && pointer_state->y<78){
               color=BLACK;}
                if( pointer_state->x>286 && pointer_state->x<340 && pointer_state->y>79 && pointer_state->y<240){
               color=graphics_get_pixel(canvas, pointer_state->x, pointer_state->y);}
            }
            }
         }
}

static void draw_mark(int x, int y, int width, int height, void *vp)
{
     graphics_draw_circle(canvas, x, y, 10, 0xff00ff);
     graphics_draw_line(canvas, x - 15, y, x + 15, y, 0x00ffff);
     graphics_draw_line(canvas, x, y - 15, x, y + 15, 0x00ffff);
     graphics_draw_string(canvas, 50, 50, cal1, NULL, 0xffffff, 0);
     graphics_set_visible_canvas(display, canvas);

}


void set_all_leds (uint32_t value)
{
    for(int i = 0; i <LED_NUM_LED_IDS; )
    {
        led_set_intensity(leds, i++, (uint8_t)(value>>16)); // Red
        led_set_intensity(leds, i++, (uint8_t)(value>>8));  // Green
        led_set_intensity(leds, i++, (uint8_t)value);       // Blue
    }
}
*/




 /*
 graphics_t * display;   //DECLARACION DEL PUNTERO display.
canvas_t * canvas;
canvas_t * canvas1;
canvas_t * canvas2;
ioport_t* dip;
terminal_t* term;
pointer_state_t * pointer_state;
pointer_t* punt;
color_t  color;
color_t  color2;
led_t * leds;
touchscreen_t* touch;
touchscreen_callback_t callback;
int b=3, figure=0,c=3;

static void draw_mark(int x, int y, int width, int height, void *vp);
char *cal1 = "Touch screen at marker";
extern __no_sdata graphics_bitmap_t _lc_ub_color_bmp; //Imagen
extern __no_sdata graphics_bitmap_t _lc_ue_color_bmp;
graphics_bitmap_t * bmp = &_lc_ub_color_bmp;

void update_leds (const uint32_t * col_buff);
void set_all_leds (uint32_t value);
static void draw_mark(int x, int y, int width, int height, void *vp);

void main(void){

touch= touchscreen_open(TOUCHSCREEN_1);
display = graphics_open(GRAPHICS_1); //  Devuelte el puntero del servicio en caso de ser inicializado
leds = led_open(DRV_LED_1);
led_turn_all_off(leds);
punt= pointer_open(POINTER_1);
term= terminal_open(DRV_TERMINAL_1);
dip= ioport_open(DIP);
canvas = graphics_get_visible_canvas(display);
canvas1 = graphics_get_visible_canvas(display);
canvas2 = graphics_get_visible_canvas(display);


touchscreen_set_callback(touch, draw_mark, canvas);
while(!touchscreen_calibrate(touch, WIDTH, HEIGHT));
    {
        set_all_leds(0xFF0000); // If Touchscreen can't calibrate RED ALERT!
    }
    led_turn_all_off(leds);

graphics_fill_canvas( canvas, WHITE);
graphics_fill_rect( canvas, 0, 0, 46, 37, RED);
graphics_fill_triangle( canvas, 47, 36, 69, 0, 91, 36, LAWNGREEN);
graphics_fill_circle(canvas, 114, 18, 17, YELLOW);
graphics_fill_rect( canvas, 138, 0, 46, 36, LIGHTCYAN);
graphics_fill_rect( canvas, 185, 0, 46, 36, LIGHTCYAN);
graphics_fill_rect( canvas, 232, 0, 46, 36, LIGHTCYAN);
graphics_draw_line(canvas, 139, 36, 180, 0, RED);
graphics_draw_line(canvas, 139, 0, 180, 36, RED);
graphics_draw_line(canvas, 185, 36, 231, 0, RED);
graphics_draw_line(canvas, 185, 0, 231, 36, RED);
graphics_draw_line(canvas, 232, 36, 278, 0, RED);
graphics_draw_line(canvas, 232, 0, 278, 36, RED);
graphics_draw_char(canvas, 157, 15, 0x31, &bitstreamverasans10,  BLACK, FS_NONE);
graphics_draw_char(canvas, 204, 15, 0x32, &bitstreamverasans10,  BLACK, FS_NONE);
graphics_draw_char(canvas, 250, 15, 0x33,&bitstreamverasans10,  BLACK, FS_NONE);


while(1){


         graphics_set_visible_canvas(display, canvas);
         line:
            while(ioport_get_value(dip, 0)!=30){

            if (pointer_update(punt, pointer_state)) {
               if( pointer_state->x>0 && pointer_state->x<320 && pointer_state->y>44 && pointer_state->y<240) {
                   set_all_leds(graphics_get_pixel(canvas, pointer_state->x, pointer_state->y));
                   if(figure==0){
                   graphics_fill_circle( canvas, pointer_state->x, pointer_state->y,c, color);}
                   if(figure==1){
                   graphics_fill_rect( canvas, pointer_state->x, pointer_state->y,2*c,2*c, color);}
                   if(figure==2){
                   graphics_fill_triangle( canvas, pointer_state->x, pointer_state->y,(pointer_state->x)+2*c,(pointer_state->y),(pointer_state->x)+c,(pointer_state->y)+2*c, color);}
                   graphics_set_visible_canvas(display, canvas);
                   led_set_all_on_intensity(leds, 120);
               }
               if( pointer_state->x>0 && pointer_state->x<46 && pointer_state->y>0 && pointer_state->y<36){
               figure=1;}
               if( pointer_state->x>47 && pointer_state->x<91 && pointer_state->y>0 && pointer_state->y<36){
               figure=2;}
               if( pointer_state->x>92 && pointer_state->x<138 && pointer_state->y>0 && pointer_state->y<36){
               figure=0;}
               if( pointer_state->x>138 && pointer_state->x<184 && pointer_state->y>0 && pointer_state->y<36){
               c=1*b;}
               if( pointer_state->x>185 && pointer_state->x<231 && pointer_state->y>0 && pointer_state->y<36){
               c=2*b;}
               if( pointer_state->x>232 && pointer_state->x<278 && pointer_state->y>0 && pointer_state->y<36){
               c=3*b;}
               if( pointer_state->x>280 && pointer_state->x<340 && pointer_state->y>0 && pointer_state->y<36){
               color=WHITE;}
            }
            }
            canvas1=canvas_copy(canvas);
            while(ioport_get_value(dip, 0)==30){

            graphics_draw_bitmap(canvas2, bmp, 0, 0, 320, 240, 0);
            graphics_set_visible_canvas(display, canvas2);
            if (pointer_update(punt, pointer_state)) {
            set_all_leds(graphics_get_pixel(canvas2, pointer_state->x, pointer_state->y));
            color=graphics_get_pixel(canvas2, pointer_state->x, pointer_state->y);}
            }

          graphics_fill_canvas( canvas2, WHITE);
          graphics_set_visible_canvas(display, canvas1);
          goto line;
         }
}

static void draw_mark(int x, int y, int width, int height, void *vp)
{
     graphics_draw_circle(canvas, x, y, 10, 0xff00ff);
     graphics_draw_line(canvas, x - 15, y, x + 15, y, 0x00ffff);
     graphics_draw_line(canvas, x, y - 15, x, y + 15, 0x00ffff);
     graphics_draw_string(canvas, 50, 50, cal1, NULL, 0xffffff, 0);
     graphics_set_visible_canvas(display, canvas);

}


void set_all_leds (uint32_t value)
{
    for(int i = 0; i <0xFFFFFFFF; )
    {
        led_set_intensity(leds, i++, (uint8_t)(value>>16)); // Red
        led_set_intensity(leds, i++, (uint8_t)(value>>8));  // Green
        led_set_intensity(leds, i++, (uint8_t)value);       // Blue
    }
}
*/









