--------------------------------------------------------------------------------
Library IEEE;
Use IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
Entity Configurable_WB_INTERCON_1 Is
  Port(
        s0_STB_O   : Out   Std_Logic;
        s0_CYC_O   : Out   Std_Logic;
        s0_ACK_I   : In    Std_Logic;
        s0_DAT_I   : In    Std_Logic_Vector(7 DownTo 0);
        s0_DAT_O   : Out   Std_Logic_Vector(7 DownTo 0);
        s0_SEL_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s0_WE_O    : Out   Std_Logic;

        s1_STB_O   : Out   Std_Logic;
        s1_CYC_O   : Out   Std_Logic;
        s1_ACK_I   : In    Std_Logic;
        s1_DAT_I   : In    Std_Logic_Vector(7 DownTo 0);
        s1_DAT_O   : Out   Std_Logic_Vector(7 DownTo 0);
        s1_SEL_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s1_WE_O    : Out   Std_Logic;

        s2_STB_O   : Out   Std_Logic;
        s2_CYC_O   : Out   Std_Logic;
        s2_ACK_I   : In    Std_Logic;
        s2_ADR_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s2_DAT_I   : In    Std_Logic_Vector(7 DownTo 0);
        s2_DAT_O   : Out   Std_Logic_Vector(7 DownTo 0);
        s2_SEL_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s2_WE_O    : Out   Std_Logic;

        s3_STB_O   : Out   Std_Logic;
        s3_CYC_O   : Out   Std_Logic;
        s3_ACK_I   : In    Std_Logic;
        s3_ADR_O   : Out   Std_Logic_Vector(8 DownTo 0);
        s3_DAT_I   : In    Std_Logic_Vector(31 DownTo 0);
        s3_DAT_O   : Out   Std_Logic_Vector(31 DownTo 0);
        s3_SEL_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s3_WE_O    : Out   Std_Logic;

        s4_STB_O   : Out   Std_Logic;
        s4_CYC_O   : Out   Std_Logic;
        s4_ACK_I   : In    Std_Logic;
        s4_ADR_O   : Out   Std_Logic_Vector(4 DownTo 0);
        s4_DAT_I   : In    Std_Logic_Vector(7 DownTo 0);
        s4_DAT_O   : Out   Std_Logic_Vector(7 DownTo 0);
        s4_SEL_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s4_WE_O    : Out   Std_Logic;

        s5_STB_O   : Out   Std_Logic;
        s5_CYC_O   : Out   Std_Logic;
        s5_ACK_I   : In    Std_Logic;
        s5_ADR_O   : Out   Std_Logic_Vector(2 DownTo 0);
        s5_DAT_I   : In    Std_Logic_Vector(31 DownTo 0);
        s5_DAT_O   : Out   Std_Logic_Vector(31 DownTo 0);
        s5_SEL_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s5_WE_O    : Out   Std_Logic;

        s6_STB_O   : Out   Std_Logic;
        s6_CYC_O   : Out   Std_Logic;
        s6_ACK_I   : In    Std_Logic;
        s6_ADR_O   : Out   Std_Logic_Vector(11 DownTo 0);
        s6_DAT_I   : In    Std_Logic_Vector(31 DownTo 0);
        s6_DAT_O   : Out   Std_Logic_Vector(31 DownTo 0);
        s6_SEL_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s6_WE_O    : Out   Std_Logic;

        m0_STB_I   : In    Std_Logic;
        m0_CYC_I   : In    Std_Logic;
        m0_ACK_O   : Out   Std_Logic;
        m0_ADR_I   : In    Std_Logic_Vector(23 DownTo 0);
        m0_DAT_O   : Out   Std_Logic_Vector(31 DownTo 0);
        m0_DAT_I   : In    Std_Logic_Vector(31 DownTo 0);
        m0_SEL_I   : In    Std_Logic_Vector(3 DownTo 0);
        m0_WE_I    : In    Std_Logic;
        m0_CLK_I   : In    Std_Logic
      );
