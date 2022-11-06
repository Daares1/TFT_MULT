#
#	Software Platform Generated File
#	--------------------------------
#


# global makefile strings

# global framework compiler options
OPT_FRAMEWORK += -I"$(SWPLATFORMDIR1)\platform\fpga\drivers\vga_16bpp\include"
OPT_FRAMEWORK += -I"$(SWPLATFORMDIR1)\platform\fpga\processors\pal\include"
OPT_FRAMEWORK += -I"$(SWPLATFORMDIR1)\services\platform\pointer\internal"
OPT_FRAMEWORK += -I"$(SWPLATFORMDIR1)\services\posix\devio\internal"
OPT_FRAMEWORK += -I"$(SWPLATFORMDIR1)\services\posix\internal"
OPT_FRAMEWORK += -DNDEBUG=1
OPT_FRAMEWORK += -I"$(SWPLATFORMDIR1)\system\init\include"
OPT_FRAMEWORK += -Wc-w508

# build rules to generate framework objects
SSASOBJ += "$(SSASOUTDIR)\drv_ad7843_drv_ad7843.obj"
"$(SSASOUTDIR)\drv_ad7843_drv_ad7843.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_ad7843_drv_ad7843.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_ad7843_drv_ad7843.d"

"$(SSASOUTDIR)\drv_ad7843_drv_ad7843.obj" : "$(SSASOUTDIR)\drv_ad7843_drv_ad7843.obj.opt"
	@echo Building drv_ad7843 plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\drivers\ad7843\src\drv_ad7843.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_ad7843_drv_ad7843.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_ad7843_drv_ad7843_cfg_instance.obj"
"$(SSASOUTDIR)\drv_ad7843_drv_ad7843_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_ad7843_drv_ad7843_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_ad7843_drv_ad7843_cfg_instance.d"

"$(SSASOUTDIR)\drv_ad7843_drv_ad7843_cfg_instance.obj" : "$(SSASOUTDIR)\drv_ad7843_drv_ad7843_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\drv_ad7843_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_ad7843_drv_ad7843_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_ioport_drv_ioport.obj"
"$(SSASOUTDIR)\drv_ioport_drv_ioport.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_ioport_drv_ioport.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_ioport_drv_ioport.d"

"$(SSASOUTDIR)\drv_ioport_drv_ioport.obj" : "$(SSASOUTDIR)\drv_ioport_drv_ioport.obj.opt"
	@echo Building drv_ioport plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\drivers\ioport\src\drv_ioport.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_ioport_drv_ioport.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_ioport_drv_ioport_cfg_instance.obj"
"$(SSASOUTDIR)\drv_ioport_drv_ioport_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_ioport_drv_ioport_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_ioport_drv_ioport_cfg_instance.d"

"$(SSASOUTDIR)\drv_ioport_drv_ioport_cfg_instance.obj" : "$(SSASOUTDIR)\drv_ioport_drv_ioport_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\drv_ioport_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_ioport_drv_ioport_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_led_drv_led.obj"
"$(SSASOUTDIR)\drv_led_drv_led.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_led_drv_led.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_led_drv_led.d"

"$(SSASOUTDIR)\drv_led_drv_led.obj" : "$(SSASOUTDIR)\drv_led_drv_led.obj.opt"
	@echo Building drv_led plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\drivers\led\src\drv_led.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_led_drv_led.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_led_drv_led_cfg_instance.obj"
"$(SSASOUTDIR)\drv_led_drv_led_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_led_drv_led_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_led_drv_led_cfg_instance.d"

"$(SSASOUTDIR)\drv_led_drv_led_cfg_instance.obj" : "$(SSASOUTDIR)\drv_led_drv_led_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\drv_led_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_led_drv_led_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_spi_drv_spi.obj"
"$(SSASOUTDIR)\drv_spi_drv_spi.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_spi_drv_spi.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_spi_drv_spi.d"

"$(SSASOUTDIR)\drv_spi_drv_spi.obj" : "$(SSASOUTDIR)\drv_spi_drv_spi.obj.opt"
	@echo Building drv_spi plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\drivers\spi\src\drv_spi.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_spi_drv_spi.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_spi_drv_spi_cfg_instance.obj"
"$(SSASOUTDIR)\drv_spi_drv_spi_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_spi_drv_spi_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_spi_drv_spi_cfg_instance.d"

"$(SSASOUTDIR)\drv_spi_drv_spi_cfg_instance.obj" : "$(SSASOUTDIR)\drv_spi_drv_spi_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\drv_spi_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_spi_drv_spi_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_terminal_drv_terminal.obj"
"$(SSASOUTDIR)\drv_terminal_drv_terminal.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_terminal_drv_terminal.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_terminal_drv_terminal.d"

