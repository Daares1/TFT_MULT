# This makefile has been generated by the TASKING EDE
#
# We strongly recommend you do not edit this file
#
# Altium TASKING EDE (Integrated Embedded Development Environment)
#
# Toolchain: TASKING 3000
#

PROJ           = SOFT_EMBEBIDO
PROJDIR        = C:\Users\david.DESKTOP-GFO7C5Q\Dropbox\P_DIGITALES\NB3000\NB3000_Project\TFT_MULT\SOFTEMBEBIDO
PRODDIR        = C:\ProgramData\Altium\Altium Designer {DAA2E7A7-37E9-4E98-9761-EDE7FDBE450E}\Extensions\Embedded\Tasking

OUTDIR         = Output
MAKEFILE       = "$(OUTDIR)\SOFT_EMBEBIDO.mak"

BINDIR         = $(PRODDIR)\c3000\bin
INCDIR         = 
LIBDIR         = 

SWPLATFORM     = C:\ProgramData\Altium\Altium Designer {DAA2E7A7-37E9-4E98-9761-EDE7FDBE450E}\Extensions\Embedded\Library\Software Platform R10
SWPLATFORMDIR1 = $(SWPLATFORM)

OPT_CPU = 
OPT_ARCH = 
OPT_CPP = -D__ALTIUM_BUILD_MAJOR__=15 -D__ALTIUM_BUILD_MINOR__=1 -D__ALTIUM_PROJECT_NAME__='"'"$(PROJ)"'"' 
OPT_CC = -D__ALTIUM_BUILD_MAJOR__=15 -D__ALTIUM_BUILD_MINOR__=1 -D__ALTIUM_PROJECT_NAME__='"'"$(PROJ)"'"' -D__SWPLATFORM__ -I"$(OUTDIR)\framecfg"  -I"$(SWPLATFORMDIR1)\platform\fpga\drivers\ioport\include" -I"$(SWPLATFORMDIR1)\platform\fpga\processors\c3000\include" -D__UNIFIED_HANDLES__=1 -D__POSIX_DEVIO__ -I"$(SWPLATFORMDIR1)\services\posix\include" -I"$(SWPLATFORMDIR1)\system\ifconfig\include" -D__FRAMEWORK__ -I"$(SWPLATFORMDIR1)\system\sysutils\include" -I"$(SWPLATFORMDIR1)\platform\fpga\drivers\ad7843\include" -I"$(SWPLATFORMDIR1)\platform\fpga\drivers\led\include" -I"$(SWPLATFORMDIR1)\platform\fpga\drivers\spi\include" -I"$(SWPLATFORMDIR1)\platform\fpga\drivers\terminal\include" -I"$(SWPLATFORMDIR1)\platform\fpga\drivers\vga_16bpp\include" -I"$(SWPLATFORMDIR1)\platform\fpga\drivers\vga_ili9320\include" -I"$(SWPLATFORMDIR1)\platform\fpga\peripherals\ioport\include" -I"$(SWPLATFORMDIR1)\platform\fpga\peripherals\led\include" -I"$(SWPLATFORMDIR1)\platform\fpga\peripherals\spi\include" -I"$(SWPLATFORMDIR1)\platform\fpga\peripherals\terminal\include" -I"$(SWPLATFORMDIR1)\platform\fpga\peripherals\tspen\include" -I"$(SWPLATFORMDIR1)\platform\fpga\peripherals\vga32_16bpp\include" -I"$(SWPLATFORMDIR1)\platform\fpga\peripherals\vga32_ili9320\include" -I"$(SWPLATFORMDIR1)\services\platform\graphics\include" -I"$(SWPLATFORMDIR1)\services\platform\interrupts\include" -I"$(SWPLATFORMDIR1)\services\platform\pointer\include" -I"$(SWPLATFORMDIR1)\services\platform\timing\include" -I"$(SWPLATFORMDIR1)\services\platform\touchscreen\include" -I"$(SWPLATFORMDIR1)\services\posix\devio\include" -I"$(SWPLATFORMDIR1)\services\posix\devio\serial\include" --align-composites=n --sdata=4 --extern-sdata --call=n --use-hardware=md -Wc-I"$(PROJDIR)" -O2 --tradeoff=0 -Wc--iso=99 -Wc--debug-info=default -Wc--global-type-checking -t --rename-sections={module}.{cname}
OPT_AS = -Wa-I"$(PROJDIR)" -Wa-gs -Wa-il --use-hardware=md
OPT_LK = -Wl-D__SWPLATFORM__  -Wl-D__EXCEPTION_BASE=0x100 -Wl-c"$(OUTDIR)\$(PROJ):IHEX" --global-type-checking  --use-hardware=md -Wl-O1 -Wl-M -Wl-mcfklmoQrSuDIN -Wl-w159 -d"$(OUTDIR)\$(PROJ)_mem.lsl" --import-object="color.bmp" -Wl--map-file="$(OUTDIR)\$(PROJ).mapxml":XML
OPT_MQ = --lsl-include-directory="$(PRODDIR)\c3000\include.lsl"


all : subproj "$(OUTDIR)\$(PROJ).abs"

"subproj" : "$(OUTDIR)\Software Platform.lib"

"$(OUTDIR)\Software Platform.lib" : "Software Platform.swplatform"
"$(OUTDIR)\frameout\__framework.lib" : "Software Platform.swplatform"

TARGET=3000
include "$(PRODDIR)\etc\swplatform.mak"
EXT_LIBRARIES += "$(OUTDIR)\frameout\__framework.lib"

"$(OUTDIR)\MAIN.src.opt" : $(MAKEFILE)
    @argfile "$(OUTDIR)\MAIN.src.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC) "MAIN.c"