End Configurable_WB_INTERCON_1;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
Architecture RTL Of Configurable_WB_INTERCON_1 Is
    Constant s0_DecodeAddress     : Std_Logic_Vector(7 DownTo 0) := "00000000";
    Constant s1_DecodeAddress     : Std_Logic_Vector(7 DownTo 0) := "00000001";
    Constant s2_DecodeAddress     : Std_Logic_Vector(7 DownTo 0) := "00000011";
    Constant s3_DecodeAddress     : Std_Logic_Vector(7 DownTo 0) := "00000101";
    Constant s4_DecodeAddress     : Std_Logic_Vector(7 DownTo 0) := "00000100";
    Constant s5_DecodeAddress     : Std_Logic_Vector(7 DownTo 0) := "00000010";
    Constant s6_DecodeAddress     : Std_Logic_Vector(7 DownTo 0) := "00000110";

    Signal   s0_Decode            : Std_Logic;
    Signal   s1_Decode            : Std_Logic;
    Signal   s2_Decode            : Std_Logic;
    Signal   s3_Decode            : Std_Logic;
    Signal   s4_Decode            : Std_Logic;
    Signal   s5_Decode            : Std_Logic;
    Signal   s6_Decode            : Std_Logic;

    Signal   s0_DAT               : Std_Logic_Vector(31 DownTo 0);
    Signal   s1_DAT               : Std_Logic_Vector(31 DownTo 0);
    Signal   s2_DAT               : Std_Logic_Vector(31 DownTo 0);
    Signal   s3_DAT               : Std_Logic_Vector(31 DownTo 0);
    Signal   s4_DAT               : Std_Logic_Vector(31 DownTo 0);
    Signal   s5_DAT               : Std_Logic_Vector(31 DownTo 0);
    Signal   s6_DAT               : Std_Logic_Vector(31 DownTo 0);

    Signal   Any_Decode           : Std_Logic;
    Signal   Bad_Decode           : Std_Logic;
    Signal   UseBadDecode         : Std_Logic;

    Signal   DecodeAddr           : Std_Logic_Vector(7 DownTo 0);

