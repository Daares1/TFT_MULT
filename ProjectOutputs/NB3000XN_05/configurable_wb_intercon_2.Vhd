--------------------------------------------------------------------------------
Library IEEE;
Use IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
Entity Configurable_WB_INTERCON_2 Is
  Port(
        s0_STB_O   : Out   Std_Logic;
        s0_CYC_O   : Out   Std_Logic;
        s0_ACK_I   : In    Std_Logic;
        s0_ADR_O   : Out   Std_Logic_Vector(19 DownTo 0);
        s0_DAT_I   : In    Std_Logic_Vector(31 DownTo 0);
        s0_DAT_O   : Out   Std_Logic_Vector(31 DownTo 0);
        s0_SEL_O   : Out   Std_Logic_Vector(3 DownTo 0);
        s0_WE_O    : Out   Std_Logic;

        m0_STB_I   : In    Std_Logic;
        m0_CYC_I   : In    Std_Logic;
        m0_ACK_O   : Out   Std_Logic;
        m0_ADR_I   : In    Std_Logic_Vector(31 DownTo 0);
        m0_DAT_O   : Out   Std_Logic_Vector(31 DownTo 0);
        m0_DAT_I   : In    Std_Logic_Vector(31 DownTo 0);
        m0_SEL_I   : In    Std_Logic_Vector(3 DownTo 0);
        m0_WE_I    : In    Std_Logic;
        m0_CLK_I   : In    Std_Logic
      );
End Configurable_WB_INTERCON_2;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
Architecture RTL Of Configurable_WB_INTERCON_2 Is
    Constant s0_DecodeAddress     : Std_Logic_Vector(7 DownTo 0) := "00000001";

    Signal   s0_Decode            : Std_Logic;

    Signal   s0_DAT               : Std_Logic_Vector(31 DownTo 0);

    Signal   Any_Decode           : Std_Logic;
    Signal   Bad_Decode           : Std_Logic;
    Signal   UseBadDecode         : Std_Logic;

    Signal   DecodeAddr           : Std_Logic_Vector(7 DownTo 0);

Begin
    s0_Decode <= '1' When m0_ADR_I(31 DownTo 24) = s0_DecodeAddress Else '0';

    s0_ADR_O <= m0_ADR_I(19 Downto 0);
    s0_STB_O <= m0_STB_I And s0_Decode And Not Bad_Decode;
    s0_CYC_O <= m0_CYC_I And s0_Decode And Not Bad_Decode;
    s0_DAT_O <= m0_DAT_I(31 Downto 0);
    s0_SEL_O <= m0_SEL_I;
    s0_WE_O  <= m0_WE_I;

    Any_Decode <= 
          s0_Decode;

    process(m0_CLK_I)
    begin
        if rising_edge(m0_CLK_I) then
            if Any_Decode='0' then
              DecodeAddr <= m0_ADR_I(31 Downto 24);
            end if;
            if DecodeAddr /= m0_ADR_I(31 Downto 24) then
              UseBadDecode <= '1';
            else
              UseBadDecode <= '0';
            end if;
            Bad_Decode <= Not(Any_Decode) And m0_STB_I And m0_CYC_I;
        end if;
    end process;


    s0_DAT     <= s0_DAT_I When s0_Decode = '1' Else (Others => '0');

    m0_ACK_O <= (Bad_Decode And UseBadDecode) Or
                s0_ACK_I  ;

    m0_DAT_O <= 
                s0_DAT    ;

End RTL;
--------------------------------------------------------------------------------