"$(SSASOUTDIR)\drv_terminal_drv_terminal.obj" : "$(SSASOUTDIR)\drv_terminal_drv_terminal.obj.opt"
	@echo Building drv_terminal plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\drivers\terminal\src\drv_terminal.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_terminal_drv_terminal.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_terminal_drv_terminal_cfg_instance.obj"
"$(SSASOUTDIR)\drv_terminal_drv_terminal_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_terminal_drv_terminal_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_terminal_drv_terminal_cfg_instance.d"

"$(SSASOUTDIR)\drv_terminal_drv_terminal_cfg_instance.obj" : "$(SSASOUTDIR)\drv_terminal_drv_terminal_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\drv_terminal_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_terminal_drv_terminal_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp.obj"
"$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp.d"

"$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp.obj" : "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp.obj.opt"
	@echo Building drv_vga_16bpp plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\drivers\vga_16bpp\src\drv_vga_16bpp.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp_cfg_instance.obj"
"$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp_cfg_instance.d"

"$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp_cfg_instance.obj" : "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\drv_vga_16bpp_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_vga_16bpp_drv_vga_16bpp_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320.obj"
"$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320.d"

"$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320.obj" : "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320.obj.opt"
	@echo Building drv_vga_ili9320 plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\drivers\vga_ili9320\src\drv_vga_ili9320.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320_cfg_instance.obj"
"$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320_cfg_instance.d"

"$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320_cfg_instance.obj" : "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\drv_vga_ili9320_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\drv_vga_ili9320_drv_vga_ili9320_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_ioport_per_ioport.obj"
"$(SSASOUTDIR)\per_ioport_per_ioport.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_ioport_per_ioport.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_ioport_per_ioport.d"

"$(SSASOUTDIR)\per_ioport_per_ioport.obj" : "$(SSASOUTDIR)\per_ioport_per_ioport.obj.opt"
	@echo Building per_ioport plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\peripherals\ioport\src\per_ioport.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_ioport_per_ioport.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_ioport_per_ioport_cfg_instance.obj"
"$(SSASOUTDIR)\per_ioport_per_ioport_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_ioport_per_ioport_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_ioport_per_ioport_cfg_instance.d"

"$(SSASOUTDIR)\per_ioport_per_ioport_cfg_instance.obj" : "$(SSASOUTDIR)\per_ioport_per_ioport_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\per_ioport_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_ioport_per_ioport_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_ioport_ioport.obj"
"$(SSASOUTDIR)\per_ioport_ioport.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_ioport_ioport.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_ioport_ioport.d"

"$(SSASOUTDIR)\per_ioport_ioport.obj" : "$(SSASOUTDIR)\per_ioport_ioport.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\ioport.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_ioport_ioport.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_led_per_led_cfg_instance.obj"
"$(SSASOUTDIR)\per_led_per_led_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_led_per_led_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_led_per_led_cfg_instance.d"

"$(SSASOUTDIR)\per_led_per_led_cfg_instance.obj" : "$(SSASOUTDIR)\per_led_per_led_cfg_instance.obj.opt"
	@echo Building per_led plugin
	"$(CC)" -c  "$(SSASCFGDIR)\per_led_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_led_per_led_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_led_led_info.obj"
"$(SSASOUTDIR)\per_led_led_info.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_led_led_info.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_led_led_info.d"

"$(SSASOUTDIR)\per_led_led_info.obj" : "$(SSASOUTDIR)\per_led_led_info.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\led_info.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_led_led_info.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_spi_per_spi_cfg_instance.obj"
"$(SSASOUTDIR)\per_spi_per_spi_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_spi_per_spi_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_spi_per_spi_cfg_instance.d"

"$(SSASOUTDIR)\per_spi_per_spi_cfg_instance.obj" : "$(SSASOUTDIR)\per_spi_per_spi_cfg_instance.obj.opt"
	@echo Building per_spi plugin
	"$(CC)" -c  "$(SSASCFGDIR)\per_spi_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_spi_per_spi_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_terminal_per_terminal_cfg_instance.obj"
"$(SSASOUTDIR)\per_terminal_per_terminal_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_terminal_per_terminal_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_terminal_per_terminal_cfg_instance.d"