Begin
    s0_Decode <= '1' When m0_ADR_I(23 DownTo 16) = s0_DecodeAddress Else '0';
    s1_Decode <= '1' When m0_ADR_I(23 DownTo 16) = s1_DecodeAddress Else '0';
    s2_Decode <= '1' When m0_ADR_I(23 DownTo 16) = s2_DecodeAddress Else '0';
    s3_Decode <= '1' When m0_ADR_I(23 DownTo 16) = s3_DecodeAddress Else '0';
    s4_Decode <= '1' When m0_ADR_I(23 DownTo 16) = s4_DecodeAddress Else '0';
    s5_Decode <= '1' When m0_ADR_I(23 DownTo 16) = s5_DecodeAddress Else '0';
    s6_Decode <= '1' When m0_ADR_I(23 DownTo 16) = s6_DecodeAddress Else '0';

    s0_STB_O <= m0_STB_I And s0_Decode And Not Bad_Decode;
    s0_CYC_O <= m0_CYC_I And s0_Decode And Not Bad_Decode;
    s0_DAT_O <= m0_DAT_I(7 Downto 0);
    s0_SEL_O <= m0_SEL_I;
    s0_WE_O  <= m0_WE_I;

    s1_STB_O <= m0_STB_I And s1_Decode And Not Bad_Decode;
    s1_CYC_O <= m0_CYC_I And s1_Decode And Not Bad_Decode;
    s1_DAT_O <= m0_DAT_I(7 Downto 0);
    s1_SEL_O <= m0_SEL_I;
    s1_WE_O  <= m0_WE_I;

    s2_ADR_O <= m0_ADR_I(3 Downto 0);
    s2_STB_O <= m0_STB_I And s2_Decode And Not Bad_Decode;
    s2_CYC_O <= m0_CYC_I And s2_Decode And Not Bad_Decode;
    s2_DAT_O <= m0_DAT_I(7 Downto 0);
    s2_SEL_O <= m0_SEL_I;
    s2_WE_O  <= m0_WE_I;

    s3_ADR_O <= m0_ADR_I(10 Downto 2);
    s3_STB_O <= m0_STB_I And s3_Decode And Not Bad_Decode;
    s3_CYC_O <= m0_CYC_I And s3_Decode And Not Bad_Decode;
    s3_DAT_O <= m0_DAT_I(31 Downto 0);
    s3_SEL_O <= m0_SEL_I;
    s3_WE_O  <= m0_WE_I;

    s4_ADR_O <= m0_ADR_I(4 Downto 0);
    s4_STB_O <= m0_STB_I And s4_Decode And Not Bad_Decode;
    s4_CYC_O <= m0_CYC_I And s4_Decode And Not Bad_Decode;
    s4_DAT_O <= m0_DAT_I(7 Downto 0);
    s4_SEL_O <= m0_SEL_I;
    s4_WE_O  <= m0_WE_I;

    s5_ADR_O <= m0_ADR_I(4 Downto 2);
    s5_STB_O <= m0_STB_I And s5_Decode And Not Bad_Decode;
    s5_CYC_O <= m0_CYC_I And s5_Decode And Not Bad_Decode;
    s5_DAT_O <= m0_DAT_I(31 Downto 0);
    s5_SEL_O <= m0_SEL_I;
    s5_WE_O  <= m0_WE_I;

    s6_ADR_O <= m0_ADR_I(11 Downto 0);
    s6_STB_O <= m0_STB_I And s6_Decode And Not Bad_Decode;
    s6_CYC_O <= m0_CYC_I And s6_Decode And Not Bad_Decode;
    s6_DAT_O <= m0_DAT_I(31 Downto 0);
    s6_SEL_O <= m0_SEL_I;
    s6_WE_O  <= m0_WE_I;

    Any_Decode <= 
          s0_Decode Or
          s1_Decode Or
          s2_Decode Or
          s3_Decode Or
          s4_Decode Or
          s5_Decode Or
          s6_Decode;

    process(m0_CLK_I)
    begin
        if rising_edge(m0_CLK_I) then
            if Any_Decode='0' then
              DecodeAddr <= m0_ADR_I(23 Downto 16);
            end if;
            if DecodeAddr /= m0_ADR_I(23 Downto 16) then
              UseBadDecode <= '1';
            else
              UseBadDecode <= '0';
            end if;
            Bad_Decode <= Not(Any_Decode) And m0_STB_I And m0_CYC_I;
        end if;
    end process;


    s0_DAT     <= s0_DAT_I & s0_DAT_I & s0_DAT_I & s0_DAT_I When s0_Decode = '1' Else (Others => '0');

    s1_DAT     <= s1_DAT_I & s1_DAT_I & s1_DAT_I & s1_DAT_I When s1_Decode = '1' Else (Others => '0');

    s2_DAT     <= s2_DAT_I & s2_DAT_I & s2_DAT_I & s2_DAT_I When s2_Decode = '1' Else (Others => '0');

    s3_DAT     <= s3_DAT_I When s3_Decode = '1' Else (Others => '0');

    s4_DAT     <= s4_DAT_I & s4_DAT_I & s4_DAT_I & s4_DAT_I When s4_Decode = '1' Else (Others => '0');

    s5_DAT     <= s5_DAT_I When s5_Decode = '1' Else (Others => '0');

    s6_DAT     <= s6_DAT_I When s6_Decode = '1' Else (Others => '0');

    m0_ACK_O <= (Bad_Decode And UseBadDecode) Or
                s0_ACK_I   Or
                s1_ACK_I   Or
                s2_ACK_I   Or
                s3_ACK_I   Or
                s4_ACK_I   Or
                s5_ACK_I   Or
                s6_ACK_I  ;

    m0_DAT_O <= 
                s0_DAT     Or
                s1_DAT     Or
                s2_DAT     Or
                s3_DAT     Or
                s4_DAT     Or
                s5_DAT     Or
                s6_DAT    ;

End RTL;
--------------------------------------------------------------------------------