-include "$(OUTDIR)\MAIN.d"

"$(OUTDIR)\MAIN.src" : "$(OUTDIR)\MAIN.src.opt"
ifdef PREPROCESS
    @echo Preprocessing ${*F}.c
    "$(PRODDIR)\c3000\bin\cc3000.exe" -E$(PREPROCESSFLAGS) -o "$*.pre" -f "$(OUTDIR)\MAIN.src.opt"
endif
    @echo Compiling ${*F}.c
    "$(PRODDIR)\c3000\bin\cc3000.exe" -cs -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(OUTDIR)\MAIN.src.opt"

"$(OUTDIR)\MAIN.obj.opt" : $(MAKEFILE)
    @argfile "$(OUTDIR)\MAIN.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_AS) "$(OUTDIR)\MAIN.src"

"$(OUTDIR)\MAIN.obj" : "$(OUTDIR)\MAIN.src" "$(OUTDIR)\MAIN.obj.opt"
    @echo Assembling ${*F}.src
    "$(PRODDIR)\c3000\bin\cc3000.exe" -c -o "$@" -f "$(OUTDIR)\MAIN.obj.opt"

"$(OUTDIR)\swplatform.src.opt" : $(MAKEFILE)
    @argfile "$(OUTDIR)\swplatform.src.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_CC) "swplatform.c"

-include "$(OUTDIR)\swplatform.d"

"$(OUTDIR)\swplatform.src" : "$(OUTDIR)\swplatform.src.opt"
ifdef PREPROCESS
    @echo Preprocessing ${*F}.c
    "$(PRODDIR)\c3000\bin\cc3000.exe" -E$(PREPROCESSFLAGS) -o "$*.pre" -f "$(OUTDIR)\swplatform.src.opt"
endif
    @echo Compiling ${*F}.c
    "$(PRODDIR)\c3000\bin\cc3000.exe" -cs -o "$@" --dep-file="$*.d" --make-target="$@" -f "$(OUTDIR)\swplatform.src.opt"

"$(OUTDIR)\swplatform.obj.opt" : $(MAKEFILE)
    @argfile "$(OUTDIR)\swplatform.obj.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_AS) "$(OUTDIR)\swplatform.src"

"$(OUTDIR)\swplatform.obj" : "$(OUTDIR)\swplatform.src" "$(OUTDIR)\swplatform.obj.opt"
    @echo Assembling ${*F}.src
    "$(PRODDIR)\c3000\bin\cc3000.exe" -c -o "$@" -f "$(OUTDIR)\swplatform.obj.opt"

"$(OUTDIR)\$(PROJ).abs.opt" : $(MAKEFILE)
    @argfile "$(OUTDIR)\$(PROJ).abs.opt" $(OPT_ARCH) $(OPT_CPU) $(OPT_LK)  "$(OUTDIR)\MAIN.obj" "$(OUTDIR)\swplatform.obj" $(EXT_LIBRARIES)

"$(OUTDIR)\$(PROJ).abs" : "$(OUTDIR)\MAIN.obj" "$(OUTDIR)\swplatform.obj"
"$(OUTDIR)\$(PROJ).abs" : "$(OUTDIR)\frameout\__framework.lib" "$(OUTDIR)\$(PROJ)_mem.lsl"
"$(OUTDIR)\$(PROJ).abs" : "$(OUTDIR)\$(PROJ).lsl" "$(OUTDIR)\$(PROJ).abs.opt"
    @echo Linking and Locating ${@F}
    "$(PRODDIR)\c3000\bin\cc3000.exe" -o "$@" -f "$(OUTDIR)\$(PROJ).abs.opt"

clean :
	cmd /C if exist "$(OUTDIR)\$(PROJ).map" del "$(OUTDIR)\$(PROJ).map"
	cmd /C if exist "$(OUTDIR)\$(PROJ).mapxml" del "$(OUTDIR)\$(PROJ).mapxml"
	cmd /C if exist "$(OUTDIR)\Software Platform.lib" del "$(OUTDIR)\Software Platform.lib"
	cmd /C if exist "$(OUTDIR)\Software Platform.lib" del "$(OUTDIR)\Software Platform.lib"
	cmd /C if exist "$(OUTDIR)\MAIN.src.opt" del "$(OUTDIR)\MAIN.src.opt"
	cmd /C if exist "$(OUTDIR)\MAIN.d" del "$(OUTDIR)\MAIN.d"
	cmd /C if exist "$(OUTDIR)\MAIN.src" del "$(OUTDIR)\MAIN.src"
	cmd /C if exist "$(OUTDIR)\MAIN.obj.opt" del "$(OUTDIR)\MAIN.obj.opt"
	cmd /C if exist "$(OUTDIR)\MAIN.obj" del "$(OUTDIR)\MAIN.obj"
	cmd /C if exist "$(OUTDIR)\swplatform.src.opt" del "$(OUTDIR)\swplatform.src.opt"
	cmd /C if exist "$(OUTDIR)\swplatform.d" del "$(OUTDIR)\swplatform.d"
	cmd /C if exist "$(OUTDIR)\swplatform.src" del "$(OUTDIR)\swplatform.src"
	cmd /C if exist "$(OUTDIR)\swplatform.obj.opt" del "$(OUTDIR)\swplatform.obj.opt"
	cmd /C if exist "$(OUTDIR)\swplatform.obj" del "$(OUTDIR)\swplatform.obj"
	cmd /C if exist "$(OUTDIR)\$(PROJ).abs" del "$(OUTDIR)\$(PROJ).abs"
	cmd /C if exist "$(OUTDIR)\$(PROJ).abs.opt" del "$(OUTDIR)\$(PROJ).abs.opt"