"$(SSASOUTDIR)\per_terminal_per_terminal_cfg_instance.obj" : "$(SSASOUTDIR)\per_terminal_per_terminal_cfg_instance.obj.opt"
	@echo Building per_terminal plugin
	"$(CC)" -c  "$(SSASCFGDIR)\per_terminal_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_terminal_per_terminal_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_tspen_per_tspen_cfg_instance.obj"
"$(SSASOUTDIR)\per_tspen_per_tspen_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_tspen_per_tspen_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_tspen_per_tspen_cfg_instance.d"

"$(SSASOUTDIR)\per_tspen_per_tspen_cfg_instance.obj" : "$(SSASOUTDIR)\per_tspen_per_tspen_cfg_instance.obj.opt"
	@echo Building per_tspen plugin
	"$(CC)" -c  "$(SSASCFGDIR)\per_tspen_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_tspen_per_tspen_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_vga32_16bpp_per_vga32_16bpp_cfg_instance.obj"
"$(SSASOUTDIR)\per_vga32_16bpp_per_vga32_16bpp_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_vga32_16bpp_per_vga32_16bpp_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_vga32_16bpp_per_vga32_16bpp_cfg_instance.d"

"$(SSASOUTDIR)\per_vga32_16bpp_per_vga32_16bpp_cfg_instance.obj" : "$(SSASOUTDIR)\per_vga32_16bpp_per_vga32_16bpp_cfg_instance.obj.opt"
	@echo Building per_vga32_16bpp plugin
	"$(CC)" -c  "$(SSASCFGDIR)\per_vga32_16bpp_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_vga32_16bpp_per_vga32_16bpp_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\per_vga32_ili9320_per_vga32_ili9320_cfg_instance.obj"
"$(SSASOUTDIR)\per_vga32_ili9320_per_vga32_ili9320_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\per_vga32_ili9320_per_vga32_ili9320_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\per_vga32_ili9320_per_vga32_ili9320_cfg_instance.d"

"$(SSASOUTDIR)\per_vga32_ili9320_per_vga32_ili9320_cfg_instance.obj" : "$(SSASOUTDIR)\per_vga32_ili9320_per_vga32_ili9320_cfg_instance.obj.opt"
	@echo Building per_vga32_ili9320 plugin
	"$(CC)" -c  "$(SSASCFGDIR)\per_vga32_ili9320_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\per_vga32_ili9320_per_vga32_ili9320_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\pal_arch_3000_pal_c3000.obj"
"$(SSASOUTDIR)\pal_arch_3000_pal_c3000.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\pal_arch_3000_pal_c3000.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\pal_arch_3000_pal_c3000.d"

"$(SSASOUTDIR)\pal_arch_3000_pal_c3000.obj" : "$(SSASOUTDIR)\pal_arch_3000_pal_c3000.obj.opt"
	@echo Building pal_arch_3000 plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\processors\c3000\src\pal_c3000.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\pal_arch_3000_pal_c3000.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_interrupts.obj"
"$(SSASOUTDIR)\pal_arch_3000_pal_c3000_interrupts.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_interrupts.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_interrupts.d"

"$(SSASOUTDIR)\pal_arch_3000_pal_c3000_interrupts.obj" : "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_interrupts.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\processors\c3000\src\pal_c3000_interrupts.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_interrupts.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_posix.obj"
"$(SSASOUTDIR)\pal_arch_3000_pal_c3000_posix.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_posix.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_posix.d"

"$(SSASOUTDIR)\pal_arch_3000_pal_c3000_posix.obj" : "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_posix.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\processors\c3000\src\pal_c3000_posix.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\pal_arch_3000_pal_c3000_posix.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\pal_pal_init.obj"
"$(SSASOUTDIR)\pal_pal_init.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\pal_pal_init.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\pal_pal_init.d"

"$(SSASOUTDIR)\pal_pal_init.obj" : "$(SSASOUTDIR)\pal_pal_init.obj.opt"
	@echo Building pal plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\processors\pal\src\pal_init.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\pal_pal_init.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\pal_pal_timers.obj"
"$(SSASOUTDIR)\pal_pal_timers.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\pal_pal_timers.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\pal_pal_timers.d"

"$(SSASOUTDIR)\pal_pal_timers.obj" : "$(SSASOUTDIR)\pal_pal_timers.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\processors\pal\src\pal_timers.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\pal_pal_timers.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\pal_pal_timing.obj"
"$(SSASOUTDIR)\pal_pal_timing.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\pal_pal_timing.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\pal_pal_timing.d"

"$(SSASOUTDIR)\pal_pal_timing.obj" : "$(SSASOUTDIR)\pal_pal_timing.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\platform\fpga\processors\pal\src\pal_timing.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\pal_pal_timing.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320.obj"
"$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal"  -I"$(SWPLATFORMDIR1)\services\platform\graphics\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320.d"

