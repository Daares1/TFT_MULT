Library IEEE;
Use IEEE.Std_Logic_1164.all;
Use IEEE.std_logic_unsigned.all;

--------------------------------------------------------------------------------
Entity Configurable_SRAM Is Port
   (
     ---------------------------------------------------------------------------
     SRAM0_D    : InOut Std_Logic_Vector(15 DownTo 0);
     SRAM0_A    : Out   Std_Logic_Vector(18-1 DownTo 0);
     SRAM0_OE   : Out   Std_Logic;
     SRAM0_WE   : Out   Std_Logic;
     SRAM0_CE   : Out   Std_Logic;
     SRAM0_LB   : Out   Std_Logic;
     SRAM0_UB   : Out   Std_Logic;
     SRAM1_D    : InOut Std_Logic_Vector(15 DownTo 0);
     SRAM1_A    : Out   Std_Logic_Vector(18-1 DownTo 0);
     SRAM1_OE   : Out   Std_Logic;
     SRAM1_WE   : Out   Std_Logic;
     SRAM1_CE   : Out   Std_Logic;
     SRAM1_LB   : Out   Std_Logic;
     SRAM1_UB   : Out   Std_Logic;
     ---------------------------------------------------------------------------

     ---------------------------------------------------------------------------
     -- Wishbone Slave Port
     ---------------------------------------------------------------------------
     CLK_I      : In    Std_Logic;
     RST_I      : In    Std_Logic;
     CYC_I      : In    Std_Logic;
     STB_I      : In    Std_Logic;
     ACK_O      : Out   Std_Logic;
     ADR_I      : In    Std_Logic_Vector(20-1 DownTo 0);
     DAT_I      : In    Std_Logic_Vector(31 DownTo 0);
     DAT_O      : Out   Std_Logic_Vector(31 DownTo 0);
     WE_I       : In    Std_Logic;
     SEL_I      : In    Std_Logic_Vector(3 DownTo 0)
   );

