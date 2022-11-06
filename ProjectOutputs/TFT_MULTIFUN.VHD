------------------------------------------------------------
-- VHDL TFT_MULTIFUN
-- 2016 3 2 17 37 39
-- Created By "DXP VHDL Generator"
-- "Copyright (c) 2002-2014 Altium Limited"
-- Product Version: 15.1.15.50867
------------------------------------------------------------

------------------------------------------------------------
-- VHDL TFT_MULTIFUN
------------------------------------------------------------

Library IEEE;
Use     IEEE.std_logic_1164.all;

--synthesis translate_off
Library GENERIC_LIB;
Use     GENERIC_LIB.all;

--synthesis translate_on
Entity TFT_MULTIFUN Is
  port
  (
    CLK_BRD       : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=CLK_BRD
    LED_B         : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=LED_B[7..0]
    LED_G         : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=LED_G[7..0]
    LED_R         : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=LED_R[7..0]
    SRAM0_A       : Out   STD_LOGIC_VECTOR(17 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=SRAM0_A[17..0]
    SRAM0_D       : InOut STD_LOGIC_VECTOR(15 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=SRAM0_D[15..0]
    SRAM0_E       : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM0_E
    SRAM0_LB      : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM0_LB
    SRAM0_OE      : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM0_OE
    SRAM0_UB      : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM0_UB
    SRAM0_W       : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM0_W
    SRAM1_A       : Out   STD_LOGIC_VECTOR(17 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=SRAM1_A[17..0]
    SRAM1_D       : InOut STD_LOGIC_VECTOR(15 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=SRAM1_D[15..0]
    SRAM1_E       : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM1_E
    SRAM1_LB      : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM1_LB
    SRAM1_OE      : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM1_OE
    SRAM1_UB      : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM1_UB
    SRAM1_W       : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=SRAM1_W
    SW_USER       : In    STD_LOGIC_VECTOR(4 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=SW_USER[4..0]
    TEST_BUTTON   : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TEST_BUTTON
    TFT_BLIGHT    : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_BLIGHT
    TFT_CS        : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_CS
    TFT_DB        : InOut STD_LOGIC_VECTOR(15 DOWNTO 0);     -- ObjectKind=Port|PrimaryId=TFT_DB[15..0]
    TFT_RD        : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_RD
    TFT_RESET     : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_RESET
    TFT_RS        : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_RS
    TFT_TSC_BUSY  : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_TSC_BUSY
    TFT_TSC_CLK   : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_TSC_CLK
    TFT_TSC_CS_N  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_TSC_CS_N
    TFT_TSC_DIN   : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_TSC_DIN
    TFT_TSC_DOUT  : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_TSC_DOUT
    TFT_TSC_IRQ_N : In    STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_TSC_IRQ_N
    TFT_WR        : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=TFT_WR
    VGA_BLUE      : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=VGA_BLUE[7..0]
    VGA_CLK       : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=VGA_CLK
    VGA_GREEN     : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=VGA_GREEN[7..0]
    VGA_HSYNC     : Out   STD_LOGIC;                         -- ObjectKind=Port|PrimaryId=VGA_HSYNC
    VGA_RED       : Out   STD_LOGIC_VECTOR(7 DOWNTO 0);      -- ObjectKind=Port|PrimaryId=VGA_RED[7..0]
    VGA_VSYNC     : Out   STD_LOGIC                          -- ObjectKind=Port|PrimaryId=VGA_VSYNC
  );
  attribute MacroCell : boolean;

End TFT_MULTIFUN;
------------------------------------------------------------

------------------------------------------------------------
Architecture Structure Of TFT_MULTIFUN Is
   Component Configurable_U2                                 -- ObjectKind=Part|PrimaryId=U2|SecondaryId=1
      port
      (
        I  : in  STD_LOGIC_VECTOR(4 downto 0);               -- ObjectKind=Pin|PrimaryId=U2-I[4..0]
        O0 : out STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U2-O0
        O1 : out STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U2-O1
        O2 : out STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U2-O2
        O3 : out STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U2-O3
        O4 : out STD_LOGIC                                   -- ObjectKind=Pin|PrimaryId=U2-O4
      );
   End Component;

   Component Configurable_U3                                 -- ObjectKind=Part|PrimaryId=U3|SecondaryId=1
      port
      (
        I0 : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U3-I0
        I1 : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U3-I1
        I2 : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U3-I2
        I3 : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U3-I3
        I4 : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U3-I4
        I5 : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U3-I5
        I6 : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U3-I6
        I7 : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U3-I7
        O  : out STD_LOGIC_VECTOR(7 downto 0)                -- ObjectKind=Pin|PrimaryId=U3-O[7..0]
      );
   End Component;

   Component INV                                             -- ObjectKind=Part|PrimaryId=U4|SecondaryId=1
      port
      (
        I : in  STD_LOGIC;                                   -- ObjectKind=Pin|PrimaryId=U4-I
        O : out STD_LOGIC                                    -- ObjectKind=Pin|PrimaryId=U4-O
      );
   End Component;

   Component IOBUF16B                                        -- ObjectKind=Part|PrimaryId=U1|SecondaryId=1
      port
      (
        I  : in    STD_LOGIC_VECTOR(15 downto 0);            -- ObjectKind=Pin|PrimaryId=U1-I[15..0]
        IO : inout STD_LOGIC_VECTOR(15 downto 0);            -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        O  : out   STD_LOGIC_VECTOR(15 downto 0);            -- ObjectKind=Pin|PrimaryId=U1-O[15..0]
        T  : in    STD_LOGIC                                 -- ObjectKind=Pin|PrimaryId=U1-T
      );
   End Component;

   Component TFT_TOUCH                                       -- ObjectKind=Sheet Symbol|PrimaryId=U_TFT_TOUCH
      port
      (
        CLK_I         : in    STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-CLK_I
        DIP_PAI       : in    STD_LOGIC_VECTOR(7 downto 0);  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-DIP.PAI[7..0]
        DIP_PAO       : out   STD_LOGIC_VECTOR(7 downto 0);  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-DIP.PAO[7..0]
        LED_LED_B     : out   STD_LOGIC_VECTOR(7 downto 0);  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-LED_LED_B[7..0]
        LED_LED_G     : out   STD_LOGIC_VECTOR(7 downto 0);  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-LED_LED_G[7..0]
        LED_LED_R     : out   STD_LOGIC_VECTOR(7 downto 0);  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-LED_LED_R[7..0]
        RST_I         : in    STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-RST_I
        SPI_SPI_CLK   : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SPI.SPI_CLK
        SPI_SPI_CS    : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SPI.SPI_CS
        SPI_SPI_DIN   : in    STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SPI.SPI_DIN
        SPI_SPI_DOUT  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SPI.SPI_DOUT
        SRAM_MEM0_A   : out   STD_LOGIC_VECTOR(17 downto 0); -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.A[17..0]
        SRAM_MEM0_CE  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.CE
        SRAM_MEM0_D   : inout STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_LB  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.LB
        SRAM_MEM0_OE  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.OE
        SRAM_MEM0_UB  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.UB
        SRAM_MEM0_WE  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.WE
        SRAM_MEM1_A   : out   STD_LOGIC_VECTOR(17 downto 0); -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.A[17..0]
        SRAM_MEM1_CE  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.CE
        SRAM_MEM1_D   : inout STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_LB  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.LB
        SRAM_MEM1_OE  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.OE
        SRAM_MEM1_UB  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.UB
        SRAM_MEM1_WE  : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.WE
        TFT_BUF_I     : in    STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.BUF_I[15..0]
        TFT_BUF_O     : out   STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.BUF_O[15..0]
        TFT_BUF_TRI   : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.BUF_TRI
        TFT_NCS       : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.NCS
        TFT_NRD       : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.NRD
        TFT_NRESET    : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.NRESET
        TFT_NWR       : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.NWR
        TFT_RS        : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.RS
        TOUCH_PENDOWN : in    STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TOUCH_PENDOWN
        VGA_B         : out   STD_LOGIC_VECTOR(4 downto 0);  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.B[4..0]
        VGA_BLANK     : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.BLANK
        VGA_CSYNC     : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.CSYNC
        VGA_G         : out   STD_LOGIC_VECTOR(5 downto 0);  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.G[5..0]
        VGA_HSYNC     : out   STD_LOGIC;                     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.HSYNC
        VGA_R         : out   STD_LOGIC_VECTOR(4 downto 0);  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.R[4..0]
        VGA_VSYNC     : out   STD_LOGIC                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.VSYNC
      );
   End Component;


    Signal NamedSignal_B                      : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=B[2..0]
    Signal NamedSignal_CLK                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=CLK
    Signal NamedSignal_G                      : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=G[1..0]
    Signal NamedSignal_GND1_BUS               : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=B[2..0]
    Signal NamedSignal_GND2_BUS               : STD_LOGIC_VECTOR(1 downto 0); -- ObjectKind=Net|PrimaryId=G[1..0]
    Signal NamedSignal_R                      : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=B[2..0]
    Signal PinSignal_U_TFT_TOUCH_LED_LED_B    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=LED_B[7..0]
    Signal PinSignal_U_TFT_TOUCH_LED_LED_G    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=LED_G[7..0]
    Signal PinSignal_U_TFT_TOUCH_LED_LED_R    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=LED_R[7..0]
    Signal PinSignal_U_TFT_TOUCH_SPI_SPI_CLK  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_TSC_CLK
    Signal PinSignal_U_TFT_TOUCH_SPI_SPI_CS   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_TSC_CS_N
    Signal PinSignal_U_TFT_TOUCH_SPI_SPI_DOUT : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_TSC_DOUT
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM0_A  : STD_LOGIC_VECTOR(17 downto 0); -- ObjectKind=Net|PrimaryId=SRAM0_A[17..0]
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM0_CE : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM0_E
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM0_LB : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM0_LB
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM0_OE : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM0_OE
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM0_UB : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM0_UB
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM0_WE : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM0_W
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM1_A  : STD_LOGIC_VECTOR(17 downto 0); -- ObjectKind=Net|PrimaryId=SRAM1_A[17..0]
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM1_CE : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM1_E
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM1_LB : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM1_LB
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM1_OE : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM1_OE
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM1_UB : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM1_UB
    Signal PinSignal_U_TFT_TOUCH_SRAM_MEM1_WE : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SRAM1_W
    Signal PinSignal_U_TFT_TOUCH_TFT_BUF_O    : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=NetU1_I[15..0]
    Signal PinSignal_U_TFT_TOUCH_TFT_BUF_TRI  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU1_T
    Signal PinSignal_U_TFT_TOUCH_TFT_NCS      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_CS
    Signal PinSignal_U_TFT_TOUCH_TFT_NRD      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_RD
    Signal PinSignal_U_TFT_TOUCH_TFT_NRESET   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_RESET
    Signal PinSignal_U_TFT_TOUCH_TFT_NWR      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_WR
    Signal PinSignal_U_TFT_TOUCH_TFT_RS       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=TFT_RS
    Signal PinSignal_U_TFT_TOUCH_VGA_B        : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=B[7..0]
    Signal PinSignal_U_TFT_TOUCH_VGA_G        : STD_LOGIC_VECTOR(5 downto 0); -- ObjectKind=Net|PrimaryId=G[7..0]
    Signal PinSignal_U_TFT_TOUCH_VGA_HSYNC    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_HSYNC
    Signal PinSignal_U_TFT_TOUCH_VGA_R        : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=R[7..0]
    Signal PinSignal_U_TFT_TOUCH_VGA_VSYNC    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VGA_VSYNC
    Signal PinSignal_U1_O                     : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=NetU1_O[15..0]
    Signal PinSignal_U2_O0                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_O0
    Signal PinSignal_U2_O1                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_O1
    Signal PinSignal_U2_O2                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_O2
    Signal PinSignal_U2_O3                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_O3
    Signal PinSignal_U2_O4                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_O4
    Signal PinSignal_U3_O                     : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU3_O[7..0]
    Signal PinSignal_U4_O                     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU4_O
    Signal PowerSignal_GND                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=GND
    Signal PowerSignal_VCC                    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VCC

Begin
    U_TFT_TOUCH : TFT_TOUCH                                  -- ObjectKind=Sheet Symbol|PrimaryId=U_TFT_TOUCH
      Port Map
      (
        CLK_I           => CLK_BRD,                          -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-CLK_I
        DIP_PAI         => PinSignal_U3_O,                   -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-DIP.PAI[7..0]
        LED_LED_B       => PinSignal_U_TFT_TOUCH_LED_LED_B,  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-LED_LED_B[7..0]
        LED_LED_G       => PinSignal_U_TFT_TOUCH_LED_LED_G,  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-LED_LED_G[7..0]
        LED_LED_R       => PinSignal_U_TFT_TOUCH_LED_LED_R,  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-LED_LED_R[7..0]
        RST_I           => PinSignal_U4_O,                   -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-RST_I
        SPI_SPI_CLK     => PinSignal_U_TFT_TOUCH_SPI_SPI_CLK, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SPI.SPI_CLK
        SPI_SPI_CS      => PinSignal_U_TFT_TOUCH_SPI_SPI_CS, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SPI.SPI_CS
        SPI_SPI_DIN     => TFT_TSC_DIN,                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SPI.SPI_DIN
        SPI_SPI_DOUT    => PinSignal_U_TFT_TOUCH_SPI_SPI_DOUT, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SPI.SPI_DOUT
        SRAM_MEM0_A     => PinSignal_U_TFT_TOUCH_SRAM_MEM0_A, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.A[17..0]
        SRAM_MEM0_CE    => PinSignal_U_TFT_TOUCH_SRAM_MEM0_CE, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.CE
        SRAM_MEM0_D(15) => SRAM0_D(15),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(14) => SRAM0_D(14),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(13) => SRAM0_D(13),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(12) => SRAM0_D(12),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(11) => SRAM0_D(11),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(10) => SRAM0_D(10),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(9)  => SRAM0_D(9),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(8)  => SRAM0_D(8),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(7)  => SRAM0_D(7),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(6)  => SRAM0_D(6),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(5)  => SRAM0_D(5),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(4)  => SRAM0_D(4),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(3)  => SRAM0_D(3),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(2)  => SRAM0_D(2),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(1)  => SRAM0_D(1),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_D(0)  => SRAM0_D(0),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.D[15..0]
        SRAM_MEM0_LB    => PinSignal_U_TFT_TOUCH_SRAM_MEM0_LB, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.LB
        SRAM_MEM0_OE    => PinSignal_U_TFT_TOUCH_SRAM_MEM0_OE, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.OE
        SRAM_MEM0_UB    => PinSignal_U_TFT_TOUCH_SRAM_MEM0_UB, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.UB
        SRAM_MEM0_WE    => PinSignal_U_TFT_TOUCH_SRAM_MEM0_WE, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM0.WE
        SRAM_MEM1_A     => PinSignal_U_TFT_TOUCH_SRAM_MEM1_A, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.A[17..0]
        SRAM_MEM1_CE    => PinSignal_U_TFT_TOUCH_SRAM_MEM1_CE, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.CE
        SRAM_MEM1_D(15) => SRAM1_D(15),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(14) => SRAM1_D(14),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(13) => SRAM1_D(13),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(12) => SRAM1_D(12),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(11) => SRAM1_D(11),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(10) => SRAM1_D(10),                      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(9)  => SRAM1_D(9),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(8)  => SRAM1_D(8),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(7)  => SRAM1_D(7),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(6)  => SRAM1_D(6),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(5)  => SRAM1_D(5),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(4)  => SRAM1_D(4),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(3)  => SRAM1_D(3),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(2)  => SRAM1_D(2),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(1)  => SRAM1_D(1),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_D(0)  => SRAM1_D(0),                       -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.D[15..0]
        SRAM_MEM1_LB    => PinSignal_U_TFT_TOUCH_SRAM_MEM1_LB, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.LB
        SRAM_MEM1_OE    => PinSignal_U_TFT_TOUCH_SRAM_MEM1_OE, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.OE
        SRAM_MEM1_UB    => PinSignal_U_TFT_TOUCH_SRAM_MEM1_UB, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.UB
        SRAM_MEM1_WE    => PinSignal_U_TFT_TOUCH_SRAM_MEM1_WE, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-SRAM_MEM1.WE
        TFT_BUF_I       => PinSignal_U1_O,                   -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.BUF_I[15..0]
        TFT_BUF_O       => PinSignal_U_TFT_TOUCH_TFT_BUF_O,  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.BUF_O[15..0]
        TFT_BUF_TRI     => PinSignal_U_TFT_TOUCH_TFT_BUF_TRI, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.BUF_TRI
        TFT_NCS         => PinSignal_U_TFT_TOUCH_TFT_NCS,    -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.NCS
        TFT_NRD         => PinSignal_U_TFT_TOUCH_TFT_NRD,    -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.NRD
        TFT_NRESET      => PinSignal_U_TFT_TOUCH_TFT_NRESET, -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.NRESET
        TFT_NWR         => PinSignal_U_TFT_TOUCH_TFT_NWR,    -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.NWR
        TFT_RS          => PinSignal_U_TFT_TOUCH_TFT_RS,     -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TFT.RS
        TOUCH_PENDOWN   => TFT_TSC_IRQ_N,                    -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-TOUCH_PENDOWN
        VGA_B           => PinSignal_U_TFT_TOUCH_VGA_B,      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.B[4..0]
        VGA_G           => PinSignal_U_TFT_TOUCH_VGA_G,      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.G[5..0]
        VGA_HSYNC       => PinSignal_U_TFT_TOUCH_VGA_HSYNC,  -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.HSYNC
        VGA_R           => PinSignal_U_TFT_TOUCH_VGA_R,      -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.R[4..0]
        VGA_VSYNC       => PinSignal_U_TFT_TOUCH_VGA_VSYNC   -- ObjectKind=Sheet Entry|PrimaryId=TFT_TOUCH.OpenBus-VGA.VSYNC
      );

    U4 : INV                                                 -- ObjectKind=Part|PrimaryId=U4|SecondaryId=1
      Port Map
      (
        I => TEST_BUTTON,                                    -- ObjectKind=Pin|PrimaryId=U4-I
        O => PinSignal_U4_O                                  -- ObjectKind=Pin|PrimaryId=U4-O
      );

    U3 : Configurable_U3                                     -- ObjectKind=Part|PrimaryId=U3|SecondaryId=1
      Port Map
      (
        I0 => PinSignal_U2_O0,                               -- ObjectKind=Pin|PrimaryId=U3-I0
        I1 => PinSignal_U2_O1,                               -- ObjectKind=Pin|PrimaryId=U3-I1
        I2 => PinSignal_U2_O2,                               -- ObjectKind=Pin|PrimaryId=U3-I2
        I3 => PinSignal_U2_O3,                               -- ObjectKind=Pin|PrimaryId=U3-I3
        I4 => PinSignal_U2_O4,                               -- ObjectKind=Pin|PrimaryId=U3-I4
        I5 => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U3-I5
        I6 => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U3-I6
        I7 => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U3-I7
        O  => PinSignal_U3_O                                 -- ObjectKind=Pin|PrimaryId=U3-O[7..0]
      );

    U2 : Configurable_U2                                     -- ObjectKind=Part|PrimaryId=U2|SecondaryId=1
      Port Map
      (
        I  => SW_USER,                                       -- ObjectKind=Pin|PrimaryId=U2-I[4..0]
        O0 => PinSignal_U2_O0,                               -- ObjectKind=Pin|PrimaryId=U2-O0
        O1 => PinSignal_U2_O1,                               -- ObjectKind=Pin|PrimaryId=U2-O1
        O2 => PinSignal_U2_O2,                               -- ObjectKind=Pin|PrimaryId=U2-O2
        O3 => PinSignal_U2_O3,                               -- ObjectKind=Pin|PrimaryId=U2-O3
        O4 => PinSignal_U2_O4                                -- ObjectKind=Pin|PrimaryId=U2-O4
      );

    U1 : IOBUF16B                                            -- ObjectKind=Part|PrimaryId=U1|SecondaryId=1
      Port Map
      (
        I      => PinSignal_U_TFT_TOUCH_TFT_BUF_O,           -- ObjectKind=Pin|PrimaryId=U1-I[15..0]
        IO(15) => TFT_DB(15),                                -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(14) => TFT_DB(14),                                -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(13) => TFT_DB(13),                                -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(12) => TFT_DB(12),                                -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(11) => TFT_DB(11),                                -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(10) => TFT_DB(10),                                -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(9)  => TFT_DB(9),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(8)  => TFT_DB(8),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(7)  => TFT_DB(7),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(6)  => TFT_DB(6),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(5)  => TFT_DB(5),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(4)  => TFT_DB(4),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(3)  => TFT_DB(3),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(2)  => TFT_DB(2),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(1)  => TFT_DB(1),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        IO(0)  => TFT_DB(0),                                 -- ObjectKind=Pin|PrimaryId=U1-IO[15..0]
        O      => PinSignal_U1_O,                            -- ObjectKind=Pin|PrimaryId=U1-O[15..0]
        T      => PinSignal_U_TFT_TOUCH_TFT_BUF_TRI          -- ObjectKind=Pin|PrimaryId=U1-T
      );

    -- Signal Assignments
    ---------------------
    LED_B                     <= PinSignal_U_TFT_TOUCH_LED_LED_B; -- ObjectKind=Net|PrimaryId=LED_B[7..0]
    LED_G                     <= PinSignal_U_TFT_TOUCH_LED_LED_G; -- ObjectKind=Net|PrimaryId=LED_G[7..0]
    LED_R                     <= PinSignal_U_TFT_TOUCH_LED_LED_R; -- ObjectKind=Net|PrimaryId=LED_R[7..0]
    NamedSignal_B(2 downto 0) <= NamedSignal_GND1_BUS; -- ObjectKind=Net|PrimaryId=B[2..0]
    NamedSignal_B(7 downto 3) <= PinSignal_U_TFT_TOUCH_VGA_B; -- ObjectKind=Net|PrimaryId=B[7..0]
    NamedSignal_CLK           <= CLK_BRD; -- ObjectKind=Net|PrimaryId=CLK
    NamedSignal_G(1 downto 0) <= NamedSignal_GND2_BUS; -- ObjectKind=Net|PrimaryId=G[1..0]
    NamedSignal_G(7 downto 2) <= PinSignal_U_TFT_TOUCH_VGA_G; -- ObjectKind=Net|PrimaryId=G[7..0]
    NamedSignal_GND1_BUS      <= "000"; -- ObjectKind=Net|PrimaryId=B[2..0]
    NamedSignal_GND2_BUS      <= "00"; -- ObjectKind=Net|PrimaryId=G[1..0]
    NamedSignal_R(2 downto 0) <= NamedSignal_GND1_BUS; -- ObjectKind=Net|PrimaryId=B[2..0]
    NamedSignal_R(7 downto 3) <= PinSignal_U_TFT_TOUCH_VGA_R; -- ObjectKind=Net|PrimaryId=R[7..0]
    PowerSignal_GND           <= '0'; -- ObjectKind=Net|PrimaryId=GND
    PowerSignal_VCC           <= '1'; -- ObjectKind=Net|PrimaryId=VCC
    SRAM0_A                   <= PinSignal_U_TFT_TOUCH_SRAM_MEM0_A; -- ObjectKind=Net|PrimaryId=SRAM0_A[17..0]
    SRAM0_E                   <= PinSignal_U_TFT_TOUCH_SRAM_MEM0_CE; -- ObjectKind=Net|PrimaryId=SRAM0_E
    SRAM0_LB                  <= PinSignal_U_TFT_TOUCH_SRAM_MEM0_LB; -- ObjectKind=Net|PrimaryId=SRAM0_LB
    SRAM0_OE                  <= PinSignal_U_TFT_TOUCH_SRAM_MEM0_OE; -- ObjectKind=Net|PrimaryId=SRAM0_OE
    SRAM0_UB                  <= PinSignal_U_TFT_TOUCH_SRAM_MEM0_UB; -- ObjectKind=Net|PrimaryId=SRAM0_UB
    SRAM0_W                   <= PinSignal_U_TFT_TOUCH_SRAM_MEM0_WE; -- ObjectKind=Net|PrimaryId=SRAM0_W
    SRAM1_A                   <= PinSignal_U_TFT_TOUCH_SRAM_MEM1_A; -- ObjectKind=Net|PrimaryId=SRAM1_A[17..0]
    SRAM1_E                   <= PinSignal_U_TFT_TOUCH_SRAM_MEM1_CE; -- ObjectKind=Net|PrimaryId=SRAM1_E
    SRAM1_LB                  <= PinSignal_U_TFT_TOUCH_SRAM_MEM1_LB; -- ObjectKind=Net|PrimaryId=SRAM1_LB
    SRAM1_OE                  <= PinSignal_U_TFT_TOUCH_SRAM_MEM1_OE; -- ObjectKind=Net|PrimaryId=SRAM1_OE
    SRAM1_UB                  <= PinSignal_U_TFT_TOUCH_SRAM_MEM1_UB; -- ObjectKind=Net|PrimaryId=SRAM1_UB
    SRAM1_W                   <= PinSignal_U_TFT_TOUCH_SRAM_MEM1_WE; -- ObjectKind=Net|PrimaryId=SRAM1_W
    TFT_BLIGHT                <= PowerSignal_VCC; -- ObjectKind=Net|PrimaryId=VCC
    TFT_CS                    <= PinSignal_U_TFT_TOUCH_TFT_NCS; -- ObjectKind=Net|PrimaryId=TFT_CS
    TFT_RD                    <= PinSignal_U_TFT_TOUCH_TFT_NRD; -- ObjectKind=Net|PrimaryId=TFT_RD
    TFT_RESET                 <= PinSignal_U_TFT_TOUCH_TFT_NRESET; -- ObjectKind=Net|PrimaryId=TFT_RESET
    TFT_RS                    <= PinSignal_U_TFT_TOUCH_TFT_RS; -- ObjectKind=Net|PrimaryId=TFT_RS
    TFT_TSC_CLK               <= PinSignal_U_TFT_TOUCH_SPI_SPI_CLK; -- ObjectKind=Net|PrimaryId=TFT_TSC_CLK
    TFT_TSC_CS_N              <= PinSignal_U_TFT_TOUCH_SPI_SPI_CS; -- ObjectKind=Net|PrimaryId=TFT_TSC_CS_N
    TFT_TSC_DOUT              <= PinSignal_U_TFT_TOUCH_SPI_SPI_DOUT; -- ObjectKind=Net|PrimaryId=TFT_TSC_DOUT
    TFT_WR                    <= PinSignal_U_TFT_TOUCH_TFT_NWR; -- ObjectKind=Net|PrimaryId=TFT_WR
    VGA_BLUE                  <= NamedSignal_B; -- ObjectKind=Net|PrimaryId=B[7..0]
    VGA_CLK                   <= NamedSignal_CLK; -- ObjectKind=Net|PrimaryId=CLK
    VGA_GREEN                 <= NamedSignal_G; -- ObjectKind=Net|PrimaryId=G[7..0]
    VGA_HSYNC                 <= PinSignal_U_TFT_TOUCH_VGA_HSYNC; -- ObjectKind=Net|PrimaryId=VGA_HSYNC
    VGA_RED                   <= NamedSignal_R; -- ObjectKind=Net|PrimaryId=R[7..0]
    VGA_VSYNC                 <= PinSignal_U_TFT_TOUCH_VGA_VSYNC; -- ObjectKind=Net|PrimaryId=VGA_VSYNC

End Structure;
------------------------------------------------------------