"$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320.obj" : "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320.obj.opt"
	@echo Building ad_vga_ili9320 plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\adaptors\vga_ili9320\src\ad_vga_ili9320.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320_cfg_instance.obj"
"$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal"  -I"$(SWPLATFORMDIR1)\services\platform\graphics\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320_cfg_instance.d"

"$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320_cfg_instance.obj" : "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\ad_vga_ili9320_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\ad_vga_ili9320_ad_vga_ili9320_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_BitstreamVeraSans10.obj"
"$(SSASOUTDIR)\graphics_BitstreamVeraSans10.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_BitstreamVeraSans10.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_BitstreamVeraSans10.d"

"$(SSASOUTDIR)\graphics_BitstreamVeraSans10.obj" : "$(SSASOUTDIR)\graphics_BitstreamVeraSans10.obj.opt"
	@echo Building graphics plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\BitstreamVeraSans10.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_BitstreamVeraSans10.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_BitstreamVeraSans8.obj"
"$(SSASOUTDIR)\graphics_BitstreamVeraSans8.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_BitstreamVeraSans8.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_BitstreamVeraSans8.d"

"$(SSASOUTDIR)\graphics_BitstreamVeraSans8.obj" : "$(SSASOUTDIR)\graphics_BitstreamVeraSans8.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\BitstreamVeraSans8.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_BitstreamVeraSans8.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono10.obj"
"$(SSASOUTDIR)\graphics_BitstreamVeraSansMono10.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono10.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono10.d"

"$(SSASOUTDIR)\graphics_BitstreamVeraSansMono10.obj" : "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono10.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\BitstreamVeraSansMono10.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono10.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono8.obj"
"$(SSASOUTDIR)\graphics_BitstreamVeraSansMono8.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono8.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono8.d"

"$(SSASOUTDIR)\graphics_BitstreamVeraSansMono8.obj" : "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono8.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\BitstreamVeraSansMono8.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_BitstreamVeraSansMono8.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_BitstreamVeraSerif10.obj"
"$(SSASOUTDIR)\graphics_BitstreamVeraSerif10.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_BitstreamVeraSerif10.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_BitstreamVeraSerif10.d"

"$(SSASOUTDIR)\graphics_BitstreamVeraSerif10.obj" : "$(SSASOUTDIR)\graphics_BitstreamVeraSerif10.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\BitstreamVeraSerif10.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_BitstreamVeraSerif10.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_BitstreamVeraSerif8.obj"
"$(SSASOUTDIR)\graphics_BitstreamVeraSerif8.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_BitstreamVeraSerif8.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_BitstreamVeraSerif8.d"

"$(SSASOUTDIR)\graphics_BitstreamVeraSerif8.obj" : "$(SSASOUTDIR)\graphics_BitstreamVeraSerif8.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\BitstreamVeraSerif8.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_BitstreamVeraSerif8.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_bpmono10.obj"
"$(SSASOUTDIR)\graphics_bpmono10.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_bpmono10.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_bpmono10.d"

"$(SSASOUTDIR)\graphics_bpmono10.obj" : "$(SSASOUTDIR)\graphics_bpmono10.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\bpmono10.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_bpmono10.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_bpmono8.obj"
"$(SSASOUTDIR)\graphics_bpmono8.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_bpmono8.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_bpmono8.d"

"$(SSASOUTDIR)\graphics_bpmono8.obj" : "$(SSASOUTDIR)\graphics_bpmono8.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\bpmono8.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_bpmono8.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_canvas.obj"
"$(SSASOUTDIR)\graphics_canvas.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_canvas.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_canvas.d"

"$(SSASOUTDIR)\graphics_canvas.obj" : "$(SSASOUTDIR)\graphics_canvas.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\canvas.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_canvas.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics.obj"
"$(SSASOUTDIR)\graphics_graphics.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics.d"

"$(SSASOUTDIR)\graphics_graphics.obj" : "$(SSASOUTDIR)\graphics_graphics.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_bitmap.obj"
"$(SSASOUTDIR)\graphics_graphics_bitmap.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_bitmap.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_bitmap.d"

"$(SSASOUTDIR)\graphics_graphics_bitmap.obj" : "$(SSASOUTDIR)\graphics_graphics_bitmap.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_bitmap.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_bitmap.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_copy_rect.obj"
"$(SSASOUTDIR)\graphics_graphics_copy_rect.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_copy_rect.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_copy_rect.d"