End Configurable_SRAM;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--                   ByteLanes[3..0]   LB0  UB0  LB1  UB1  CE0  CE1     OE  WE
--                                     B5   B4   B3   B2   B1   B0      OE  WE
--------------------------------------------------------------------------------
--Write word       |     1111          0    0    0    0    0    0       1   0
--Read             |     XXXX          0    0    0    0    0    0       0   1
--None             |     XXXX          1    1    1    1    1    1       1   1
--------------------------------------------------------------------------------
-- 2 x 16-bit Devices
--------------------------------------------------------------------------------
--Write low half   |     0011          0    0    0    0    0    1       1   0
--Write high half  |     1100          0    0    0    0    1    0       1   0
--Write Byte0      |     0001          0    1    0    0    0    1       1   0
--Write Byte1      |     0010          1    0    0    0    0    1       1   0
--Write Byte2      |     0100          0    0    0    1    1    0       1   0
--Write Byte3      |     1000          0    0    1    0    1    0       1   0
--Write Bytes012   |     0111          0    0    0    1    0    0       1   0
--Write Bytes123   |     1110          1    0    0    0    0    0       1   0
--Write Bytes12    |     0110          1    0    0    1    0    0       1   0
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
Architecture RTL of Configurable_SRAM Is
    Type TState Is
        (
         State_AddressSetup  ,
         State_Write_Setup,
         State_Write_Pulse   ,     -- WE goes low during this state
         State_Write_Hold,
         State_Write_ACK     ,     -- WE goes high. Must keep seperate form addresses etc in case WE goes high before address, CE etc
         State_Read_ACK
        );

    Signal   State      : TState;
    Signal   State_Next : TState;

    SubType  TByteLane   Is Std_Logic_Vector(3 DownTo 0);
    SubType  TOutBits    Is Std_Logic_Vector(5 DownTo 0);

    ----------------------------------------------------------------------------
    -- Constants for byte lanes - always the same
    ----------------------------------------------------------------------------
    Constant Write_Word           : TByteLane := "1111";
    Constant Write_LoHalf         : TByteLane := "0011";
    Constant Write_HiHalf         : TByteLane := "1100";
    Constant Write_Byte0          : TByteLane := "0001";
    Constant Write_Byte1          : TByteLane := "0010";
    Constant Write_Byte2          : TByteLane := "0100";
    Constant Write_Byte3          : TByteLane := "1000";
    Constant Write_Bytes012       : TByteLane := "0111";
    Constant Write_Bytes123       : TByteLane := "1110";
    Constant Write_Bytes12        : TByteLane := "0110";
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    Constant OutBits_Write_Word     : TOutBits  := "000000";
                                    
    Constant OutBits_Write_LoHalf   : TOutBits  := "000001";
    Constant OutBits_Write_HiHalf   : TOutBits  := "000010";
    Constant OutBits_Write_Byte0    : TOutBits  := "010001";
    Constant OutBits_Write_Byte1    : TOutBits  := "100001";
    Constant OutBits_Write_Byte2    : TOutBits  := "000110";
    Constant OutBits_Write_Byte3    : TOutBits  := "001010";
    Constant OutBits_Write_Bytes012 : TOutBits  := "000100";
    Constant OutBits_Write_Bytes123 : TOutBits  := "100000";
    Constant OutBits_Write_Bytes12  : TOutBits  := "100100";

    Constant OutBits_Read           : TOutBits  := "000000";
    Constant OutBits_None           : TOutBits  := "111111";

    Signal   OutBits              : TOutBits;
    Signal   OutBits_Write        : TOutBits;

    Signal   Request              : Std_Logic;
    Signal   RequestRead          : Std_Logic;
    Signal   RequestWrite         : Std_Logic;

    Signal   WriteActive_Cycle    : Std_Logic;
    Signal   WE                   : Std_Logic;
    Signal   OE                   : Std_Logic;
    Signal   ACK                  : Std_Logic;
    Signal   ADDR                 : Std_Logic_Vector(20-3 Downto 0);

    Constant cTimer_Zero            : Std_Logic_Vector(4 Downto 0) := "00000";
    Constant cTimer_WriteSetup      : Std_Logic_Vector(4 Downto 0) := "00000" ;
    Constant cTimer_WritePulse      : Std_Logic_Vector(4 Downto 0) := "00000" ;
    Constant cTimer_WriteHold       : Std_Logic_Vector(4 Downto 0) := "00000" ;
    Constant cTimer_ReadSetup       : Std_Logic_Vector(4 Downto 0) := "00000" ;

    Signal Timer                  : Std_Logic_Vector(4 Downto 0);
    Signal TimerIsZero            : Std_Logic;

    Signal LoadTimer_ReadSetup    : Std_Logic;
    Signal LoadTimer_WriteSetup   : Std_Logic;
    Signal LoadTimer_WritePulse   : Std_Logic;
    Signal LoadTimer_WriteHold    : Std_Logic;

