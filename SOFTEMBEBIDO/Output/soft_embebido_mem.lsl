#include "soft_embebido.lsl"
#ifdef __SW_LSL
#include __SW_LSL
#endif

derivative system
{
    core sw
    {
        architecture = __SW_ARCH;
    }

    memory RAM_XRAM
    {
        mau = 8;
        type = ram;
        size = 626687;
        map(dest=bus:sw:addr_bus, src_offset=0x0, dest_offset=0x1067000, size=626687);
    }

    memory ROM_XMEN
    {
        mau = 8;
        type = rom;
        size = 412K;
        map(dest=bus:sw:addr_bus, src_offset=0x0, dest_offset=0x1000000, size=412K);
    }

    memory TSK3000_1
    {
        mau = 8;
        type = rom;
        size = 32K;
        map(dest=bus:sw:addr_bus, src_offset=0x0, dest_offset=0x0, size=32K);
    }



    // Software Platform locate rules
    #ifdef __SWPLATFORM__
    #include "framecfg\swplatform.lsl"
    #endif










}