"$(SSASOUTDIR)\graphics_graphics_copy_rect.obj" : "$(SSASOUTDIR)\graphics_graphics_copy_rect.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_copy_rect.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_copy_rect.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_draw_arc.obj"
"$(SSASOUTDIR)\graphics_graphics_draw_arc.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_draw_arc.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_draw_arc.d"

"$(SSASOUTDIR)\graphics_graphics_draw_arc.obj" : "$(SSASOUTDIR)\graphics_graphics_draw_arc.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_draw_arc.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_draw_arc.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_draw_circle.obj"
"$(SSASOUTDIR)\graphics_graphics_draw_circle.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_draw_circle.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_draw_circle.d"

"$(SSASOUTDIR)\graphics_graphics_draw_circle.obj" : "$(SSASOUTDIR)\graphics_graphics_draw_circle.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_draw_circle.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_draw_circle.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_draw_line.obj"
"$(SSASOUTDIR)\graphics_graphics_draw_line.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_draw_line.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_draw_line.d"

"$(SSASOUTDIR)\graphics_graphics_draw_line.obj" : "$(SSASOUTDIR)\graphics_graphics_draw_line.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_draw_line.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_draw_line.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_draw_text.obj"
"$(SSASOUTDIR)\graphics_graphics_draw_text.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_draw_text.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_draw_text.d"

"$(SSASOUTDIR)\graphics_graphics_draw_text.obj" : "$(SSASOUTDIR)\graphics_graphics_draw_text.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_draw_text.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_draw_text.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_fill_circle.obj"
"$(SSASOUTDIR)\graphics_graphics_fill_circle.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_fill_circle.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_fill_circle.d"

"$(SSASOUTDIR)\graphics_graphics_fill_circle.obj" : "$(SSASOUTDIR)\graphics_graphics_fill_circle.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_fill_circle.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_fill_circle.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_fill_rect.obj"
"$(SSASOUTDIR)\graphics_graphics_fill_rect.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_fill_rect.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_fill_rect.d"

"$(SSASOUTDIR)\graphics_graphics_fill_rect.obj" : "$(SSASOUTDIR)\graphics_graphics_fill_rect.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_fill_rect.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_fill_rect.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_fill_sector.obj"
"$(SSASOUTDIR)\graphics_graphics_fill_sector.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_fill_sector.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_fill_sector.d"

"$(SSASOUTDIR)\graphics_graphics_fill_sector.obj" : "$(SSASOUTDIR)\graphics_graphics_fill_sector.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_fill_sector.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_fill_sector.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_fill_segment.obj"
"$(SSASOUTDIR)\graphics_graphics_fill_segment.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_fill_segment.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_fill_segment.d"

"$(SSASOUTDIR)\graphics_graphics_fill_segment.obj" : "$(SSASOUTDIR)\graphics_graphics_fill_segment.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_fill_segment.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_fill_segment.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_fill_triangle.obj"
"$(SSASOUTDIR)\graphics_graphics_fill_triangle.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_fill_triangle.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_fill_triangle.d"

"$(SSASOUTDIR)\graphics_graphics_fill_triangle.obj" : "$(SSASOUTDIR)\graphics_graphics_fill_triangle.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_fill_triangle.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_fill_triangle.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_i.obj"
"$(SSASOUTDIR)\graphics_graphics_i.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_i.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_i.d"

"$(SSASOUTDIR)\graphics_graphics_i.obj" : "$(SSASOUTDIR)\graphics_graphics_i.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_i.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_i.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_pixel_common.obj"
"$(SSASOUTDIR)\graphics_graphics_pixel_common.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_pixel_common.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_pixel_common.d"

"$(SSASOUTDIR)\graphics_graphics_pixel_common.obj" : "$(SSASOUTDIR)\graphics_graphics_pixel_common.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\graphics_pixel_common.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_pixel_common.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_svg_palette.obj"
"$(SSASOUTDIR)\graphics_svg_palette.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_svg_palette.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_svg_palette.d"

"$(SSASOUTDIR)\graphics_svg_palette.obj" : "$(SSASOUTDIR)\graphics_svg_palette.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\graphics\src\svg_palette.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_svg_palette.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\graphics_graphics_cfg_instance.obj"
"$(SSASOUTDIR)\graphics_graphics_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\graphics_graphics_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\platform\graphics\internal" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\graphics_graphics_cfg_instance.d"

"$(SSASOUTDIR)\graphics_graphics_cfg_instance.obj" : "$(SSASOUTDIR)\graphics_graphics_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\graphics_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\graphics_graphics_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\interrupts_interrupts.obj"
"$(SSASOUTDIR)\interrupts_interrupts.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\interrupts_interrupts.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\interrupts_interrupts.d"