Begin
    ----------------------------------------------------------------------------
    ADDR <= ADR_I(20-1 DownTo 2);
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    SRAM0_LB  <= OutBits(5);
    SRAM1_LB  <= OutBits(3);
    SRAM0_UB  <= OutBits(4);
    SRAM1_UB  <= OutBits(2);
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    SRAM0_CE  <= OutBits(1) Or (Not Request);
    SRAM1_CE  <= OutBits(0) Or (Not Request);
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    SRAM0_A   <= ADDR(18-1 DownTo 0);
    SRAM1_A   <= ADDR(18-1 DownTo 0);
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    DAT_O(15 DownTo  0) <= SRAM0_D;
    DAT_O(31 DownTo 16) <= SRAM1_D;
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    ACK_O <= ACK;
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    Request      <= STB_I And CYC_I;
    RequestRead  <= STB_I And CYC_I And (Not WE_I);
    RequestWrite <= STB_I And CYC_I And (    WE_I);
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    SRAM0_WE <= WE;
    SRAM1_WE <= WE;
    SRAM0_OE <= OE;
    SRAM1_OE <= OE;
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    Memory_OuptutControls:
    Process(SEL_I,
            DAT_I,
            State,
            OutBits_Write,
            WriteActive_Cycle)
    Begin
        If WriteActive_Cycle = '1' Then
           OutBits    <= OutBits_Write;
           OE         <= '1';
           SRAM0_D    <= DAT_I(15 DownTo  0);
           SRAM1_D    <= DAT_I(31 DownTo 16);
        Else
           OutBits    <= OutBits_Read;
           OE         <= '0';
           SRAM0_D    <= (Others => 'Z');
           SRAM1_D    <= (Others => 'Z');
        End If;

        Case SEL_I Is
           When Write_Word     => OutBits_Write <= OutBits_Write_Word;
           When Write_LoHalf   => OutBits_Write <= OutBits_Write_LoHalf;
           When Write_HiHalf   => OutBits_Write <= OutBits_Write_HiHalf;
           When Write_Byte0    => OutBits_Write <= OutBits_Write_Byte0;
           When Write_Byte1    => OutBits_Write <= OutBits_Write_Byte1;
           When Write_Byte2    => OutBits_Write <= OutBits_Write_Byte2;
           When Write_Byte3    => OutBits_Write <= OutBits_Write_Byte3;
           When Write_Bytes012 => OutBits_Write <= OutBits_Write_Bytes012;
           When Write_Bytes123 => OutBits_Write <= OutBits_Write_Bytes123;
           When Write_Bytes12  => OutBits_Write <= OutBits_Write_Bytes12;
           When Others         => OutBits_Write <= OutBits_None;
        End Case;
    End Process;
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    FSM_Combinational_Single:
    Process(RequestRead,
            RequestWrite,
            State,
            TimerIsZero)
    Begin
        ------------------------------------------------------------------------
        -- Default outputs
        WriteActive_Cycle <= '0';
        WE                <= '1';
        ACK               <= '0';
        State_Next        <= State;
        LoadTimer_ReadSetup  <= '0';
        LoadTimer_WriteSetup <= '0';
        LoadTimer_WritePulse <= '0';
        LoadTimer_WriteHold  <= '0';
        ------------------------------------------------------------------------

        ------------------------------------------------------------------------
        Case State Is
           ---------------------------------------------------------------------
           When State_AddressSetup =>
                If RequestWrite = '1' Then                --Address is being setup in this phases
                   WriteActive_Cycle <= '1';
                   State_Next        <= State_Write_Pulse;                       -- ExcludeIf_WriteSetup
 
 
                 ElsIf RequestRead = '1' Then
 
                   State_Next <= State_Read_ACK;
                End If;
           ---------------------------------------------------------------------

           ---------------------------------------------------------------------
           When State_Write_Setup =>
                WriteActive_Cycle <= '1';
                If TimerIsZero='1' Then
                    State_Next <= State_Write_Pulse;
 
                End If;

           When State_Write_Pulse =>
                WriteActive_Cycle <= '1';
                WE                <= '0';
                State_Next        <= State_Write_ACK;                             -- ExcludeIf_WriteHold
 
 
 
 

           When State_Write_Hold =>
                WriteActive_Cycle <= '1';
                If TimerIsZero='1' Then
                    State_Next        <= State_Write_ACK;
                End If;
            

           When State_Write_ACK =>
                WriteActive_Cycle <= '1';
                ACK               <= '1';
                State_Next        <= State_AddressSetup;
           ---------------------------------------------------------------------

           ---------------------------------------------------------------------
           When State_Read_ACK =>                    -- Assert ACK, Master will read the data one clock cycle later
 
                ACK           <= '1';
                State_Next    <= State_AddressSetup;
 
           ---------------------------------------------------------------------

           When Others =>
                State_Next <= State_AddressSetup;

        End Case;
    End Process;
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    FSM_Synchronous:
    Process(CLK_I)
    Begin
        If Rising_Edge(CLK_I) Then
           If RST_I = '1' Then
              State  <= State_AddressSetup;
           Else
              State <= State_Next;
           End If;
        End If;
    End Process;
    ----------------------------------------------------------------------------
    ----------------------------------------------------------------------------
    Process(CLK_I)
    Begin
        If Rising_Edge(CLK_I) Then
            If RST_I='1' Then
                Timer <= (Others=>'0');
            Else
                   If LoadTimer_ReadSetup ='1' Then Timer <= cTimer_ReadSetup;
                ElsIf LoadTimer_WritePulse='1' Then Timer <= cTimer_WritePulse;
                ElsIf LoadTimer_WriteSetup='1' Then Timer <= cTimer_WriteSetup;
                ElsIf LoadTimer_WriteHold ='1' Then Timer <= cTimer_WriteHold;
                ElsIf TimerIsZero         ='0' Then Timer <= Timer - 1;
                End If;
            End If;
        End If;
    End Process;
    TimerIsZero <= '1' When Timer=cTimer_Zero Else '0';
    ----------------------------------------------------------------------------

End RTL;
--------------------------------------------------------------------------------

