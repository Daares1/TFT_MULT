------------------------------------------------------------
-- VHDL TFT_TOUCH
-- 2016 3 2 17 37 38
-- Created By "DXP VHDL Generator"
-- "Copyright (c) 2002-2014 Altium Limited"
-- Product Version: 15.1.15.50867
------------------------------------------------------------

------------------------------------------------------------
-- VHDL TFT_TOUCH
------------------------------------------------------------

Library IEEE;
Use     IEEE.std_logic_1164.all;

--synthesis translate_off
Library GENERIC_LIB;
Use     GENERIC_LIB.all;

--synthesis translate_on
Entity TFT_TOUCH Is
  port
  (
    CLK_I         : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=CLK_I
    dip_PAI       : In    STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=dip.PAI[7..0]
    dip_PAO       : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=dip.PAO[7..0]
    led_LED_B     : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=led_LED_B[7..0]
    led_LED_G     : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=led_LED_G[7..0]
    led_LED_R     : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=led_LED_R[7..0]
    RST_I         : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=RST_I
    spi_SPI_CLK   : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=spi.SPI_CLK
    spi_SPI_CS    : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=spi.SPI_CS
    spi_SPI_DIN   : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=spi.SPI_DIN
    spi_SPI_DOUT  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=spi.SPI_DOUT
    SRAM_MEM0_A   : Out   STD_LOGIC_VECTOR(17 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=SRAM_MEM0.A[17..0]
    SRAM_MEM0_CE  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM0.CE
    SRAM_MEM0_D   : InOut STD_LOGIC_VECTOR(15 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=SRAM_MEM0.D[15..0]
    SRAM_MEM0_LB  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM0.LB
    SRAM_MEM0_OE  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM0.OE
    SRAM_MEM0_UB  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM0.UB
    SRAM_MEM0_WE  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM0.WE
    SRAM_MEM1_A   : Out   STD_LOGIC_VECTOR(17 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=SRAM_MEM1.A[17..0]
    SRAM_MEM1_CE  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM1.CE
    SRAM_MEM1_D   : InOut STD_LOGIC_VECTOR(15 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=SRAM_MEM1.D[15..0]
    SRAM_MEM1_LB  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM1.LB
    SRAM_MEM1_OE  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM1.OE
    SRAM_MEM1_UB  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM1.UB
    SRAM_MEM1_WE  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM_MEM1.WE
    TFT_BUF_I     : In    STD_LOGIC_VECTOR(15 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=TFT.BUF_I[15..0]
    TFT_BUF_O     : Out   STD_LOGIC_VECTOR(15 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=TFT.BUF_O[15..0]
    TFT_BUF_TRI   : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT.BUF_TRI
    TFT_nCS       : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT.nCS
    TFT_nRD       : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT.nRD
    TFT_nRESET    : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT.nRESET
    TFT_nWR       : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT.nWR
    TFT_RS        : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT.RS
    touch_PENDOWN : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=touch_PENDOWN
    VGA_B         : Out   STD_LOGIC_VECTOR(4 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=VGA.B[4..0]
    VGA_BLANK     : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=VGA.BLANK
    VGA_CSYNC     : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=VGA.CSYNC
    VGA_G         : Out   STD_LOGIC_VECTOR(5 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=VGA.G[5..0]
    VGA_HSYNC     : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=VGA.HSYNC
    VGA_R         : Out   STD_LOGIC_VECTOR(4 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=VGA.R[4..0]
    VGA_VSYNC     : Out   STD_LOGIC                          -- ObjectKind=Port|PrimaryId=VGA.VSYNC
  );
  attribute MacroCell : boolean;

End TFT_TOUCH;
------------------------------------------------------------

------------------------------------------------------------
Architecture Structure Of TFT_TOUCH Is
   Component Configurable_dip                                -- ObjectKind=Part|PrimaryId=dip|SecondaryId=1
      port
      (
        ACK_O : out STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=dip-ACK_O
        CLK_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=dip-CLK_I
        CYC_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=dip-CYC_I
        DAT_I : in  STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=dip-DAT_I[7..0]
        DAT_O : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=dip-DAT_O[7..0]
        PAI   : in  STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=dip-PAI[7..0]
        PAO   : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=dip-PAO[7..0]
        RST_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=dip-RST_I
        STB_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=dip-STB_I
        WE_I  : in  STD_LOGIC                                -- ObjectKind=Pin|PrimaryId=dip-WE_I
      );
   End Component;

   Component Configurable_led                                -- ObjectKind=Part|PrimaryId=led|SecondaryId=1
      port
      (
        ACK_O : out STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=led-ACK_O
        ADR_I : in  STD_LOGIC_VECTOR(4 downto 0);            -- ObjectKind=Pin|PrimaryId=led-ADR_I[4..0]
        CLK_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=led-CLK_I
        CYC_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=led-CYC_I
        DAT_I : in  STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=led-DAT_I[7..0]
        DAT_O : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=led-DAT_O[7..0]
        LED_B : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=led-LED_B[7..0]
        LED_G : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=led-LED_G[7..0]
        LED_R : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=led-LED_R[7..0]
        RST_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=led-RST_I
        STB_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=led-STB_I
        WE_I  : in  STD_LOGIC                                -- ObjectKind=Pin|PrimaryId=led-WE_I
      );
   End Component;

   Component Configurable_spi                                -- ObjectKind=Part|PrimaryId=spi|SecondaryId=1
      port
      (
        ACK_O    : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-ACK_O
        ADR_I    : in  STD_LOGIC_VECTOR(2 downto 0);         -- ObjectKind=Pin|PrimaryId=spi-ADR_I[2..0]
        CLK_I    : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-CLK_I
        CYC_I    : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-CYC_I
        DAT_I    : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=spi-DAT_I[31..0]
        DAT_O    : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=spi-DAT_O[31..0]
        RST_I    : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-RST_I
        SPI_CLK  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-SPI_CLK
        SPI_CS   : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-SPI_CS
        SPI_DIN  : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-SPI_DIN
        SPI_DOUT : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-SPI_DOUT
        STB_I    : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=spi-STB_I
        WE_I     : in  STD_LOGIC                             -- ObjectKind=Pin|PrimaryId=spi-WE_I
      );
   End Component;

   Component Configurable_SRAM                               -- ObjectKind=Part|PrimaryId=SRAM|SecondaryId=1
      port
      (
        ACK_O    : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-ACK_O
        ADR_I    : in    STD_LOGIC_VECTOR(19 downto 0);      -- ObjectKind=Pin|PrimaryId=SRAM-ADR_I[19..0]
        CLK_I    : in    STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-CLK_I
        CYC_I    : in    STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-CYC_I
        DAT_I    : in    STD_LOGIC_VECTOR(31 downto 0);      -- ObjectKind=Pin|PrimaryId=SRAM-DAT_I[31..0]
        DAT_O    : out   STD_LOGIC_VECTOR(31 downto 0);      -- ObjectKind=Pin|PrimaryId=SRAM-DAT_O[31..0]
        RST_I    : in    STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-RST_I
        SEL_I    : in    STD_LOGIC_VECTOR(3 downto 0);       -- ObjectKind=Pin|PrimaryId=SRAM-SEL_I[3..0]
        SRAM0_A  : out   STD_LOGIC_VECTOR(17 downto 0);      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_A[17..0]
        SRAM0_CE : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_CE
        SRAM0_D  : inout STD_LOGIC_VECTOR(15 downto 0);      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_LB : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_LB
        SRAM0_OE : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_OE
        SRAM0_UB : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_UB
        SRAM0_WE : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_WE
        SRAM1_A  : out   STD_LOGIC_VECTOR(17 downto 0);      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_A[17..0]
        SRAM1_CE : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_CE
        SRAM1_D  : inout STD_LOGIC_VECTOR(15 downto 0);      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_LB : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_LB
        SRAM1_OE : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_OE
        SRAM1_UB : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_UB
        SRAM1_WE : out   STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_WE
        STB_I    : in    STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=SRAM-STB_I
        WE_I     : in    STD_LOGIC                           -- ObjectKind=Pin|PrimaryId=SRAM-WE_I
      );
   End Component;

   Component Configurable_TSK3000A_1                         -- ObjectKind=Part|PrimaryId=TSK3000A_1|SecondaryId=1
      port
      (
        CLK_I    : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-CLK_I
        INT_I    : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TSK3000A_1-INT_I[31..0]
        IO_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_ACK_I
        IO_ADR_O : out STD_LOGIC_VECTOR(23 downto 0);        -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_ADR_O[23..0]
        IO_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_CYC_O
        IO_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_DAT_I[31..0]
        IO_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_DAT_O[31..0]
        IO_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_SEL_O[3..0]
        IO_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_STB_O
        IO_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_WE_O
        ME_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_ACK_I
        ME_ADR_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_ADR_O[31..0]
        ME_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_CYC_O
        ME_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_DAT_I[31..0]
        ME_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_DAT_O[31..0]
        ME_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_SEL_O[3..0]
        ME_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_STB_O
        ME_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_WE_O
        RST_I    : in  STD_LOGIC                             -- ObjectKind=Pin|PrimaryId=TSK3000A_1-RST_I
      );
   End Component;

   Component Configurable_WB_INTERCON_1                      -- ObjectKind=Part|PrimaryId=WB_INTERCON_1|SecondaryId=1
      port
      (
        m0_ACK_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_ACK_O
        m0_ADR_I : in  STD_LOGIC_VECTOR(23 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_ADR_I[23..0]
        m0_CLK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_CLK_I
        m0_CYC_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_CYC_I
        m0_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_DAT_I[31..0]
        m0_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_DAT_O[31..0]
        m0_SEL_I : in  STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_SEL_I[3..0]
        m0_STB_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_STB_I
        m0_WE_I  : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_WE_I
        s0_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_ACK_I
        s0_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_CYC_O
        s0_DAT_I : in  STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_DAT_I[7..0]
        s0_DAT_O : out STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_DAT_O[7..0]
        s0_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_SEL_O[3..0]
        s0_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_STB_O
        s0_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_WE_O
        s1_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_ACK_I
        s1_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_CYC_O
        s1_DAT_I : in  STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_DAT_I[7..0]
        s1_DAT_O : out STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_DAT_O[7..0]
        s1_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_SEL_O[3..0]
        s1_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_STB_O
        s1_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_WE_O
        s2_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_ACK_I
        s2_ADR_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_ADR_O[3..0]
        s2_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_CYC_O
        s2_DAT_I : in  STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_DAT_I[7..0]
        s2_DAT_O : out STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_DAT_O[7..0]
        s2_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_SEL_O[3..0]
        s2_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_STB_O
        s2_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_WE_O
        s3_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_ACK_I
        s3_ADR_O : out STD_LOGIC_VECTOR(8 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_ADR_O[8..0]
        s3_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_CYC_O
        s3_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_DAT_I[31..0]
        s3_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_DAT_O[31..0]
        s3_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_SEL_O[3..0]
        s3_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_STB_O
        s3_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_WE_O
        s4_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_ACK_I
        s4_ADR_O : out STD_LOGIC_VECTOR(4 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_ADR_O[4..0]
        s4_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_CYC_O
        s4_DAT_I : in  STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_DAT_I[7..0]
        s4_DAT_O : out STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_DAT_O[7..0]
        s4_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_SEL_O[3..0]
        s4_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_STB_O
        s4_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_WE_O
        s5_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_ACK_I
        s5_ADR_O : out STD_LOGIC_VECTOR(2 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_ADR_O[2..0]
        s5_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_CYC_O
        s5_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_DAT_I[31..0]
        s5_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_DAT_O[31..0]
        s5_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_SEL_O[3..0]
        s5_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_STB_O
        s5_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_WE_O
        s6_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_ACK_I
        s6_ADR_O : out STD_LOGIC_VECTOR(11 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_ADR_O[11..0]
        s6_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_CYC_O
        s6_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_DAT_I[31..0]
        s6_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_DAT_O[31..0]
        s6_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_SEL_O[3..0]
        s6_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_STB_O
        s6_WE_O  : out STD_LOGIC                             -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_WE_O
      );
   End Component;

   Component Configurable_WB_INTERCON_2                      -- ObjectKind=Part|PrimaryId=WB_INTERCON_2|SecondaryId=1
      port
      (
        m0_ACK_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_ACK_O
        m0_ADR_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_ADR_I[31..0]
        m0_CLK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_CLK_I
        m0_CYC_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_CYC_I
        m0_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_DAT_I[31..0]
        m0_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_DAT_O[31..0]
        m0_SEL_I : in  STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_SEL_I[3..0]
        m0_STB_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_STB_I
        m0_WE_I  : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_WE_I
        s0_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_ACK_I
        s0_ADR_O : out STD_LOGIC_VECTOR(19 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_ADR_O[19..0]
        s0_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_CYC_O
        s0_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_DAT_I[31..0]
        s0_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_DAT_O[31..0]
        s0_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_SEL_O[3..0]
        s0_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_STB_O
        s0_WE_O  : out STD_LOGIC                             -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_WE_O
      );
   End Component;

   Component Configurable_WB_MULTIMASTER_1                   -- ObjectKind=Part|PrimaryId=WB_MULTIMASTER_1|SecondaryId=1
      port
      (
        CLK_I    : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-CLK_I
        m0_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_ACK_I
        m0_ADR_O : out STD_LOGIC_VECTOR(19 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_ADR_O[19..0]
        m0_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_CYC_O
        m0_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_DAT_I[31..0]
        m0_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_DAT_O[31..0]
        m0_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_SEL_O[3..0]
        m0_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_STB_O
        m0_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_WE_O
        RST_I    : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-RST_I
        s0_ACK_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_ACK_O
        s0_ADR_I : in  STD_LOGIC_VECTOR(19 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_ADR_I[19..0]
        s0_CYC_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_CYC_I
        s0_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_DAT_I[31..0]
        s0_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_DAT_O[31..0]
        s0_SEL_I : in  STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_SEL_I[3..0]
        s0_STB_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_STB_I
        s0_WE_I  : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_WE_I
        s1_ACK_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_ACK_O
        s1_ADR_I : in  STD_LOGIC_VECTOR(19 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_ADR_I[19..0]
        s1_CYC_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_CYC_I
        s1_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_DAT_I[31..0]
        s1_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_DAT_O[31..0]
        s1_SEL_I : in  STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_SEL_I[3..0]
        s1_STB_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_STB_I
        s1_WE_I  : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_WE_I
        s2_ACK_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_ACK_O
        s2_ADR_I : in  STD_LOGIC_VECTOR(19 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_ADR_I[19..0]
        s2_CYC_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_CYC_I
        s2_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_DAT_I[31..0]
        s2_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_DAT_O[31..0]
        s2_SEL_I : in  STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_SEL_I[3..0]
        s2_STB_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_STB_I
        s2_WE_I  : in  STD_LOGIC                             -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_WE_I
      );
   End Component;

   Component J16S_16B                                        -- ObjectKind=Part|PrimaryId=TSK3000A_1_HI|SecondaryId=1
      port
      (
        I0  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I0
        I1  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I1
        I2  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I2
        I3  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I3
        I4  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I4
        I5  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I5
        I6  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I6
        I7  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I7
        I8  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I8
        I9  : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I9
        I10 : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I10
        I11 : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I11
        I12 : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I12
        I13 : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I13
        I14 : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I14
        I15 : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I15
        O   : out STD_LOGIC_VECTOR(15 downto 0)              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-O[15..0]
      );
   End Component;

   Component TERMINAL                                        -- ObjectKind=Part|PrimaryId=TERMINAL_1|SecondaryId=1
      port
      (
        ACK_O : out STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=TERMINAL_1-ACK_O
        ADR_I : in  STD_LOGIC_VECTOR(3 downto 0);            -- ObjectKind=Pin|PrimaryId=TERMINAL_1-ADR_I[3..0]
        CLK_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=TERMINAL_1-CLK_I
        CYC_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=TERMINAL_1-CYC_I
        DAT_I : in  STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=TERMINAL_1-DAT_I[7..0]
        DAT_O : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Pin|PrimaryId=TERMINAL_1-DAT_O[7..0]
        INT_O : out STD_LOGIC_VECTOR(1 downto 0);            -- ObjectKind=Pin|PrimaryId=TERMINAL_1-INT_O[1..0]
        RST_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=TERMINAL_1-RST_I
        STB_I : in  STD_LOGIC;                               -- ObjectKind=Pin|PrimaryId=TERMINAL_1-STB_I
        WE_I  : in  STD_LOGIC                                -- ObjectKind=Pin|PrimaryId=TERMINAL_1-WE_I
      );
   End Component;

   Component VGA32_16BPP                                     -- ObjectKind=Part|PrimaryId=VGA|SecondaryId=1
      port
      (
        B          : out STD_LOGIC_VECTOR(4 downto 0);       -- ObjectKind=Pin|PrimaryId=VGA-B[4..0]
        BLANK      : out STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-BLANK
        CLK_I      : in  STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-CLK_I
        CSYNC      : out STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-CSYNC
        G          : out STD_LOGIC_VECTOR(5 downto 0);       -- ObjectKind=Pin|PrimaryId=VGA-G[5..0]
        HSYNC      : out STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-HSYNC
        INT_O      : out STD_LOGIC_VECTOR(2 downto 0);       -- ObjectKind=Pin|PrimaryId=VGA-INT_O[2..0]
        PixelClock : in  STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-PixelClock
        PixelReset : in  STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-PixelReset
        R          : out STD_LOGIC_VECTOR(4 downto 0);       -- ObjectKind=Pin|PrimaryId=VGA-R[4..0]
        RST_I      : in  STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-RST_I
        VSYNC      : out STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-VSYNC
        WBM_ACK_I  : in  STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-WBM_ACK_I
        WBM_ADR_O  : out STD_LOGIC_VECTOR(31 downto 0);      -- ObjectKind=Pin|PrimaryId=VGA-WBM_ADR_O[31..0]
        WBM_CYC_O  : out STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-WBM_CYC_O
        WBM_DAT_I  : in  STD_LOGIC_VECTOR(31 downto 0);      -- ObjectKind=Pin|PrimaryId=VGA-WBM_DAT_I[31..0]
        WBM_SEL_O  : out STD_LOGIC_VECTOR(3 downto 0);       -- ObjectKind=Pin|PrimaryId=VGA-WBM_SEL_O[3..0]
        WBM_STB_O  : out STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-WBM_STB_O
        WBM_WE_O   : out STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-WBM_WE_O
        WBS_ACK_O  : out STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-WBS_ACK_O
        WBS_ADR_I  : in  STD_LOGIC_VECTOR(11 downto 0);      -- ObjectKind=Pin|PrimaryId=VGA-WBS_ADR_I[11..0]
        WBS_CYC_I  : in  STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-WBS_CYC_I
        WBS_DAT_I  : in  STD_LOGIC_VECTOR(31 downto 0);      -- ObjectKind=Pin|PrimaryId=VGA-WBS_DAT_I[31..0]
        WBS_DAT_O  : out STD_LOGIC_VECTOR(31 downto 0);      -- ObjectKind=Pin|PrimaryId=VGA-WBS_DAT_O[31..0]
        WBS_SEL_I  : in  STD_LOGIC_VECTOR(3 downto 0);       -- ObjectKind=Pin|PrimaryId=VGA-WBS_SEL_I[3..0]
        WBS_STB_I  : in  STD_LOGIC;                          -- ObjectKind=Pin|PrimaryId=VGA-WBS_STB_I
        WBS_WE_I   : in  STD_LOGIC                           -- ObjectKind=Pin|PrimaryId=VGA-WBS_WE_I
      );
   End Component;

   Component WB_ILI9320                                      -- ObjectKind=Part|PrimaryId=TFT|SecondaryId=1
      port
      (
        DB_I     : in  STD_LOGIC_VECTOR(15 downto 0);        -- ObjectKind=Pin|PrimaryId=TFT-DB_I[15..0]
        DB_O     : out STD_LOGIC_VECTOR(15 downto 0);        -- ObjectKind=Pin|PrimaryId=TFT-DB_O[15..0]
        DB_TRI   : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-DB_TRI
        io_ACK_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-io_ACK_O
        io_ADR_I : in  STD_LOGIC_VECTOR(8 downto 0);         -- ObjectKind=Pin|PrimaryId=TFT-io_ADR_I[8..0]
        io_CLK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-io_CLK_I
        io_CYC_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-io_CYC_I
        io_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TFT-io_DAT_I[31..0]
        io_DAT_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TFT-io_DAT_O[31..0]
        io_INT_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-io_INT_O
        io_RST_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-io_RST_I
        io_STB_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-io_STB_I
        io_WE_I  : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-io_WE_I
        me_ACK_I : in  STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-me_ACK_I
        me_ADR_O : out STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TFT-me_ADR_O[31..0]
        me_CYC_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-me_CYC_O
        me_DAT_I : in  STD_LOGIC_VECTOR(31 downto 0);        -- ObjectKind=Pin|PrimaryId=TFT-me_DAT_I[31..0]
        me_SEL_O : out STD_LOGIC_VECTOR(3 downto 0);         -- ObjectKind=Pin|PrimaryId=TFT-me_SEL_O[3..0]
        me_STB_O : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-me_STB_O
        me_WE_O  : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-me_WE_O
        nCS      : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-nCS
        nRD      : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-nRD
        nRESET   : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-nRESET
        nWR      : out STD_LOGIC;                            -- ObjectKind=Pin|PrimaryId=TFT-nWR
        RS       : out STD_LOGIC                             -- ObjectKind=Pin|PrimaryId=TFT-RS
      );
   End Component;

   Component WB_TSPENDOWN                                    -- ObjectKind=Part|PrimaryId=touch|SecondaryId=1
      port
      (
        ACK_O   : out STD_LOGIC;                             -- ObjectKind=Pin|PrimaryId=touch-ACK_O
        CLK_I   : in  STD_LOGIC;                             -- ObjectKind=Pin|PrimaryId=touch-CLK_I
        CYC_I   : in  STD_LOGIC;                             -- ObjectKind=Pin|PrimaryId=touch-CYC_I
        DAT_O   : out STD_LOGIC_VECTOR(7 downto 0);          -- ObjectKind=Pin|PrimaryId=touch-DAT_O[7..0]
        PENDOWN : in  STD_LOGIC;                             -- ObjectKind=Pin|PrimaryId=touch-PENDOWN
        RST_I   : in  STD_LOGIC;                             -- ObjectKind=Pin|PrimaryId=touch-RST_I
        STB_I   : in  STD_LOGIC;                             -- ObjectKind=Pin|PrimaryId=touch-STB_I
        WE_I    : in  STD_LOGIC                              -- ObjectKind=Pin|PrimaryId=touch-WE_I
      );
   End Component;


    Signal NamedSignal_CLK_I                                      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=CLK_I
    Signal NamedSignal_GND1_BUS                                   : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=GND1_BUS[31..0]
    Signal NamedSignal_GND2_BUS                                   : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND2_BUS[3..0]
    Signal NamedSignal_GND3_BUS                                   : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=GND3_BUS[31..0]
    Signal NamedSignal_GND4_BUS                                   : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND4_BUS[3..0]
    Signal NamedSignal_GND5_BUS                                   : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND5_BUS[3..0]
    Signal NamedSignal_GND6_BUS                                   : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND6_BUS[3..0]
    Signal NamedSignal_GND7_BUS                                   : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND7_BUS[3..0]
    Signal NamedSignal_GND8_BUS                                   : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND8_BUS[3..0]
    Signal NamedSignal_INTERRUPT_TSK3000A_1_INT_I                 : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=INTERRUPT_TSK3000A_1_INT_I[31..0]
    Signal NamedSignal_RST_I                                      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=RST_I
    Signal NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_ACK             : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_ACK
    Signal NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_ADR             : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_ADR[31..0]
    Signal NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_CYC             : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_CYC
    Signal NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_DATIO           : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=GND3_BUS[31..0]
    Signal NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_DATOI           : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_DATOI[31..0]
    Signal NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_SEL             : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_SEL[3..0]
    Signal NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_STB             : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_STB
    Signal NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_WE              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_WE
    Signal NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_ACK         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_ACK
    Signal NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_ADR         : STD_LOGIC_VECTOR(23 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_ADR[23..0]
    Signal NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_CYC         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_CYC
    Signal NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_DATIO       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_DATIO[31..0]
    Signal NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_DATOI       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_DATOI[31..0]
    Signal NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_SEL         : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_SEL[3..0]
    Signal NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_STB         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_STB
    Signal NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_WE          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_WE
    Signal NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_ACK         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_ACK
    Signal NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_ADR         : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_ADR[31..0]
    Signal NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_CYC         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_CYC
    Signal NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_DATIO       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_DATIO[31..0]
    Signal NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_DATOI       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_DATOI[31..0]
    Signal NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_SEL         : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_SEL[3..0]
    Signal NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_STB         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_STB
    Signal NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_WE          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_WE
    Signal NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_ACK             : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_ACK
    Signal NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_ADR             : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_ADR[31..0]
    Signal NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_CYC             : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_CYC
    Signal NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_DATIO           : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=GND1_BUS[31..0]
    Signal NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_DATOI           : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_DATOI[31..0]
    Signal NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_SEL             : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_SEL[3..0]
    Signal NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_STB             : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_STB
    Signal NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_WE              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_WE
    Signal NamedSignal_WB_INTERCON_1_M0_S0_DIP_ACK                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_ACK
    Signal NamedSignal_WB_INTERCON_1_M0_S0_DIP_CYC                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_CYC
    Signal NamedSignal_WB_INTERCON_1_M0_S0_DIP_DATIO              : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_DATIO[7..0]
    Signal NamedSignal_WB_INTERCON_1_M0_S0_DIP_DATOI              : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_DATOI[7..0]
    Signal NamedSignal_WB_INTERCON_1_M0_S0_DIP_STB                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_STB
    Signal NamedSignal_WB_INTERCON_1_M0_S0_DIP_WE                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_WE
    Signal NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_ACK              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_ACK
    Signal NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_CYC              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_CYC
    Signal NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_DATOI            : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_DATOI[7..0]
    Signal NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_STB              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_STB
    Signal NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_WE               : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_WE
    Signal NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_ACK         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_ACK
    Signal NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_ADR         : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_ADR[3..0]
    Signal NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_CYC         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_CYC
    Signal NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_DATIO       : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_DATIO[7..0]
    Signal NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_DATOI       : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_DATOI[7..0]
    Signal NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_STB         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_STB
    Signal NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_WE          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_WE
    Signal NamedSignal_WB_INTERCON_1_M3_S1_TFT_ACK                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_ACK
    Signal NamedSignal_WB_INTERCON_1_M3_S1_TFT_ADR                : STD_LOGIC_VECTOR(8 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_ADR[8..0]
    Signal NamedSignal_WB_INTERCON_1_M3_S1_TFT_CYC                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_CYC
    Signal NamedSignal_WB_INTERCON_1_M3_S1_TFT_DATIO              : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_DATIO[31..0]
    Signal NamedSignal_WB_INTERCON_1_M3_S1_TFT_DATOI              : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_DATOI[31..0]
    Signal NamedSignal_WB_INTERCON_1_M3_S1_TFT_STB                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_STB
    Signal NamedSignal_WB_INTERCON_1_M3_S1_TFT_WE                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_WE
    Signal NamedSignal_WB_INTERCON_1_M4_S0_LED_ACK                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_ACK
    Signal NamedSignal_WB_INTERCON_1_M4_S0_LED_ADR                : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_ADR[4..0]
    Signal NamedSignal_WB_INTERCON_1_M4_S0_LED_CYC                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_CYC
    Signal NamedSignal_WB_INTERCON_1_M4_S0_LED_DATIO              : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_DATIO[7..0]
    Signal NamedSignal_WB_INTERCON_1_M4_S0_LED_DATOI              : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_DATOI[7..0]
    Signal NamedSignal_WB_INTERCON_1_M4_S0_LED_STB                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_STB
    Signal NamedSignal_WB_INTERCON_1_M4_S0_LED_WE                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_WE
    Signal NamedSignal_WB_INTERCON_1_M5_S0_SPI_ACK                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_ACK
    Signal NamedSignal_WB_INTERCON_1_M5_S0_SPI_ADR                : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_ADR[2..0]
    Signal NamedSignal_WB_INTERCON_1_M5_S0_SPI_CYC                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_CYC
    Signal NamedSignal_WB_INTERCON_1_M5_S0_SPI_DATIO              : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_DATIO[31..0]
    Signal NamedSignal_WB_INTERCON_1_M5_S0_SPI_DATOI              : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_DATOI[31..0]
    Signal NamedSignal_WB_INTERCON_1_M5_S0_SPI_STB                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_STB
    Signal NamedSignal_WB_INTERCON_1_M5_S0_SPI_WE                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_WE
    Signal NamedSignal_WB_INTERCON_1_M6_S1_VGA_ACK                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_ACK
    Signal NamedSignal_WB_INTERCON_1_M6_S1_VGA_ADR                : STD_LOGIC_VECTOR(11 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_ADR[11..0]
    Signal NamedSignal_WB_INTERCON_1_M6_S1_VGA_CYC                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_CYC
    Signal NamedSignal_WB_INTERCON_1_M6_S1_VGA_DATIO              : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_DATIO[31..0]
    Signal NamedSignal_WB_INTERCON_1_M6_S1_VGA_DATOI              : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_DATOI[31..0]
    Signal NamedSignal_WB_INTERCON_1_M6_S1_VGA_SEL                : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_SEL[3..0]
    Signal NamedSignal_WB_INTERCON_1_M6_S1_VGA_STB                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_STB
    Signal NamedSignal_WB_INTERCON_1_M6_S1_VGA_WE                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_WE
    Signal NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ACK   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ACK
    Signal NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ADR   : STD_LOGIC_VECTOR(19 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ADR[19..0]
    Signal NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_CYC   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_CYC
    Signal NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATIO : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATIO[31..0]
    Signal NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATOI : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATOI[31..0]
    Signal NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_SEL   : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_SEL[3..0]
    Signal NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_STB   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_STB
    Signal NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_WE    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_WE
    Signal NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_ACK            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_ACK
    Signal NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_ADR            : STD_LOGIC_VECTOR(19 downto 0); -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_ADR[19..0]
    Signal NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_CYC            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_CYC
    Signal NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_DATIO          : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_DATIO[31..0]
    Signal NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_DATOI          : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_DATOI[31..0]
    Signal NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_SEL            : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_SEL[3..0]
    Signal NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_STB            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_STB
    Signal NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_WE             : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_WE
    Signal PinSignal_dip_ACK_O                                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_ACK
    Signal PinSignal_dip_DAT_O                                    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_DATOI[7..0]
    Signal PinSignal_dip_PAO                                      : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=dip.PAO[7..0]
    Signal PinSignal_led_ACK_O                                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_ACK
    Signal PinSignal_led_DAT_O                                    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_DATOI[7..0]
    Signal PinSignal_led_LED_B                                    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=led_LED_B[7..0]
    Signal PinSignal_led_LED_G                                    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=led_LED_G[7..0]
    Signal PinSignal_led_LED_R                                    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=led_LED_R[7..0]
    Signal PinSignal_spi_ACK_O                                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_ACK
    Signal PinSignal_spi_DAT_O                                    : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_DATOI[31..0]
    Signal PinSignal_spi_SPI_CLK                                  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=spi.SPI_CLK
    Signal PinSignal_spi_SPI_CS                                   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=spi.SPI_CS
    Signal PinSignal_spi_SPI_DOUT                                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=spi.SPI_DOUT
    Signal PinSignal_SRAM_ACK_O                                   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_ACK
    Signal PinSignal_SRAM_DAT_O                                   : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_DATOI[31..0]
    Signal PinSignal_SRAM_SRAM0_A                                 : STD_LOGIC_VECTOR(17 downto 0); -- ObjectKind=Net|PrimaryId=SRAM_MEM0.A[17..0]
    Signal PinSignal_SRAM_SRAM0_CE                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.CE
    Signal PinSignal_SRAM_SRAM0_LB                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.LB
    Signal PinSignal_SRAM_SRAM0_OE                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.OE
    Signal PinSignal_SRAM_SRAM0_UB                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.UB
    Signal PinSignal_SRAM_SRAM0_WE                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.WE
    Signal PinSignal_SRAM_SRAM1_A                                 : STD_LOGIC_VECTOR(17 downto 0); -- ObjectKind=Net|PrimaryId=SRAM_MEM1.A[17..0]
    Signal PinSignal_SRAM_SRAM1_CE                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.CE
    Signal PinSignal_SRAM_SRAM1_LB                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.LB
    Signal PinSignal_SRAM_SRAM1_OE                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.OE
    Signal PinSignal_SRAM_SRAM1_UB                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.UB
    Signal PinSignal_SRAM_SRAM1_WE                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.WE
    Signal PinSignal_TERMINAL_1_ACK_O                             : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_ACK
    Signal PinSignal_TERMINAL_1_DAT_O                             : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_DATOI[7..0]
    Signal PinSignal_TERMINAL_1_INT_O                             : STD_LOGIC_VECTOR(1 downto 0); -- ObjectKind=Net|PrimaryId=TERMINAL_1_INT_O[1..0]
    Signal PinSignal_TFT_DB_O                                     : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=TFT.BUF_O[15..0]
    Signal PinSignal_TFT_DB_TRI                                   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT.BUF_TRI
    Signal PinSignal_TFT_io_ACK_O                                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_ACK
    Signal PinSignal_TFT_io_DAT_O                                 : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_DATOI[31..0]
    Signal PinSignal_TFT_io_INT_O                                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_IO_INT_O
    Signal PinSignal_TFT_me_ADR_O                                 : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_ADR[31..0]
    Signal PinSignal_TFT_me_CYC_O                                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_CYC
    Signal PinSignal_TFT_me_SEL_O                                 : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_SEL[3..0]
    Signal PinSignal_TFT_me_STB_O                                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_STB
    Signal PinSignal_TFT_me_WE_O                                  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_WE
    Signal PinSignal_TFT_nCS                                      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT.nCS
    Signal PinSignal_TFT_nRD                                      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT.nRD
    Signal PinSignal_TFT_nRESET                                   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT.nRESET
    Signal PinSignal_TFT_nWR                                      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT.nWR
    Signal PinSignal_TFT_RS                                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT.RS
    Signal PinSignal_touch_ACK_O                                  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_ACK
    Signal PinSignal_touch_DAT_O                                  : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_DATOI[7..0]
    Signal PinSignal_TSK3000A_1_HI_O                              : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=INTERRUPT_TSK3000A_1_INT_I[31..0]
    Signal PinSignal_TSK3000A_1_IO_ADR_O                          : STD_LOGIC_VECTOR(23 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_ADR[23..0]
    Signal PinSignal_TSK3000A_1_IO_CYC_O                          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_CYC
    Signal PinSignal_TSK3000A_1_IO_DAT_O                          : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_DATIO[31..0]
    Signal PinSignal_TSK3000A_1_IO_SEL_O                          : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_SEL[3..0]
    Signal PinSignal_TSK3000A_1_IO_STB_O                          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_STB
    Signal PinSignal_TSK3000A_1_IO_WE_O                           : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_WE
    Signal PinSignal_TSK3000A_1_LO_O                              : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=INTERRUPT_TSK3000A_1_INT_I[15..0]
    Signal PinSignal_TSK3000A_1_ME_ADR_O                          : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_ADR[31..0]
    Signal PinSignal_TSK3000A_1_ME_CYC_O                          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_CYC
    Signal PinSignal_TSK3000A_1_ME_DAT_O                          : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_DATIO[31..0]
    Signal PinSignal_TSK3000A_1_ME_SEL_O                          : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_SEL[3..0]
    Signal PinSignal_TSK3000A_1_ME_STB_O                          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_STB
    Signal PinSignal_TSK3000A_1_ME_WE_O                           : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_WE
    Signal PinSignal_VGA_B                                        : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=VGA.B[4..0]
    Signal PinSignal_VGA_BLANK                                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA.BLANK
    Signal PinSignal_VGA_CSYNC                                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA.CSYNC
    Signal PinSignal_VGA_G                                        : STD_LOGIC_VECTOR(5 downto 0); -- ObjectKind=Net|PrimaryId=VGA.G[5..0]
    Signal PinSignal_VGA_HSYNC                                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA.HSYNC
    Signal PinSignal_VGA_INT_O                                    : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=VGA_INT_O[2..0]
    Signal PinSignal_VGA_R                                        : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=VGA.R[4..0]
    Signal PinSignal_VGA_VSYNC                                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA.VSYNC
    Signal PinSignal_VGA_WBM_ADR_O                                : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_ADR[31..0]
    Signal PinSignal_VGA_WBM_CYC_O                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_CYC
    Signal PinSignal_VGA_WBM_SEL_O                                : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_SEL[3..0]
    Signal PinSignal_VGA_WBM_STB_O                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_STB
    Signal PinSignal_VGA_WBM_WE_O                                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_WE
    Signal PinSignal_VGA_WBS_ACK_O                                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_ACK
    Signal PinSignal_VGA_WBS_DAT_O                                : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_DATOI[31..0]
    Signal PinSignal_WB_INTERCON_1_m0_ACK_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_ACK
    Signal PinSignal_WB_INTERCON_1_m0_DAT_O                       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_DATOI[31..0]
    Signal PinSignal_WB_INTERCON_1_s0_CYC_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_CYC
    Signal PinSignal_WB_INTERCON_1_s0_DAT_O                       : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_DATIO[7..0]
    Signal PinSignal_WB_INTERCON_1_s0_SEL_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND8_BUS[3..0]
    Signal PinSignal_WB_INTERCON_1_s0_STB_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_STB
    Signal PinSignal_WB_INTERCON_1_s0_WE_O                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_WE
    Signal PinSignal_WB_INTERCON_1_s1_CYC_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_CYC
    Signal PinSignal_WB_INTERCON_1_s1_DAT_O                       : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_DATIO[7..0]
    Signal PinSignal_WB_INTERCON_1_s1_SEL_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND6_BUS[3..0]
    Signal PinSignal_WB_INTERCON_1_s1_STB_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_STB
    Signal PinSignal_WB_INTERCON_1_s1_WE_O                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_WE
    Signal PinSignal_WB_INTERCON_1_s2_ADR_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_ADR[3..0]
    Signal PinSignal_WB_INTERCON_1_s2_CYC_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_CYC
    Signal PinSignal_WB_INTERCON_1_s2_DAT_O                       : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_DATIO[7..0]
    Signal PinSignal_WB_INTERCON_1_s2_SEL_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND5_BUS[3..0]
    Signal PinSignal_WB_INTERCON_1_s2_STB_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_STB
    Signal PinSignal_WB_INTERCON_1_s2_WE_O                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_WE
    Signal PinSignal_WB_INTERCON_1_s3_ADR_O                       : STD_LOGIC_VECTOR(8 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_ADR[8..0]
    Signal PinSignal_WB_INTERCON_1_s3_CYC_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_CYC
    Signal PinSignal_WB_INTERCON_1_s3_DAT_O                       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_DATIO[31..0]
    Signal PinSignal_WB_INTERCON_1_s3_SEL_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND2_BUS[3..0]
    Signal PinSignal_WB_INTERCON_1_s3_STB_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_STB
    Signal PinSignal_WB_INTERCON_1_s3_WE_O                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_WE
    Signal PinSignal_WB_INTERCON_1_s4_ADR_O                       : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_ADR[4..0]
    Signal PinSignal_WB_INTERCON_1_s4_CYC_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_CYC
    Signal PinSignal_WB_INTERCON_1_s4_DAT_O                       : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_DATIO[7..0]
    Signal PinSignal_WB_INTERCON_1_s4_SEL_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND7_BUS[3..0]
    Signal PinSignal_WB_INTERCON_1_s4_STB_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_STB
    Signal PinSignal_WB_INTERCON_1_s4_WE_O                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_WE
    Signal PinSignal_WB_INTERCON_1_s5_ADR_O                       : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_ADR[2..0]
    Signal PinSignal_WB_INTERCON_1_s5_CYC_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_CYC
    Signal PinSignal_WB_INTERCON_1_s5_DAT_O                       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_DATIO[31..0]
    Signal PinSignal_WB_INTERCON_1_s5_SEL_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=GND4_BUS[3..0]
    Signal PinSignal_WB_INTERCON_1_s5_STB_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_STB
    Signal PinSignal_WB_INTERCON_1_s5_WE_O                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_WE
    Signal PinSignal_WB_INTERCON_1_s6_ADR_O                       : STD_LOGIC_VECTOR(11 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_ADR[11..0]
    Signal PinSignal_WB_INTERCON_1_s6_CYC_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_CYC
    Signal PinSignal_WB_INTERCON_1_s6_DAT_O                       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_DATIO[31..0]
    Signal PinSignal_WB_INTERCON_1_s6_SEL_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_SEL[3..0]
    Signal PinSignal_WB_INTERCON_1_s6_STB_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_STB
    Signal PinSignal_WB_INTERCON_1_s6_WE_O                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_WE
    Signal PinSignal_WB_INTERCON_2_m0_ACK_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_ACK
    Signal PinSignal_WB_INTERCON_2_m0_DAT_O                       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_DATOI[31..0]
    Signal PinSignal_WB_INTERCON_2_s0_ADR_O                       : STD_LOGIC_VECTOR(19 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ADR[19..0]
    Signal PinSignal_WB_INTERCON_2_s0_CYC_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_CYC
    Signal PinSignal_WB_INTERCON_2_s0_DAT_O                       : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATIO[31..0]
    Signal PinSignal_WB_INTERCON_2_s0_SEL_O                       : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_SEL[3..0]
    Signal PinSignal_WB_INTERCON_2_s0_STB_O                       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_STB
    Signal PinSignal_WB_INTERCON_2_s0_WE_O                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_WE
    Signal PinSignal_WB_MULTIMASTER_1_m0_ADR_O                    : STD_LOGIC_VECTOR(19 downto 0); -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_ADR[19..0]
    Signal PinSignal_WB_MULTIMASTER_1_m0_CYC_O                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_CYC
    Signal PinSignal_WB_MULTIMASTER_1_m0_DAT_O                    : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_DATIO[31..0]
    Signal PinSignal_WB_MULTIMASTER_1_m0_SEL_O                    : STD_LOGIC_VECTOR(3 downto 0); -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_SEL[3..0]
    Signal PinSignal_WB_MULTIMASTER_1_m0_STB_O                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_STB
    Signal PinSignal_WB_MULTIMASTER_1_m0_WE_O                     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_WE
    Signal PinSignal_WB_MULTIMASTER_1_s0_ACK_O                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ACK
    Signal PinSignal_WB_MULTIMASTER_1_s0_DAT_O                    : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATOI[31..0]
    Signal PinSignal_WB_MULTIMASTER_1_s1_ACK_O                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_ACK
    Signal PinSignal_WB_MULTIMASTER_1_s1_DAT_O                    : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_DATOI[31..0]
    Signal PinSignal_WB_MULTIMASTER_1_s2_ACK_O                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_ACK
    Signal PinSignal_WB_MULTIMASTER_1_s2_DAT_O                    : STD_LOGIC_VECTOR(31 downto 0); -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_DATOI[31..0]
    Signal PowerSignal_GND                                        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=GND

   attribute IsUserConfigurable : string;
   attribute IsUserConfigurable of spi : Label is "True";


Begin
    WB_MULTIMASTER_1 : Configurable_WB_MULTIMASTER_1         -- ObjectKind=Part|PrimaryId=WB_MULTIMASTER_1|SecondaryId=1
      Port Map
      (
        CLK_I    => NamedSignal_CLK_I,                       -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-CLK_I
        m0_ACK_I => NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_ACK, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_ACK_I
        m0_ADR_O => PinSignal_WB_MULTIMASTER_1_m0_ADR_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_ADR_O[19..0]
        m0_CYC_O => PinSignal_WB_MULTIMASTER_1_m0_CYC_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_CYC_O
        m0_DAT_I => NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_DATOI, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_DAT_I[31..0]
        m0_DAT_O => PinSignal_WB_MULTIMASTER_1_m0_DAT_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_DAT_O[31..0]
        m0_SEL_O => PinSignal_WB_MULTIMASTER_1_m0_SEL_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_SEL_O[3..0]
        m0_STB_O => PinSignal_WB_MULTIMASTER_1_m0_STB_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_STB_O
        m0_WE_O  => PinSignal_WB_MULTIMASTER_1_m0_WE_O,      -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-m0_WE_O
        RST_I    => NamedSignal_RST_I,                       -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-RST_I
        s0_ACK_O => PinSignal_WB_MULTIMASTER_1_s0_ACK_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_ACK_O
        s0_ADR_I => NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ADR, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_ADR_I[19..0]
        s0_CYC_I => NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_CYC, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_CYC_I
        s0_DAT_I => NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATIO, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_DAT_I[31..0]
        s0_DAT_O => PinSignal_WB_MULTIMASTER_1_s0_DAT_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_DAT_O[31..0]
        s0_SEL_I => NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_SEL, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_SEL_I[3..0]
        s0_STB_I => NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_STB, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_STB_I
        s0_WE_I  => NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_WE, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s0_WE_I
        s1_ACK_O => PinSignal_WB_MULTIMASTER_1_s1_ACK_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_ACK_O
        s1_ADR_I => NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_ADR(19 downto 0), -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_ADR_I[19..0]
        s1_CYC_I => NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_CYC, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_CYC_I
        s1_DAT_I => NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_DATIO, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_DAT_I[31..0]
        s1_DAT_O => PinSignal_WB_MULTIMASTER_1_s1_DAT_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_DAT_O[31..0]
        s1_SEL_I => NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_SEL, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_SEL_I[3..0]
        s1_STB_I => NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_STB, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_STB_I
        s1_WE_I  => NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_WE, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s1_WE_I
        s2_ACK_O => PinSignal_WB_MULTIMASTER_1_s2_ACK_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_ACK_O
        s2_ADR_I => NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_ADR(19 downto 0), -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_ADR_I[19..0]
        s2_CYC_I => NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_CYC, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_CYC_I
        s2_DAT_I => NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_DATIO, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_DAT_I[31..0]
        s2_DAT_O => PinSignal_WB_MULTIMASTER_1_s2_DAT_O,     -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_DAT_O[31..0]
        s2_SEL_I => NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_SEL, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_SEL_I[3..0]
        s2_STB_I => NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_STB, -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_STB_I
        s2_WE_I  => NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_WE -- ObjectKind=Pin|PrimaryId=WB_MULTIMASTER_1-s2_WE_I
      );

    WB_INTERCON_2 : Configurable_WB_INTERCON_2               -- ObjectKind=Part|PrimaryId=WB_INTERCON_2|SecondaryId=1
      Port Map
      (
        m0_ACK_O => PinSignal_WB_INTERCON_2_m0_ACK_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_ACK_O
        m0_ADR_I => NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_ADR, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_ADR_I[31..0]
        m0_CLK_I => NamedSignal_CLK_I,                       -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_CLK_I
        m0_CYC_I => NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_CYC, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_CYC_I
        m0_DAT_I => NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_DATIO, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_DAT_I[31..0]
        m0_DAT_O => PinSignal_WB_INTERCON_2_m0_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_DAT_O[31..0]
        m0_SEL_I => NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_SEL, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_SEL_I[3..0]
        m0_STB_I => NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_STB, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_STB_I
        m0_WE_I  => NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_WE, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-m0_WE_I
        s0_ACK_I => NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ACK, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_ACK_I
        s0_ADR_O => PinSignal_WB_INTERCON_2_s0_ADR_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_ADR_O[19..0]
        s0_CYC_O => PinSignal_WB_INTERCON_2_s0_CYC_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_CYC_O
        s0_DAT_I => NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATOI, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_DAT_I[31..0]
        s0_DAT_O => PinSignal_WB_INTERCON_2_s0_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_DAT_O[31..0]
        s0_SEL_O => PinSignal_WB_INTERCON_2_s0_SEL_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_SEL_O[3..0]
        s0_STB_O => PinSignal_WB_INTERCON_2_s0_STB_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_STB_O
        s0_WE_O  => PinSignal_WB_INTERCON_2_s0_WE_O          -- ObjectKind=Pin|PrimaryId=WB_INTERCON_2-s0_WE_O
      );

    WB_INTERCON_1 : Configurable_WB_INTERCON_1               -- ObjectKind=Part|PrimaryId=WB_INTERCON_1|SecondaryId=1
      Port Map
      (
        m0_ACK_O => PinSignal_WB_INTERCON_1_m0_ACK_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_ACK_O
        m0_ADR_I => NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_ADR, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_ADR_I[23..0]
        m0_CLK_I => NamedSignal_CLK_I,                       -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_CLK_I
        m0_CYC_I => NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_CYC, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_CYC_I
        m0_DAT_I => NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_DATIO, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_DAT_I[31..0]
        m0_DAT_O => PinSignal_WB_INTERCON_1_m0_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_DAT_O[31..0]
        m0_SEL_I => NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_SEL, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_SEL_I[3..0]
        m0_STB_I => NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_STB, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_STB_I
        m0_WE_I  => NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_WE, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-m0_WE_I
        s0_ACK_I => NamedSignal_WB_INTERCON_1_M0_S0_DIP_ACK, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_ACK_I
        s0_CYC_O => PinSignal_WB_INTERCON_1_s0_CYC_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_CYC_O
        s0_DAT_I => NamedSignal_WB_INTERCON_1_M0_S0_DIP_DATOI, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_DAT_I[7..0]
        s0_DAT_O => PinSignal_WB_INTERCON_1_s0_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_DAT_O[7..0]
        s0_SEL_O => PinSignal_WB_INTERCON_1_s0_SEL_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_SEL_O[3..0]
        s0_STB_O => PinSignal_WB_INTERCON_1_s0_STB_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_STB_O
        s0_WE_O  => PinSignal_WB_INTERCON_1_s0_WE_O,         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s0_WE_O
        s1_ACK_I => NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_ACK, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_ACK_I
        s1_CYC_O => PinSignal_WB_INTERCON_1_s1_CYC_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_CYC_O
        s1_DAT_I => NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_DATOI, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_DAT_I[7..0]
        s1_DAT_O => PinSignal_WB_INTERCON_1_s1_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_DAT_O[7..0]
        s1_SEL_O => PinSignal_WB_INTERCON_1_s1_SEL_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_SEL_O[3..0]
        s1_STB_O => PinSignal_WB_INTERCON_1_s1_STB_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_STB_O
        s1_WE_O  => PinSignal_WB_INTERCON_1_s1_WE_O,         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s1_WE_O
        s2_ACK_I => NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_ACK, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_ACK_I
        s2_ADR_O => PinSignal_WB_INTERCON_1_s2_ADR_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_ADR_O[3..0]
        s2_CYC_O => PinSignal_WB_INTERCON_1_s2_CYC_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_CYC_O
        s2_DAT_I => NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_DATOI, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_DAT_I[7..0]
        s2_DAT_O => PinSignal_WB_INTERCON_1_s2_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_DAT_O[7..0]
        s2_SEL_O => PinSignal_WB_INTERCON_1_s2_SEL_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_SEL_O[3..0]
        s2_STB_O => PinSignal_WB_INTERCON_1_s2_STB_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_STB_O
        s2_WE_O  => PinSignal_WB_INTERCON_1_s2_WE_O,         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s2_WE_O
        s3_ACK_I => NamedSignal_WB_INTERCON_1_M3_S1_TFT_ACK, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_ACK_I
        s3_ADR_O => PinSignal_WB_INTERCON_1_s3_ADR_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_ADR_O[8..0]
        s3_CYC_O => PinSignal_WB_INTERCON_1_s3_CYC_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_CYC_O
        s3_DAT_I => NamedSignal_WB_INTERCON_1_M3_S1_TFT_DATOI, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_DAT_I[31..0]
        s3_DAT_O => PinSignal_WB_INTERCON_1_s3_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_DAT_O[31..0]
        s3_SEL_O => PinSignal_WB_INTERCON_1_s3_SEL_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_SEL_O[3..0]
        s3_STB_O => PinSignal_WB_INTERCON_1_s3_STB_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_STB_O
        s3_WE_O  => PinSignal_WB_INTERCON_1_s3_WE_O,         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s3_WE_O
        s4_ACK_I => NamedSignal_WB_INTERCON_1_M4_S0_LED_ACK, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_ACK_I
        s4_ADR_O => PinSignal_WB_INTERCON_1_s4_ADR_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_ADR_O[4..0]
        s4_CYC_O => PinSignal_WB_INTERCON_1_s4_CYC_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_CYC_O
        s4_DAT_I => NamedSignal_WB_INTERCON_1_M4_S0_LED_DATOI, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_DAT_I[7..0]
        s4_DAT_O => PinSignal_WB_INTERCON_1_s4_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_DAT_O[7..0]
        s4_SEL_O => PinSignal_WB_INTERCON_1_s4_SEL_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_SEL_O[3..0]
        s4_STB_O => PinSignal_WB_INTERCON_1_s4_STB_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_STB_O
        s4_WE_O  => PinSignal_WB_INTERCON_1_s4_WE_O,         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s4_WE_O
        s5_ACK_I => NamedSignal_WB_INTERCON_1_M5_S0_SPI_ACK, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_ACK_I
        s5_ADR_O => PinSignal_WB_INTERCON_1_s5_ADR_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_ADR_O[2..0]
        s5_CYC_O => PinSignal_WB_INTERCON_1_s5_CYC_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_CYC_O
        s5_DAT_I => NamedSignal_WB_INTERCON_1_M5_S0_SPI_DATOI, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_DAT_I[31..0]
        s5_DAT_O => PinSignal_WB_INTERCON_1_s5_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_DAT_O[31..0]
        s5_SEL_O => PinSignal_WB_INTERCON_1_s5_SEL_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_SEL_O[3..0]
        s5_STB_O => PinSignal_WB_INTERCON_1_s5_STB_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_STB_O
        s5_WE_O  => PinSignal_WB_INTERCON_1_s5_WE_O,         -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s5_WE_O
        s6_ACK_I => NamedSignal_WB_INTERCON_1_M6_S1_VGA_ACK, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_ACK_I
        s6_ADR_O => PinSignal_WB_INTERCON_1_s6_ADR_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_ADR_O[11..0]
        s6_CYC_O => PinSignal_WB_INTERCON_1_s6_CYC_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_CYC_O
        s6_DAT_I => NamedSignal_WB_INTERCON_1_M6_S1_VGA_DATOI, -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_DAT_I[31..0]
        s6_DAT_O => PinSignal_WB_INTERCON_1_s6_DAT_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_DAT_O[31..0]
        s6_SEL_O => PinSignal_WB_INTERCON_1_s6_SEL_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_SEL_O[3..0]
        s6_STB_O => PinSignal_WB_INTERCON_1_s6_STB_O,        -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_STB_O
        s6_WE_O  => PinSignal_WB_INTERCON_1_s6_WE_O          -- ObjectKind=Pin|PrimaryId=WB_INTERCON_1-s6_WE_O
      );

    VGA : VGA32_16BPP                                        -- ObjectKind=Part|PrimaryId=VGA|SecondaryId=1
      Port Map
      (
        B          => PinSignal_VGA_B,                       -- ObjectKind=Pin|PrimaryId=VGA-B[4..0]
        BLANK      => PinSignal_VGA_BLANK,                   -- ObjectKind=Pin|PrimaryId=VGA-BLANK
        CLK_I      => NamedSignal_CLK_I,                     -- ObjectKind=Pin|PrimaryId=VGA-CLK_I
        CSYNC      => PinSignal_VGA_CSYNC,                   -- ObjectKind=Pin|PrimaryId=VGA-CSYNC
        G          => PinSignal_VGA_G,                       -- ObjectKind=Pin|PrimaryId=VGA-G[5..0]
        HSYNC      => PinSignal_VGA_HSYNC,                   -- ObjectKind=Pin|PrimaryId=VGA-HSYNC
        INT_O      => PinSignal_VGA_INT_O,                   -- ObjectKind=Pin|PrimaryId=VGA-INT_O[2..0]
        PixelClock => NamedSignal_CLK_I,                     -- ObjectKind=Pin|PrimaryId=VGA-PixelClock
        PixelReset => NamedSignal_RST_I,                     -- ObjectKind=Pin|PrimaryId=VGA-PixelReset
        R          => PinSignal_VGA_R,                       -- ObjectKind=Pin|PrimaryId=VGA-R[4..0]
        RST_I      => NamedSignal_RST_I,                     -- ObjectKind=Pin|PrimaryId=VGA-RST_I
        VSYNC      => PinSignal_VGA_VSYNC,                   -- ObjectKind=Pin|PrimaryId=VGA-VSYNC
        WBM_ACK_I  => NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_ACK, -- ObjectKind=Pin|PrimaryId=VGA-WBM_ACK_I
        WBM_ADR_O  => PinSignal_VGA_WBM_ADR_O,               -- ObjectKind=Pin|PrimaryId=VGA-WBM_ADR_O[31..0]
        WBM_CYC_O  => PinSignal_VGA_WBM_CYC_O,               -- ObjectKind=Pin|PrimaryId=VGA-WBM_CYC_O
        WBM_DAT_I  => NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_DATOI, -- ObjectKind=Pin|PrimaryId=VGA-WBM_DAT_I[31..0]
        WBM_SEL_O  => PinSignal_VGA_WBM_SEL_O,               -- ObjectKind=Pin|PrimaryId=VGA-WBM_SEL_O[3..0]
        WBM_STB_O  => PinSignal_VGA_WBM_STB_O,               -- ObjectKind=Pin|PrimaryId=VGA-WBM_STB_O
        WBM_WE_O   => PinSignal_VGA_WBM_WE_O,                -- ObjectKind=Pin|PrimaryId=VGA-WBM_WE_O
        WBS_ACK_O  => PinSignal_VGA_WBS_ACK_O,               -- ObjectKind=Pin|PrimaryId=VGA-WBS_ACK_O
        WBS_ADR_I  => NamedSignal_WB_INTERCON_1_M6_S1_VGA_ADR, -- ObjectKind=Pin|PrimaryId=VGA-WBS_ADR_I[11..0]
        WBS_CYC_I  => NamedSignal_WB_INTERCON_1_M6_S1_VGA_CYC, -- ObjectKind=Pin|PrimaryId=VGA-WBS_CYC_I
        WBS_DAT_I  => NamedSignal_WB_INTERCON_1_M6_S1_VGA_DATIO, -- ObjectKind=Pin|PrimaryId=VGA-WBS_DAT_I[31..0]
        WBS_DAT_O  => PinSignal_VGA_WBS_DAT_O,               -- ObjectKind=Pin|PrimaryId=VGA-WBS_DAT_O[31..0]
        WBS_SEL_I  => NamedSignal_WB_INTERCON_1_M6_S1_VGA_SEL, -- ObjectKind=Pin|PrimaryId=VGA-WBS_SEL_I[3..0]
        WBS_STB_I  => NamedSignal_WB_INTERCON_1_M6_S1_VGA_STB, -- ObjectKind=Pin|PrimaryId=VGA-WBS_STB_I
        WBS_WE_I   => NamedSignal_WB_INTERCON_1_M6_S1_VGA_WE -- ObjectKind=Pin|PrimaryId=VGA-WBS_WE_I
      );

    TSK3000A_1_LO : J16S_16B                                 -- ObjectKind=Part|PrimaryId=TSK3000A_1_LO|SecondaryId=1
      Port Map
      (
        I0  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I0
        I1  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I1
        I2  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I2
        I3  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I3
        I4  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I4
        I5  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I5
        I6  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I6
        I7  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I7
        I8  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I8
        I9  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I9
        I10 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I10
        I11 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I11
        I12 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I12
        I13 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I13
        I14 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I14
        I15 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-I15
        O   => PinSignal_TSK3000A_1_LO_O                     -- ObjectKind=Pin|PrimaryId=TSK3000A_1_LO-O[15..0]
      );

    TSK3000A_1_HI : J16S_16B                                 -- ObjectKind=Part|PrimaryId=TSK3000A_1_HI|SecondaryId=1
      Port Map
      (
        I0  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I0
        I1  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I1
        I2  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I2
        I3  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I3
        I4  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I4
        I5  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I5
        I6  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I6
        I7  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I7
        I8  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I8
        I9  => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I9
        I10 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I10
        I11 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I11
        I12 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I12
        I13 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I13
        I14 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I14
        I15 => PowerSignal_GND,                              -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-I15
        O   => PinSignal_TSK3000A_1_HI_O                     -- ObjectKind=Pin|PrimaryId=TSK3000A_1_HI-O[15..0]
      );

    TSK3000A_1 : Configurable_TSK3000A_1                     -- ObjectKind=Part|PrimaryId=TSK3000A_1|SecondaryId=1
      Port Map
      (
        CLK_I    => CLK_I,                                   -- ObjectKind=Pin|PrimaryId=TSK3000A_1-CLK_I
        INT_I    => NamedSignal_INTERRUPT_TSK3000A_1_INT_I,  -- ObjectKind=Pin|PrimaryId=TSK3000A_1-INT_I[31..0]
        IO_ACK_I => NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_ACK, -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_ACK_I
        IO_ADR_O => PinSignal_TSK3000A_1_IO_ADR_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_ADR_O[23..0]
        IO_CYC_O => PinSignal_TSK3000A_1_IO_CYC_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_CYC_O
        IO_DAT_I => NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_DATOI, -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_DAT_I[31..0]
        IO_DAT_O => PinSignal_TSK3000A_1_IO_DAT_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_DAT_O[31..0]
        IO_SEL_O => PinSignal_TSK3000A_1_IO_SEL_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_SEL_O[3..0]
        IO_STB_O => PinSignal_TSK3000A_1_IO_STB_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_STB_O
        IO_WE_O  => PinSignal_TSK3000A_1_IO_WE_O,            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-IO_WE_O
        ME_ACK_I => NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_ACK, -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_ACK_I
        ME_ADR_O => PinSignal_TSK3000A_1_ME_ADR_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_ADR_O[31..0]
        ME_CYC_O => PinSignal_TSK3000A_1_ME_CYC_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_CYC_O
        ME_DAT_I => NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_DATOI, -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_DAT_I[31..0]
        ME_DAT_O => PinSignal_TSK3000A_1_ME_DAT_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_DAT_O[31..0]
        ME_SEL_O => PinSignal_TSK3000A_1_ME_SEL_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_SEL_O[3..0]
        ME_STB_O => PinSignal_TSK3000A_1_ME_STB_O,           -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_STB_O
        ME_WE_O  => PinSignal_TSK3000A_1_ME_WE_O,            -- ObjectKind=Pin|PrimaryId=TSK3000A_1-ME_WE_O
        RST_I    => RST_I                                    -- ObjectKind=Pin|PrimaryId=TSK3000A_1-RST_I
      );

    touch : WB_TSPENDOWN                                     -- ObjectKind=Part|PrimaryId=touch|SecondaryId=1
      Port Map
      (
        ACK_O   => PinSignal_touch_ACK_O,                    -- ObjectKind=Pin|PrimaryId=touch-ACK_O
        CLK_I   => NamedSignal_CLK_I,                        -- ObjectKind=Pin|PrimaryId=touch-CLK_I
        CYC_I   => NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_CYC, -- ObjectKind=Pin|PrimaryId=touch-CYC_I
        DAT_O   => PinSignal_touch_DAT_O,                    -- ObjectKind=Pin|PrimaryId=touch-DAT_O[7..0]
        PENDOWN => touch_PENDOWN,                            -- ObjectKind=Pin|PrimaryId=touch-PENDOWN
        RST_I   => NamedSignal_RST_I,                        -- ObjectKind=Pin|PrimaryId=touch-RST_I
        STB_I   => NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_STB, -- ObjectKind=Pin|PrimaryId=touch-STB_I
        WE_I    => NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_WE  -- ObjectKind=Pin|PrimaryId=touch-WE_I
      );

    TFT : WB_ILI9320                                         -- ObjectKind=Part|PrimaryId=TFT|SecondaryId=1
      Port Map
      (
        DB_I     => TFT_BUF_I,                               -- ObjectKind=Pin|PrimaryId=TFT-DB_I[15..0]
        DB_O     => PinSignal_TFT_DB_O,                      -- ObjectKind=Pin|PrimaryId=TFT-DB_O[15..0]
        DB_TRI   => PinSignal_TFT_DB_TRI,                    -- ObjectKind=Pin|PrimaryId=TFT-DB_TRI
        io_ACK_O => PinSignal_TFT_io_ACK_O,                  -- ObjectKind=Pin|PrimaryId=TFT-io_ACK_O
        io_ADR_I => NamedSignal_WB_INTERCON_1_M3_S1_TFT_ADR, -- ObjectKind=Pin|PrimaryId=TFT-io_ADR_I[8..0]
        io_CLK_I => NamedSignal_CLK_I,                       -- ObjectKind=Pin|PrimaryId=TFT-io_CLK_I
        io_CYC_I => NamedSignal_WB_INTERCON_1_M3_S1_TFT_CYC, -- ObjectKind=Pin|PrimaryId=TFT-io_CYC_I
        io_DAT_I => NamedSignal_WB_INTERCON_1_M3_S1_TFT_DATIO, -- ObjectKind=Pin|PrimaryId=TFT-io_DAT_I[31..0]
        io_DAT_O => PinSignal_TFT_io_DAT_O,                  -- ObjectKind=Pin|PrimaryId=TFT-io_DAT_O[31..0]
        io_INT_O => PinSignal_TFT_io_INT_O,                  -- ObjectKind=Pin|PrimaryId=TFT-io_INT_O
        io_RST_I => NamedSignal_RST_I,                       -- ObjectKind=Pin|PrimaryId=TFT-io_RST_I
        io_STB_I => NamedSignal_WB_INTERCON_1_M3_S1_TFT_STB, -- ObjectKind=Pin|PrimaryId=TFT-io_STB_I
        io_WE_I  => NamedSignal_WB_INTERCON_1_M3_S1_TFT_WE,  -- ObjectKind=Pin|PrimaryId=TFT-io_WE_I
        me_ACK_I => NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_ACK, -- ObjectKind=Pin|PrimaryId=TFT-me_ACK_I
        me_ADR_O => PinSignal_TFT_me_ADR_O,                  -- ObjectKind=Pin|PrimaryId=TFT-me_ADR_O[31..0]
        me_CYC_O => PinSignal_TFT_me_CYC_O,                  -- ObjectKind=Pin|PrimaryId=TFT-me_CYC_O
        me_DAT_I => NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_DATOI, -- ObjectKind=Pin|PrimaryId=TFT-me_DAT_I[31..0]
        me_SEL_O => PinSignal_TFT_me_SEL_O,                  -- ObjectKind=Pin|PrimaryId=TFT-me_SEL_O[3..0]
        me_STB_O => PinSignal_TFT_me_STB_O,                  -- ObjectKind=Pin|PrimaryId=TFT-me_STB_O
        me_WE_O  => PinSignal_TFT_me_WE_O,                   -- ObjectKind=Pin|PrimaryId=TFT-me_WE_O
        nCS      => PinSignal_TFT_nCS,                       -- ObjectKind=Pin|PrimaryId=TFT-nCS
        nRD      => PinSignal_TFT_nRD,                       -- ObjectKind=Pin|PrimaryId=TFT-nRD
        nRESET   => PinSignal_TFT_nRESET,                    -- ObjectKind=Pin|PrimaryId=TFT-nRESET
        nWR      => PinSignal_TFT_nWR,                       -- ObjectKind=Pin|PrimaryId=TFT-nWR
        RS       => PinSignal_TFT_RS                         -- ObjectKind=Pin|PrimaryId=TFT-RS
      );

    TERMINAL_1 : TERMINAL                                    -- ObjectKind=Part|PrimaryId=TERMINAL_1|SecondaryId=1
      Port Map
      (
        ACK_O => PinSignal_TERMINAL_1_ACK_O,                 -- ObjectKind=Pin|PrimaryId=TERMINAL_1-ACK_O
        ADR_I => NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_ADR, -- ObjectKind=Pin|PrimaryId=TERMINAL_1-ADR_I[3..0]
        CLK_I => NamedSignal_CLK_I,                          -- ObjectKind=Pin|PrimaryId=TERMINAL_1-CLK_I
        CYC_I => NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_CYC, -- ObjectKind=Pin|PrimaryId=TERMINAL_1-CYC_I
        DAT_I => NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_DATIO, -- ObjectKind=Pin|PrimaryId=TERMINAL_1-DAT_I[7..0]
        DAT_O => PinSignal_TERMINAL_1_DAT_O,                 -- ObjectKind=Pin|PrimaryId=TERMINAL_1-DAT_O[7..0]
        INT_O => PinSignal_TERMINAL_1_INT_O,                 -- ObjectKind=Pin|PrimaryId=TERMINAL_1-INT_O[1..0]
        RST_I => NamedSignal_RST_I,                          -- ObjectKind=Pin|PrimaryId=TERMINAL_1-RST_I
        STB_I => NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_STB, -- ObjectKind=Pin|PrimaryId=TERMINAL_1-STB_I
        WE_I  => NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_WE -- ObjectKind=Pin|PrimaryId=TERMINAL_1-WE_I
      );

    SRAM : Configurable_SRAM                                 -- ObjectKind=Part|PrimaryId=SRAM|SecondaryId=1
      Port Map
      (
        ACK_O       => PinSignal_SRAM_ACK_O,                 -- ObjectKind=Pin|PrimaryId=SRAM-ACK_O
        ADR_I       => NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_ADR, -- ObjectKind=Pin|PrimaryId=SRAM-ADR_I[19..0]
        CLK_I       => NamedSignal_CLK_I,                    -- ObjectKind=Pin|PrimaryId=SRAM-CLK_I
        CYC_I       => NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_CYC, -- ObjectKind=Pin|PrimaryId=SRAM-CYC_I
        DAT_I       => NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_DATIO, -- ObjectKind=Pin|PrimaryId=SRAM-DAT_I[31..0]
        DAT_O       => PinSignal_SRAM_DAT_O,                 -- ObjectKind=Pin|PrimaryId=SRAM-DAT_O[31..0]
        RST_I       => NamedSignal_RST_I,                    -- ObjectKind=Pin|PrimaryId=SRAM-RST_I
        SEL_I       => NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_SEL, -- ObjectKind=Pin|PrimaryId=SRAM-SEL_I[3..0]
        SRAM0_A     => PinSignal_SRAM_SRAM0_A,               -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_A[17..0]
        SRAM0_CE    => PinSignal_SRAM_SRAM0_CE,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_CE
        SRAM0_D(15) => SRAM_MEM0_D(15),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(14) => SRAM_MEM0_D(14),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(13) => SRAM_MEM0_D(13),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(12) => SRAM_MEM0_D(12),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(11) => SRAM_MEM0_D(11),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(10) => SRAM_MEM0_D(10),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(9)  => SRAM_MEM0_D(9),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(8)  => SRAM_MEM0_D(8),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(7)  => SRAM_MEM0_D(7),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(6)  => SRAM_MEM0_D(6),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(5)  => SRAM_MEM0_D(5),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(4)  => SRAM_MEM0_D(4),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(3)  => SRAM_MEM0_D(3),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(2)  => SRAM_MEM0_D(2),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(1)  => SRAM_MEM0_D(1),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_D(0)  => SRAM_MEM0_D(0),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_D[15..0]
        SRAM0_LB    => PinSignal_SRAM_SRAM0_LB,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_LB
        SRAM0_OE    => PinSignal_SRAM_SRAM0_OE,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_OE
        SRAM0_UB    => PinSignal_SRAM_SRAM0_UB,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_UB
        SRAM0_WE    => PinSignal_SRAM_SRAM0_WE,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM0_WE
        SRAM1_A     => PinSignal_SRAM_SRAM1_A,               -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_A[17..0]
        SRAM1_CE    => PinSignal_SRAM_SRAM1_CE,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_CE
        SRAM1_D(15) => SRAM_MEM1_D(15),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(14) => SRAM_MEM1_D(14),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(13) => SRAM_MEM1_D(13),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(12) => SRAM_MEM1_D(12),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(11) => SRAM_MEM1_D(11),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(10) => SRAM_MEM1_D(10),                      -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(9)  => SRAM_MEM1_D(9),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(8)  => SRAM_MEM1_D(8),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(7)  => SRAM_MEM1_D(7),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(6)  => SRAM_MEM1_D(6),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(5)  => SRAM_MEM1_D(5),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(4)  => SRAM_MEM1_D(4),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(3)  => SRAM_MEM1_D(3),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(2)  => SRAM_MEM1_D(2),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(1)  => SRAM_MEM1_D(1),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_D(0)  => SRAM_MEM1_D(0),                       -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_D[15..0]
        SRAM1_LB    => PinSignal_SRAM_SRAM1_LB,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_LB
        SRAM1_OE    => PinSignal_SRAM_SRAM1_OE,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_OE
        SRAM1_UB    => PinSignal_SRAM_SRAM1_UB,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_UB
        SRAM1_WE    => PinSignal_SRAM_SRAM1_WE,              -- ObjectKind=Pin|PrimaryId=SRAM-SRAM1_WE
        STB_I       => NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_STB, -- ObjectKind=Pin|PrimaryId=SRAM-STB_I
        WE_I        => NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_WE -- ObjectKind=Pin|PrimaryId=SRAM-WE_I
      );

    spi : Configurable_spi                                   -- ObjectKind=Part|PrimaryId=spi|SecondaryId=1
      Port Map
      (
        ACK_O    => PinSignal_spi_ACK_O,                     -- ObjectKind=Pin|PrimaryId=spi-ACK_O
        ADR_I    => NamedSignal_WB_INTERCON_1_M5_S0_SPI_ADR, -- ObjectKind=Pin|PrimaryId=spi-ADR_I[2..0]
        CLK_I    => NamedSignal_CLK_I,                       -- ObjectKind=Pin|PrimaryId=spi-CLK_I
        CYC_I    => NamedSignal_WB_INTERCON_1_M5_S0_SPI_CYC, -- ObjectKind=Pin|PrimaryId=spi-CYC_I
        DAT_I    => NamedSignal_WB_INTERCON_1_M5_S0_SPI_DATIO, -- ObjectKind=Pin|PrimaryId=spi-DAT_I[31..0]
        DAT_O    => PinSignal_spi_DAT_O,                     -- ObjectKind=Pin|PrimaryId=spi-DAT_O[31..0]
        RST_I    => NamedSignal_RST_I,                       -- ObjectKind=Pin|PrimaryId=spi-RST_I
        SPI_CLK  => PinSignal_spi_SPI_CLK,                   -- ObjectKind=Pin|PrimaryId=spi-SPI_CLK
        SPI_CS   => PinSignal_spi_SPI_CS,                    -- ObjectKind=Pin|PrimaryId=spi-SPI_CS
        SPI_DIN  => spi_SPI_DIN,                             -- ObjectKind=Pin|PrimaryId=spi-SPI_DIN
        SPI_DOUT => PinSignal_spi_SPI_DOUT,                  -- ObjectKind=Pin|PrimaryId=spi-SPI_DOUT
        STB_I    => NamedSignal_WB_INTERCON_1_M5_S0_SPI_STB, -- ObjectKind=Pin|PrimaryId=spi-STB_I
        WE_I     => NamedSignal_WB_INTERCON_1_M5_S0_SPI_WE   -- ObjectKind=Pin|PrimaryId=spi-WE_I
      );

    led : Configurable_led                                   -- ObjectKind=Part|PrimaryId=led|SecondaryId=1
      Port Map
      (
        ACK_O => PinSignal_led_ACK_O,                        -- ObjectKind=Pin|PrimaryId=led-ACK_O
        ADR_I => NamedSignal_WB_INTERCON_1_M4_S0_LED_ADR,    -- ObjectKind=Pin|PrimaryId=led-ADR_I[4..0]
        CLK_I => NamedSignal_CLK_I,                          -- ObjectKind=Pin|PrimaryId=led-CLK_I
        CYC_I => NamedSignal_WB_INTERCON_1_M4_S0_LED_CYC,    -- ObjectKind=Pin|PrimaryId=led-CYC_I
        DAT_I => NamedSignal_WB_INTERCON_1_M4_S0_LED_DATIO,  -- ObjectKind=Pin|PrimaryId=led-DAT_I[7..0]
        DAT_O => PinSignal_led_DAT_O,                        -- ObjectKind=Pin|PrimaryId=led-DAT_O[7..0]
        LED_B => PinSignal_led_LED_B,                        -- ObjectKind=Pin|PrimaryId=led-LED_B[7..0]
        LED_G => PinSignal_led_LED_G,                        -- ObjectKind=Pin|PrimaryId=led-LED_G[7..0]
        LED_R => PinSignal_led_LED_R,                        -- ObjectKind=Pin|PrimaryId=led-LED_R[7..0]
        RST_I => NamedSignal_RST_I,                          -- ObjectKind=Pin|PrimaryId=led-RST_I
        STB_I => NamedSignal_WB_INTERCON_1_M4_S0_LED_STB,    -- ObjectKind=Pin|PrimaryId=led-STB_I
        WE_I  => NamedSignal_WB_INTERCON_1_M4_S0_LED_WE      -- ObjectKind=Pin|PrimaryId=led-WE_I
      );

    dip : Configurable_dip                                   -- ObjectKind=Part|PrimaryId=dip|SecondaryId=1
      Port Map
      (
        ACK_O => PinSignal_dip_ACK_O,                        -- ObjectKind=Pin|PrimaryId=dip-ACK_O
        CLK_I => NamedSignal_CLK_I,                          -- ObjectKind=Pin|PrimaryId=dip-CLK_I
        CYC_I => NamedSignal_WB_INTERCON_1_M0_S0_DIP_CYC,    -- ObjectKind=Pin|PrimaryId=dip-CYC_I
        DAT_I => NamedSignal_WB_INTERCON_1_M0_S0_DIP_DATIO,  -- ObjectKind=Pin|PrimaryId=dip-DAT_I[7..0]
        DAT_O => PinSignal_dip_DAT_O,                        -- ObjectKind=Pin|PrimaryId=dip-DAT_O[7..0]
        PAI   => dip_PAI,                                    -- ObjectKind=Pin|PrimaryId=dip-PAI[7..0]
        PAO   => PinSignal_dip_PAO,                          -- ObjectKind=Pin|PrimaryId=dip-PAO[7..0]
        RST_I => NamedSignal_RST_I,                          -- ObjectKind=Pin|PrimaryId=dip-RST_I
        STB_I => NamedSignal_WB_INTERCON_1_M0_S0_DIP_STB,    -- ObjectKind=Pin|PrimaryId=dip-STB_I
        WE_I  => NamedSignal_WB_INTERCON_1_M0_S0_DIP_WE      -- ObjectKind=Pin|PrimaryId=dip-WE_I
      );

    -- Signal Assignments
    ---------------------
    dip_PAO                                                <= PinSignal_dip_PAO; -- ObjectKind=Net|PrimaryId=dip.PAO[7..0]
    led_LED_B                                              <= PinSignal_led_LED_B; -- ObjectKind=Net|PrimaryId=led_LED_B[7..0]
    led_LED_G                                              <= PinSignal_led_LED_G; -- ObjectKind=Net|PrimaryId=led_LED_G[7..0]
    led_LED_R                                              <= PinSignal_led_LED_R; -- ObjectKind=Net|PrimaryId=led_LED_R[7..0]
    NamedSignal_CLK_I                                      <= CLK_I; -- ObjectKind=Net|PrimaryId=CLK_I
    NamedSignal_GND1_BUS                                   <= "00000000000000000000000000000000"; -- ObjectKind=Net|PrimaryId=GND1_BUS[31..0]
    NamedSignal_GND2_BUS                                   <= "0000"; -- ObjectKind=Net|PrimaryId=GND2_BUS[3..0]
    NamedSignal_GND3_BUS                                   <= "00000000000000000000000000000000"; -- ObjectKind=Net|PrimaryId=GND3_BUS[31..0]
    NamedSignal_GND4_BUS                                   <= "0000"; -- ObjectKind=Net|PrimaryId=GND4_BUS[3..0]
    NamedSignal_GND5_BUS                                   <= "0000"; -- ObjectKind=Net|PrimaryId=GND5_BUS[3..0]
    NamedSignal_GND6_BUS                                   <= "0000"; -- ObjectKind=Net|PrimaryId=GND6_BUS[3..0]
    NamedSignal_GND7_BUS                                   <= "0000"; -- ObjectKind=Net|PrimaryId=GND7_BUS[3..0]
    NamedSignal_GND8_BUS                                   <= "0000"; -- ObjectKind=Net|PrimaryId=GND8_BUS[3..0]
    NamedSignal_INTERRUPT_TSK3000A_1_INT_I(15 downto 0)    <= PinSignal_TSK3000A_1_LO_O; -- ObjectKind=Net|PrimaryId=INTERRUPT_TSK3000A_1_INT_I[15..0]
    NamedSignal_INTERRUPT_TSK3000A_1_INT_I(31 downto 16)   <= PinSignal_TSK3000A_1_HI_O; -- ObjectKind=Net|PrimaryId=INTERRUPT_TSK3000A_1_INT_I[31..0]
    NamedSignal_RST_I                                      <= RST_I; -- ObjectKind=Net|PrimaryId=RST_I
    NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_ACK             <= PinSignal_WB_MULTIMASTER_1_s1_ACK_O; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_ACK
    NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_ADR             <= PinSignal_TFT_me_ADR_O; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_ADR[31..0]
    NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_CYC             <= PinSignal_TFT_me_CYC_O; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_CYC
    NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_DATIO           <= NamedSignal_GND3_BUS; -- ObjectKind=Net|PrimaryId=GND3_BUS[31..0]
    NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_DATOI           <= PinSignal_WB_MULTIMASTER_1_s1_DAT_O; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_DATOI[31..0]
    NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_SEL             <= PinSignal_TFT_me_SEL_O; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_SEL[3..0]
    NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_STB             <= PinSignal_TFT_me_STB_O; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_STB
    NamedSignal_TFT_M0_S1_WB_MULTIMASTER_1_WE              <= PinSignal_TFT_me_WE_O; -- ObjectKind=Net|PrimaryId=TFT_M0_S1_WB_MULTIMASTER_1_WE
    NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_ACK         <= PinSignal_WB_INTERCON_1_m0_ACK_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_ACK
    NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_ADR         <= PinSignal_TSK3000A_1_IO_ADR_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_ADR[23..0]
    NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_CYC         <= PinSignal_TSK3000A_1_IO_CYC_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_CYC
    NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_DATIO       <= PinSignal_TSK3000A_1_IO_DAT_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_DATIO[31..0]
    NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_DATOI       <= PinSignal_WB_INTERCON_1_m0_DAT_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_DATOI[31..0]
    NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_SEL         <= PinSignal_TSK3000A_1_IO_SEL_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_SEL[3..0]
    NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_STB         <= PinSignal_TSK3000A_1_IO_STB_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_STB
    NamedSignal_TSK3000A_1_M0_S0_WB_INTERCON_1_WE          <= PinSignal_TSK3000A_1_IO_WE_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M0_S0_WB_INTERCON_1_WE
    NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_ACK         <= PinSignal_WB_INTERCON_2_m0_ACK_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_ACK
    NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_ADR         <= PinSignal_TSK3000A_1_ME_ADR_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_ADR[31..0]
    NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_CYC         <= PinSignal_TSK3000A_1_ME_CYC_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_CYC
    NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_DATIO       <= PinSignal_TSK3000A_1_ME_DAT_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_DATIO[31..0]
    NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_DATOI       <= PinSignal_WB_INTERCON_2_m0_DAT_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_DATOI[31..0]
    NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_SEL         <= PinSignal_TSK3000A_1_ME_SEL_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_SEL[3..0]
    NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_STB         <= PinSignal_TSK3000A_1_ME_STB_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_STB
    NamedSignal_TSK3000A_1_M1_S0_WB_INTERCON_2_WE          <= PinSignal_TSK3000A_1_ME_WE_O; -- ObjectKind=Net|PrimaryId=TSK3000A_1_M1_S0_WB_INTERCON_2_WE
    NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_ACK             <= PinSignal_WB_MULTIMASTER_1_s2_ACK_O; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_ACK
    NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_ADR             <= PinSignal_VGA_WBM_ADR_O; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_ADR[31..0]
    NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_CYC             <= PinSignal_VGA_WBM_CYC_O; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_CYC
    NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_DATIO           <= NamedSignal_GND1_BUS; -- ObjectKind=Net|PrimaryId=GND1_BUS[31..0]
    NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_DATOI           <= PinSignal_WB_MULTIMASTER_1_s2_DAT_O; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_DATOI[31..0]
    NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_SEL             <= PinSignal_VGA_WBM_SEL_O; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_SEL[3..0]
    NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_STB             <= PinSignal_VGA_WBM_STB_O; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_STB
    NamedSignal_VGA_M0_S2_WB_MULTIMASTER_1_WE              <= PinSignal_VGA_WBM_WE_O; -- ObjectKind=Net|PrimaryId=VGA_M0_S2_WB_MULTIMASTER_1_WE
    NamedSignal_WB_INTERCON_1_M0_S0_DIP_ACK                <= PinSignal_dip_ACK_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_ACK
    NamedSignal_WB_INTERCON_1_M0_S0_DIP_CYC                <= PinSignal_WB_INTERCON_1_s0_CYC_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_CYC
    NamedSignal_WB_INTERCON_1_M0_S0_DIP_DATIO              <= PinSignal_WB_INTERCON_1_s0_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_DATIO[7..0]
    NamedSignal_WB_INTERCON_1_M0_S0_DIP_DATOI              <= PinSignal_dip_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_DATOI[7..0]
    NamedSignal_WB_INTERCON_1_M0_S0_DIP_STB                <= PinSignal_WB_INTERCON_1_s0_STB_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_STB
    NamedSignal_WB_INTERCON_1_M0_S0_DIP_WE                 <= PinSignal_WB_INTERCON_1_s0_WE_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M0_S0_DIP_WE
    NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_ACK              <= PinSignal_touch_ACK_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_ACK
    NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_CYC              <= PinSignal_WB_INTERCON_1_s1_CYC_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_CYC
    NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_DATOI            <= PinSignal_touch_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_DATOI[7..0]
    NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_STB              <= PinSignal_WB_INTERCON_1_s1_STB_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_STB
    NamedSignal_WB_INTERCON_1_M1_S0_TOUCH_WE               <= PinSignal_WB_INTERCON_1_s1_WE_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M1_S0_TOUCH_WE
    NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_ACK         <= PinSignal_TERMINAL_1_ACK_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_ACK
    NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_ADR         <= PinSignal_WB_INTERCON_1_s2_ADR_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_ADR[3..0]
    NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_CYC         <= PinSignal_WB_INTERCON_1_s2_CYC_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_CYC
    NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_DATIO       <= PinSignal_WB_INTERCON_1_s2_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_DATIO[7..0]
    NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_DATOI       <= PinSignal_TERMINAL_1_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_DATOI[7..0]
    NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_STB         <= PinSignal_WB_INTERCON_1_s2_STB_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_STB
    NamedSignal_WB_INTERCON_1_M2_S0_TERMINAL_1_WE          <= PinSignal_WB_INTERCON_1_s2_WE_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M2_S0_TERMINAL_1_WE
    NamedSignal_WB_INTERCON_1_M3_S1_TFT_ACK                <= PinSignal_TFT_io_ACK_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_ACK
    NamedSignal_WB_INTERCON_1_M3_S1_TFT_ADR                <= PinSignal_WB_INTERCON_1_s3_ADR_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_ADR[8..0]
    NamedSignal_WB_INTERCON_1_M3_S1_TFT_CYC                <= PinSignal_WB_INTERCON_1_s3_CYC_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_CYC
    NamedSignal_WB_INTERCON_1_M3_S1_TFT_DATIO              <= PinSignal_WB_INTERCON_1_s3_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_DATIO[31..0]
    NamedSignal_WB_INTERCON_1_M3_S1_TFT_DATOI              <= PinSignal_TFT_io_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_DATOI[31..0]
    NamedSignal_WB_INTERCON_1_M3_S1_TFT_STB                <= PinSignal_WB_INTERCON_1_s3_STB_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_STB
    NamedSignal_WB_INTERCON_1_M3_S1_TFT_WE                 <= PinSignal_WB_INTERCON_1_s3_WE_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M3_S1_TFT_WE
    NamedSignal_WB_INTERCON_1_M4_S0_LED_ACK                <= PinSignal_led_ACK_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_ACK
    NamedSignal_WB_INTERCON_1_M4_S0_LED_ADR                <= PinSignal_WB_INTERCON_1_s4_ADR_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_ADR[4..0]
    NamedSignal_WB_INTERCON_1_M4_S0_LED_CYC                <= PinSignal_WB_INTERCON_1_s4_CYC_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_CYC
    NamedSignal_WB_INTERCON_1_M4_S0_LED_DATIO              <= PinSignal_WB_INTERCON_1_s4_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_DATIO[7..0]
    NamedSignal_WB_INTERCON_1_M4_S0_LED_DATOI              <= PinSignal_led_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_DATOI[7..0]
    NamedSignal_WB_INTERCON_1_M4_S0_LED_STB                <= PinSignal_WB_INTERCON_1_s4_STB_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_STB
    NamedSignal_WB_INTERCON_1_M4_S0_LED_WE                 <= PinSignal_WB_INTERCON_1_s4_WE_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M4_S0_LED_WE
    NamedSignal_WB_INTERCON_1_M5_S0_SPI_ACK                <= PinSignal_spi_ACK_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_ACK
    NamedSignal_WB_INTERCON_1_M5_S0_SPI_ADR                <= PinSignal_WB_INTERCON_1_s5_ADR_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_ADR[2..0]
    NamedSignal_WB_INTERCON_1_M5_S0_SPI_CYC                <= PinSignal_WB_INTERCON_1_s5_CYC_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_CYC
    NamedSignal_WB_INTERCON_1_M5_S0_SPI_DATIO              <= PinSignal_WB_INTERCON_1_s5_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_DATIO[31..0]
    NamedSignal_WB_INTERCON_1_M5_S0_SPI_DATOI              <= PinSignal_spi_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_DATOI[31..0]
    NamedSignal_WB_INTERCON_1_M5_S0_SPI_STB                <= PinSignal_WB_INTERCON_1_s5_STB_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_STB
    NamedSignal_WB_INTERCON_1_M5_S0_SPI_WE                 <= PinSignal_WB_INTERCON_1_s5_WE_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M5_S0_SPI_WE
    NamedSignal_WB_INTERCON_1_M6_S1_VGA_ACK                <= PinSignal_VGA_WBS_ACK_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_ACK
    NamedSignal_WB_INTERCON_1_M6_S1_VGA_ADR                <= PinSignal_WB_INTERCON_1_s6_ADR_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_ADR[11..0]
    NamedSignal_WB_INTERCON_1_M6_S1_VGA_CYC                <= PinSignal_WB_INTERCON_1_s6_CYC_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_CYC
    NamedSignal_WB_INTERCON_1_M6_S1_VGA_DATIO              <= PinSignal_WB_INTERCON_1_s6_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_DATIO[31..0]
    NamedSignal_WB_INTERCON_1_M6_S1_VGA_DATOI              <= PinSignal_VGA_WBS_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_DATOI[31..0]
    NamedSignal_WB_INTERCON_1_M6_S1_VGA_SEL                <= PinSignal_WB_INTERCON_1_s6_SEL_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_SEL[3..0]
    NamedSignal_WB_INTERCON_1_M6_S1_VGA_STB                <= PinSignal_WB_INTERCON_1_s6_STB_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_STB
    NamedSignal_WB_INTERCON_1_M6_S1_VGA_WE                 <= PinSignal_WB_INTERCON_1_s6_WE_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_1_M6_S1_VGA_WE
    NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ACK   <= PinSignal_WB_MULTIMASTER_1_s0_ACK_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ACK
    NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ADR   <= PinSignal_WB_INTERCON_2_s0_ADR_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_ADR[19..0]
    NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_CYC   <= PinSignal_WB_INTERCON_2_s0_CYC_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_CYC
    NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATIO <= PinSignal_WB_INTERCON_2_s0_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATIO[31..0]
    NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATOI <= PinSignal_WB_MULTIMASTER_1_s0_DAT_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_DATOI[31..0]
    NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_SEL   <= PinSignal_WB_INTERCON_2_s0_SEL_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_SEL[3..0]
    NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_STB   <= PinSignal_WB_INTERCON_2_s0_STB_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_STB
    NamedSignal_WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_WE    <= PinSignal_WB_INTERCON_2_s0_WE_O; -- ObjectKind=Net|PrimaryId=WB_INTERCON_2_M0_S0_WB_MULTIMASTER_1_WE
    NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_ACK            <= PinSignal_SRAM_ACK_O; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_ACK
    NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_ADR            <= PinSignal_WB_MULTIMASTER_1_m0_ADR_O; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_ADR[19..0]
    NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_CYC            <= PinSignal_WB_MULTIMASTER_1_m0_CYC_O; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_CYC
    NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_DATIO          <= PinSignal_WB_MULTIMASTER_1_m0_DAT_O; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_DATIO[31..0]
    NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_DATOI          <= PinSignal_SRAM_DAT_O; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_DATOI[31..0]
    NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_SEL            <= PinSignal_WB_MULTIMASTER_1_m0_SEL_O; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_SEL[3..0]
    NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_STB            <= PinSignal_WB_MULTIMASTER_1_m0_STB_O; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_STB
    NamedSignal_WB_MULTIMASTER_1_M0_S0_SRAM_WE             <= PinSignal_WB_MULTIMASTER_1_m0_WE_O; -- ObjectKind=Net|PrimaryId=WB_MULTIMASTER_1_M0_S0_SRAM_WE
    PowerSignal_GND                                        <= '0'; -- ObjectKind=Net|PrimaryId=GND
    spi_SPI_CLK                                            <= PinSignal_spi_SPI_CLK; -- ObjectKind=Net|PrimaryId=spi.SPI_CLK
    spi_SPI_CS                                             <= PinSignal_spi_SPI_CS; -- ObjectKind=Net|PrimaryId=spi.SPI_CS
    spi_SPI_DOUT                                           <= PinSignal_spi_SPI_DOUT; -- ObjectKind=Net|PrimaryId=spi.SPI_DOUT
    SRAM_MEM0_A                                            <= PinSignal_SRAM_SRAM0_A; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.A[17..0]
    SRAM_MEM0_CE                                           <= PinSignal_SRAM_SRAM0_CE; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.CE
    SRAM_MEM0_LB                                           <= PinSignal_SRAM_SRAM0_LB; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.LB
    SRAM_MEM0_OE                                           <= PinSignal_SRAM_SRAM0_OE; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.OE
    SRAM_MEM0_UB                                           <= PinSignal_SRAM_SRAM0_UB; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.UB
    SRAM_MEM0_WE                                           <= PinSignal_SRAM_SRAM0_WE; -- ObjectKind=Net|PrimaryId=SRAM_MEM0.WE
    SRAM_MEM1_A                                            <= PinSignal_SRAM_SRAM1_A; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.A[17..0]
    SRAM_MEM1_CE                                           <= PinSignal_SRAM_SRAM1_CE; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.CE
    SRAM_MEM1_LB                                           <= PinSignal_SRAM_SRAM1_LB; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.LB
    SRAM_MEM1_OE                                           <= PinSignal_SRAM_SRAM1_OE; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.OE
    SRAM_MEM1_UB                                           <= PinSignal_SRAM_SRAM1_UB; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.UB
    SRAM_MEM1_WE                                           <= PinSignal_SRAM_SRAM1_WE; -- ObjectKind=Net|PrimaryId=SRAM_MEM1.WE
    TFT_BUF_O                                              <= PinSignal_TFT_DB_O; -- ObjectKind=Net|PrimaryId=TFT.BUF_O[15..0]
    TFT_BUF_TRI                                            <= PinSignal_TFT_DB_TRI; -- ObjectKind=Net|PrimaryId=TFT.BUF_TRI
    TFT_nCS                                                <= PinSignal_TFT_nCS; -- ObjectKind=Net|PrimaryId=TFT.nCS
    TFT_nRD                                                <= PinSignal_TFT_nRD; -- ObjectKind=Net|PrimaryId=TFT.nRD
    TFT_nRESET                                             <= PinSignal_TFT_nRESET; -- ObjectKind=Net|PrimaryId=TFT.nRESET
    TFT_nWR                                                <= PinSignal_TFT_nWR; -- ObjectKind=Net|PrimaryId=TFT.nWR
    TFT_RS                                                 <= PinSignal_TFT_RS; -- ObjectKind=Net|PrimaryId=TFT.RS
    VGA_B                                                  <= PinSignal_VGA_B; -- ObjectKind=Net|PrimaryId=VGA.B[4..0]
    VGA_BLANK                                              <= PinSignal_VGA_BLANK; -- ObjectKind=Net|PrimaryId=VGA.BLANK
    VGA_CSYNC                                              <= PinSignal_VGA_CSYNC; -- ObjectKind=Net|PrimaryId=VGA.CSYNC
    VGA_G                                                  <= PinSignal_VGA_G; -- ObjectKind=Net|PrimaryId=VGA.G[5..0]
    VGA_HSYNC                                              <= PinSignal_VGA_HSYNC; -- ObjectKind=Net|PrimaryId=VGA.HSYNC
    VGA_R                                                  <= PinSignal_VGA_R; -- ObjectKind=Net|PrimaryId=VGA.R[4..0]
    VGA_VSYNC                                              <= PinSignal_VGA_VSYNC; -- ObjectKind=Net|PrimaryId=VGA.VSYNC

End Structure;
------------------------------------------------------------