"$(SSASOUTDIR)\interrupts_interrupts.obj" : "$(SSASOUTDIR)\interrupts_interrupts.obj.opt"
	@echo Building interrupts plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\interrupts\src\interrupts.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\interrupts_interrupts.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\ad_touchscreen_to_pointer_touchscreen_to_pointer.obj"
"$(SSASOUTDIR)\ad_touchscreen_to_pointer_touchscreen_to_pointer.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\ad_touchscreen_to_pointer_touchscreen_to_pointer.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\ad_touchscreen_to_pointer_touchscreen_to_pointer.d"

"$(SSASOUTDIR)\ad_touchscreen_to_pointer_touchscreen_to_pointer.obj" : "$(SSASOUTDIR)\ad_touchscreen_to_pointer_touchscreen_to_pointer.obj.opt"
	@echo Building ad_touchscreen_to_pointer plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\pointer\adaptors\touchscreen\src\touchscreen_to_pointer.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\ad_touchscreen_to_pointer_touchscreen_to_pointer.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\ad_touchscreen_to_pointer_ad_touchscreen_to_pointer_cfg_instance.obj"
"$(SSASOUTDIR)\ad_touchscreen_to_pointer_ad_touchscreen_to_pointer_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\ad_touchscreen_to_pointer_ad_touchscreen_to_pointer_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\ad_touchscreen_to_pointer_ad_touchscreen_to_pointer_cfg_instance.d"

"$(SSASOUTDIR)\ad_touchscreen_to_pointer_ad_touchscreen_to_pointer_cfg_instance.obj" : "$(SSASOUTDIR)\ad_touchscreen_to_pointer_ad_touchscreen_to_pointer_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\ad_touchscreen_to_pointer_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\ad_touchscreen_to_pointer_ad_touchscreen_to_pointer_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\pointer_pointer.obj"
"$(SSASOUTDIR)\pointer_pointer.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\pointer_pointer.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\pointer_pointer.d"

"$(SSASOUTDIR)\pointer_pointer.obj" : "$(SSASOUTDIR)\pointer_pointer.obj.opt"
	@echo Building pointer plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\pointer\src\pointer.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\pointer_pointer.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\pointer_pointer_cfg_instance.obj"
"$(SSASOUTDIR)\pointer_pointer_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\pointer_pointer_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\pointer_pointer_cfg_instance.d"

"$(SSASOUTDIR)\pointer_pointer_cfg_instance.obj" : "$(SSASOUTDIR)\pointer_pointer_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\pointer_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\pointer_pointer_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\timing_timers.obj"
"$(SSASOUTDIR)\timing_timers.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\timing_timers.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\timing_timers.d"

"$(SSASOUTDIR)\timing_timers.obj" : "$(SSASOUTDIR)\timing_timers.obj.opt"
	@echo Building timing plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\timing\src\timers.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\timing_timers.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\timing_timing.obj"
"$(SSASOUTDIR)\timing_timing.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\timing_timing.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\timing_timing.d"

"$(SSASOUTDIR)\timing_timing.obj" : "$(SSASOUTDIR)\timing_timing.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\timing\src\timing.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\timing_timing.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\touchscreen_touchscreen.obj"
"$(SSASOUTDIR)\touchscreen_touchscreen.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\touchscreen_touchscreen.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\touchscreen_touchscreen.d"

"$(SSASOUTDIR)\touchscreen_touchscreen.obj" : "$(SSASOUTDIR)\touchscreen_touchscreen.obj.opt"
	@echo Building touchscreen plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\platform\touchscreen\src\touchscreen.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\touchscreen_touchscreen.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\touchscreen_touchscreen_cfg_instance.obj"
"$(SSASOUTDIR)\touchscreen_touchscreen_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\touchscreen_touchscreen_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\touchscreen_touchscreen_cfg_instance.d"

"$(SSASOUTDIR)\touchscreen_touchscreen_cfg_instance.obj" : "$(SSASOUTDIR)\touchscreen_touchscreen_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\touchscreen_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\touchscreen_touchscreen_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\devfs_minimal_close.obj"
"$(SSASOUTDIR)\devfs_minimal_close.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\devfs_minimal_close.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\devfs_minimal_close.d"

"$(SSASOUTDIR)\devfs_minimal_close.obj" : "$(SSASOUTDIR)\devfs_minimal_close.obj.opt"
	@echo Building devfs_minimal plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\devfs_minimal\src\close.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\devfs_minimal_close.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\devfs_minimal_lseek.obj"
"$(SSASOUTDIR)\devfs_minimal_lseek.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\devfs_minimal_lseek.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\devfs_minimal_lseek.d"

"$(SSASOUTDIR)\devfs_minimal_lseek.obj" : "$(SSASOUTDIR)\devfs_minimal_lseek.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\devfs_minimal\src\lseek.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\devfs_minimal_lseek.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\devfs_minimal_open.obj"
"$(SSASOUTDIR)\devfs_minimal_open.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\devfs_minimal_open.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\devfs_minimal_open.d"

"$(SSASOUTDIR)\devfs_minimal_open.obj" : "$(SSASOUTDIR)\devfs_minimal_open.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\devfs_minimal\src\open.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\devfs_minimal_open.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\devfs_minimal_posix_devctl.obj"
"$(SSASOUTDIR)\devfs_minimal_posix_devctl.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\devfs_minimal_posix_devctl.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\devfs_minimal_posix_devctl.d"

"$(SSASOUTDIR)\devfs_minimal_posix_devctl.obj" : "$(SSASOUTDIR)\devfs_minimal_posix_devctl.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\devfs_minimal\src\posix_devctl.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\devfs_minimal_posix_devctl.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\devfs_minimal_read.obj"
"$(SSASOUTDIR)\devfs_minimal_read.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\devfs_minimal_read.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\devfs_minimal_read.d"

"$(SSASOUTDIR)\devfs_minimal_read.obj" : "$(SSASOUTDIR)\devfs_minimal_read.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\devfs_minimal\src\read.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\devfs_minimal_read.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\devfs_minimal_write.obj"
"$(SSASOUTDIR)\devfs_minimal_write.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\devfs_minimal_write.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\devfs_minimal_write.d"

"$(SSASOUTDIR)\devfs_minimal_write.obj" : "$(SSASOUTDIR)\devfs_minimal_write.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\devfs_minimal\src\write.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\devfs_minimal_write.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_devio.obj"
"$(SSASOUTDIR)\posix_devio_devio.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_devio.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_devio.d"

"$(SSASOUTDIR)\posix_devio_devio.obj" : "$(SSASOUTDIR)\posix_devio_devio.obj.opt"
	@echo Building posix_devio plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\src\devio.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_devio.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_devio_init.obj"
"$(SSASOUTDIR)\posix_devio_devio_init.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_devio_init.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_devio_init.d"

"$(SSASOUTDIR)\posix_devio_devio_init.obj" : "$(SSASOUTDIR)\posix_devio_devio_init.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\src\devio_init.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_devio_init.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio__fopen.obj"
"$(SSASOUTDIR)\posix_devio__fopen.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio__fopen.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio__fopen.d"

"$(SSASOUTDIR)\posix_devio__fopen.obj" : "$(SSASOUTDIR)\posix_devio__fopen.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\_fopen.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio__fopen.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio__iob.obj"
"$(SSASOUTDIR)\posix_devio__iob.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio__iob.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio__iob.d"

"$(SSASOUTDIR)\posix_devio__iob.obj" : "$(SSASOUTDIR)\posix_devio__iob.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\_iob.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio__iob.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_fdopen.obj"
"$(SSASOUTDIR)\posix_devio_fdopen.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_fdopen.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_fdopen.d"

"$(SSASOUTDIR)\posix_devio_fdopen.obj" : "$(SSASOUTDIR)\posix_devio_fdopen.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\fdopen.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_fdopen.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_fopen.obj"
"$(SSASOUTDIR)\posix_devio_fopen.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_fopen.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_fopen.d"

"$(SSASOUTDIR)\posix_devio_fopen.obj" : "$(SSASOUTDIR)\posix_devio_fopen.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\fopen.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_fopen.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_freopen.obj"
"$(SSASOUTDIR)\posix_devio_freopen.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_freopen.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_freopen.d"

"$(SSASOUTDIR)\posix_devio_freopen.obj" : "$(SSASOUTDIR)\posix_devio_freopen.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\freopen.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_freopen.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_fflush.obj"
"$(SSASOUTDIR)\posix_devio_fflush.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_fflush.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_fflush.d"

"$(SSASOUTDIR)\posix_devio_fflush.obj" : "$(SSASOUTDIR)\posix_devio_fflush.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\fflush.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_fflush.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_fclose.obj"
"$(SSASOUTDIR)\posix_devio_fclose.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_fclose.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_fclose.d"

"$(SSASOUTDIR)\posix_devio_fclose.obj" : "$(SSASOUTDIR)\posix_devio_fclose.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\fclose.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_fclose.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_strerror.obj"
"$(SSASOUTDIR)\posix_devio_strerror.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_strerror.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_strerror.d"

"$(SSASOUTDIR)\posix_devio_strerror.obj" : "$(SSASOUTDIR)\posix_devio_strerror.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\strerror.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_strerror.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\posix_devio_perror.obj"
"$(SSASOUTDIR)\posix_devio_perror.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\posix_devio_perror.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\posix_devio_perror.d"

"$(SSASOUTDIR)\posix_devio_perror.obj" : "$(SSASOUTDIR)\posix_devio_perror.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\libc\perror.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\posix_devio_perror.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial.obj"
"$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\posix\devio\serial\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial.d"

"$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial.obj" : "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial.obj.opt"
	@echo Building terminal_to_serial plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\serial\adaptors\terminal\src\terminal_to_serial.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial_cfg_instance.obj"
"$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\services\posix\devio\serial\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial_cfg_instance.d"

"$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial_cfg_instance.obj" : "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\terminal_to_serial_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\terminal_to_serial_terminal_to_serial_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\serial_serial.obj"
"$(SSASOUTDIR)\serial_serial.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\serial_serial.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\serial_serial.d"

"$(SSASOUTDIR)\serial_serial.obj" : "$(SSASOUTDIR)\serial_serial.obj.opt"
	@echo Building serial plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\services\posix\devio\serial\src\serial.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\serial_serial.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\serial_serial_cfg_instance.obj"
"$(SSASOUTDIR)\serial_serial_cfg_instance.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\serial_serial_cfg_instance.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)  $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\serial_serial_cfg_instance.d"

"$(SSASOUTDIR)\serial_serial_cfg_instance.obj" : "$(SSASOUTDIR)\serial_serial_cfg_instance.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\serial_cfg_instance.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\serial_serial_cfg_instance.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\ifconfig_swp_ifconfig.obj"
"$(SSASOUTDIR)\ifconfig_swp_ifconfig.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\ifconfig_swp_ifconfig.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\system\ifconfig\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\ifconfig_swp_ifconfig.d"

"$(SSASOUTDIR)\ifconfig_swp_ifconfig.obj" : "$(SSASOUTDIR)\ifconfig_swp_ifconfig.obj.opt"
	@echo Building ifconfig plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\system\ifconfig\src\swp_ifconfig.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\ifconfig_swp_ifconfig.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\init_init.obj"
"$(SSASOUTDIR)\init_init.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\init_init.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\system\init\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\init_init.d"

"$(SSASOUTDIR)\init_init.obj" : "$(SSASOUTDIR)\init_init.obj.opt"
	@echo Building init plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\system\init\src\init.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\init_init.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\init___framework_init.obj"
"$(SSASOUTDIR)\init___framework_init.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\init___framework_init.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\system\init\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\init___framework_init.d"

"$(SSASOUTDIR)\init___framework_init.obj" : "$(SSASOUTDIR)\init___framework_init.obj.opt"
	"$(CC)" -c  "$(SSASCFGDIR)\__framework_init.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\init___framework_init.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\sysutils_sysutils.obj"
"$(SSASOUTDIR)\sysutils_sysutils.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\sysutils_sysutils.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\system\sysutils\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\sysutils_sysutils.d"

"$(SSASOUTDIR)\sysutils_sysutils.obj" : "$(SSASOUTDIR)\sysutils_sysutils.obj.opt"
	@echo Building sysutils plugin
	"$(CC)" -c  "$(SWPLATFORMDIR1)\system\sysutils\src\sysutils.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\sysutils_sysutils.obj.opt"

SSASOBJ += "$(SSASOUTDIR)\sysutils_util_string.obj"
"$(SSASOUTDIR)\sysutils_util_string.obj.opt" : $(MAKEFILE)
	@argfile "$(SSASOUTDIR)\sysutils_util_string.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC_SSAS_LITE)   -I"$(SWPLATFORMDIR1)\system\sysutils\include" $(OPT_CC) $(OPT_FRAMEWORK)


-include "$(SSASOUTDIR)\sysutils_util_string.d"

"$(SSASOUTDIR)\sysutils_util_string.obj" : "$(SSASOUTDIR)\sysutils_util_string.obj.opt"
	"$(CC)" -c  "$(SWPLATFORMDIR1)\system\sysutils\src\util_string.c"  -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(SSASOUTDIR)\sysutils_util_string.obj.opt"

