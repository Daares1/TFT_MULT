--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.Std_Logic_1164.all;
USE IEEE.Std_Logic_Unsigned.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ENTITY Configurable_led IS
  PORT(
      LED_R : OUT std_logic_vector(7 downto 0);
      LED_G : OUT std_logic_vector(7 downto 0);
      LED_B : OUT std_logic_vector(7 downto 0);
      STB_I : IN  std_logic;
      CYC_I : IN  std_logic;
      ACK_O : OUT std_logic;
      ADR_I : IN  std_logic_vector(4 downto 0);
      DAT_O : OUT std_logic_vector(7 downto 0);
      DAT_I : IN  std_logic_vector(7 downto 0);
      WE_I  : IN  std_logic;
      CLK_I : IN  std_logic;
      RST_I : IN  std_logic
  );
END Configurable_led;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
ARCHITECTURE structure OF Configurable_led IS
--------------------------------------------------------------------------------
CONSTANT cCounterMax : std_logic_vector(7 downto 0) := (OTHERS => '1');
CONSTANT cPrescaleMax : std_logic_vector(4 downto 0) := "10011";
CONSTANT cZeroPW : std_logic_vector(7 downto 0) := (OTHERS => '0');
SIGNAL CNT : std_logic_vector(7 downto 0);
SIGNAL P : std_logic_vector(4 downto 0);
SIGNAL LA_R : std_logic_vector(7 downto 0);
SIGNAL LA_G : std_logic_vector(7 downto 0);
SIGNAL LA_B : std_logic_vector(7 downto 0);
SIGNAL LB_R : std_logic_vector(7 downto 0);
SIGNAL LB_G : std_logic_vector(7 downto 0);
SIGNAL LB_B : std_logic_vector(7 downto 0);
SIGNAL LC_R : std_logic_vector(7 downto 0);
SIGNAL LC_G : std_logic_vector(7 downto 0);
SIGNAL LC_B : std_logic_vector(7 downto 0);
SIGNAL LD_R : std_logic_vector(7 downto 0);
SIGNAL LD_G : std_logic_vector(7 downto 0);
SIGNAL LD_B : std_logic_vector(7 downto 0);
SIGNAL LE_R : std_logic_vector(7 downto 0);
SIGNAL LE_G : std_logic_vector(7 downto 0);
SIGNAL LE_B : std_logic_vector(7 downto 0);
SIGNAL LF_R : std_logic_vector(7 downto 0);
SIGNAL LF_G : std_logic_vector(7 downto 0);
SIGNAL LF_B : std_logic_vector(7 downto 0);
SIGNAL LG_R : std_logic_vector(7 downto 0);
SIGNAL LG_G : std_logic_vector(7 downto 0);
SIGNAL LG_B : std_logic_vector(7 downto 0);
SIGNAL LH_R : std_logic_vector(7 downto 0);
SIGNAL LH_G : std_logic_vector(7 downto 0);
SIGNAL LH_B : std_logic_vector(7 downto 0);
SIGNAL WBRequest : std_logic;
SIGNAL WBWrite : std_logic;
--------------------------------------------------------------------------------
BEGIN
--------------------------------------------------------------------------------
    WBRequest <= STB_I And CYC_I;
    WBWrite <= WBRequest And WE_I;
    ACK_O <= WBRequest;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
    PROCESS(CLK_I)
    BEGIN
        IF Rising_Edge(CLK_I) THEN
            IF RST_I='1' THEN
                LA_R <= (OTHERS => '0');
                LA_G <= (OTHERS => '0');
                LA_B <= (OTHERS => '0');
                LB_R <= (OTHERS => '0');
                LB_G <= (OTHERS => '0');
                LB_B <= (OTHERS => '0');
                LC_R <= (OTHERS => '0');
                LC_G <= (OTHERS => '0');
                LC_B <= (OTHERS => '0');
                LD_R <= (OTHERS => '0');
                LD_G <= (OTHERS => '0');
                LD_B <= (OTHERS => '0');
                LE_R <= (OTHERS => '0');
                LE_G <= (OTHERS => '0');
                LE_B <= (OTHERS => '0');
                LF_R <= (OTHERS => '0');
                LF_G <= (OTHERS => '0');
                LF_B <= (OTHERS => '0');
                LG_R <= (OTHERS => '0');
                LG_G <= (OTHERS => '0');
                LG_B <= (OTHERS => '0');
                LH_R <= (OTHERS => '0');
                LH_G <= (OTHERS => '0');
                LH_B <= (OTHERS => '0');
            ELSIF WBWrite = '1' THEN
                CASE ADR_I IS
                    WHEN "00000" =>
                        LA_R <= DAT_I;
                    WHEN "00001" =>
                        LA_G <= DAT_I;
                    WHEN "00010" =>
                        LA_B <= DAT_I;
                    WHEN "00011" =>
                        LB_R <= DAT_I;
                    WHEN "00100" =>
                        LB_G <= DAT_I;
                    WHEN "00101" =>
                        LB_B <= DAT_I;
                    WHEN "00110" =>
                        LC_R <= DAT_I;
                    WHEN "00111" =>
                        LC_G <= DAT_I;
                    WHEN "01000" =>
                        LC_B <= DAT_I;
                    WHEN "01001" =>
                        LD_R <= DAT_I;
                    WHEN "01010" =>
                        LD_G <= DAT_I;
                    WHEN "01011" =>
                        LD_B <= DAT_I;
                    WHEN "01100" =>
                        LE_R <= DAT_I;
                    WHEN "01101" =>
                        LE_G <= DAT_I;
                    WHEN "01110" =>
                        LE_B <= DAT_I;
                    WHEN "01111" =>
                        LF_R <= DAT_I;
                    WHEN "10000" =>
                        LF_G <= DAT_I;
                    WHEN "10001" =>
                        LF_B <= DAT_I;
                    WHEN "10010" =>
                        LG_R <= DAT_I;
                    WHEN "10011" =>
                        LG_G <= DAT_I;
                    WHEN "10100" =>
                        LG_B <= DAT_I;
                    WHEN "10101" =>
                        LH_R <= DAT_I;
                    WHEN "10110" =>
                        LH_G <= DAT_I;
                    WHEN "10111" =>
                        LH_B <= DAT_I;
                    WHEN OTHERS =>
                        LA_R <= DAT_I;
                        LA_G <= DAT_I;
                        LA_B <= DAT_I;
                        LB_R <= DAT_I;
                        LB_G <= DAT_I;
                        LB_B <= DAT_I;
                        LC_R <= DAT_I;
                        LC_G <= DAT_I;
                        LC_B <= DAT_I;
                        LD_R <= DAT_I;
                        LD_G <= DAT_I;
                        LD_B <= DAT_I;
                        LE_R <= DAT_I;
                        LE_G <= DAT_I;
                        LE_B <= DAT_I;
                        LF_R <= DAT_I;
                        LF_G <= DAT_I;
                        LF_B <= DAT_I;
                        LG_R <= DAT_I;
                        LG_G <= DAT_I;
                        LG_B <= DAT_I;
                        LH_R <= DAT_I;
                        LH_G <= DAT_I;
                        LH_B <= DAT_I;
                END CASE;
            END IF;
        END IF;
    END PROCESS;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
    mainprocess:
    PROCESS(CLK_I)
    BEGIN
        IF Rising_Edge(CLK_I) THEN
            IF (CNT > LA_R) OR (LA_R = cZeroPW) THEN
                LED_R(0) <= '0';
            ELSE 
                LED_R(0) <= '1';
            END IF;
            IF (CNT > LA_G) OR (LA_G = cZeroPW) THEN
                LED_G(0) <= '0';
            ELSE 
                LED_G(0) <= '1';
            END IF;
            IF (CNT > LA_B) OR (LA_B = cZeroPW) THEN
                LED_B(0) <= '0';
            ELSE 
                LED_B(0) <= '1';
            END IF;
            IF (CNT > LB_R) OR (LB_R = cZeroPW) THEN
                LED_R(1) <= '0';
            ELSE 
                LED_R(1) <= '1';
            END IF;
            IF (CNT > LB_G) OR (LB_G = cZeroPW) THEN
                LED_G(1) <= '0';
            ELSE 
                LED_G(1) <= '1';
            END IF;
            IF (CNT > LB_B) OR (LB_B = cZeroPW) THEN
                LED_B(1) <= '0';
            ELSE 
                LED_B(1) <= '1';
            END IF;
            IF (CNT > LC_R) OR (LC_R = cZeroPW) THEN
                LED_R(2) <= '0';
            ELSE 
                LED_R(2) <= '1';
            END IF;
            IF (CNT > LC_G) OR (LC_G = cZeroPW) THEN
                LED_G(2) <= '0';
            ELSE 
                LED_G(2) <= '1';
            END IF;
            IF (CNT > LC_B) OR (LC_B = cZeroPW) THEN
                LED_B(2) <= '0';
            ELSE 
                LED_B(2) <= '1';
            END IF;
            IF (CNT > LD_R) OR (LD_R = cZeroPW) THEN
                LED_R(3) <= '0';
            ELSE 
                LED_R(3) <= '1';
            END IF;
            IF (CNT > LD_G) OR (LD_G = cZeroPW) THEN
                LED_G(3) <= '0';
            ELSE 
                LED_G(3) <= '1';
            END IF;
            IF (CNT > LD_B) OR (LD_B = cZeroPW) THEN
                LED_B(3) <= '0';
            ELSE 
                LED_B(3) <= '1';
            END IF;
            IF (CNT > LE_R) OR (LE_R = cZeroPW) THEN
                LED_R(4) <= '0';
            ELSE 
                LED_R(4) <= '1';
            END IF;
            IF (CNT > LE_G) OR (LE_G = cZeroPW) THEN
                LED_G(4) <= '0';
            ELSE 
                LED_G(4) <= '1';
            END IF;
            IF (CNT > LE_B) OR (LE_B = cZeroPW) THEN
                LED_B(4) <= '0';
            ELSE 
                LED_B(4) <= '1';
            END IF;
            IF (CNT > LF_R) OR (LF_R = cZeroPW) THEN
                LED_R(5) <= '0';
            ELSE 
                LED_R(5) <= '1';
            END IF;
            IF (CNT > LF_G) OR (LF_G = cZeroPW) THEN
                LED_G(5) <= '0';
            ELSE 
                LED_G(5) <= '1';
            END IF;
            IF (CNT > LF_B) OR (LF_B = cZeroPW) THEN
                LED_B(5) <= '0';
            ELSE 
                LED_B(5) <= '1';
            END IF;
            IF (CNT > LG_R) OR (LG_R = cZeroPW) THEN
                LED_R(6) <= '0';
            ELSE 
                LED_R(6) <= '1';
            END IF;
            IF (CNT > LG_G) OR (LG_G = cZeroPW) THEN
                LED_G(6) <= '0';
            ELSE 
                LED_G(6) <= '1';
            END IF;
            IF (CNT > LG_B) OR (LG_B = cZeroPW) THEN
                LED_B(6) <= '0';
            ELSE 
                LED_B(6) <= '1';
            END IF;
            IF (CNT > LH_R) OR (LH_R = cZeroPW) THEN
                LED_R(7) <= '0';
            ELSE 
                LED_R(7) <= '1';
            END IF;
            IF (CNT > LH_G) OR (LH_G = cZeroPW) THEN
                LED_G(7) <= '0';
            ELSE 
                LED_G(7) <= '1';
            END IF;
            IF (CNT > LH_B) OR (LH_B = cZeroPW) THEN
                LED_B(7) <= '0';
            ELSE 
                LED_B(7) <= '1';
            END IF;

            IF P >= cPrescaleMax THEN
                P <= (OTHERS => '0');
                IF RST_I='1' THEN
                    CNT <= (OTHERS => '0');
                ELSIF CNT >= cCounterMax THEN
                    CNT <= (OTHERS => '0');
                ELSE
                    CNT <= CNT + 1;
                END IF;
            ELSE
                P <= P + 1;
            END IF;
        END IF;
    END PROCESS;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
    PROCESS(ADR_I, LA_R, LA_G, LA_B, LB_R, LB_G, LB_B, LC_R, LC_G, LC_B, LD_R, LD_G, LD_B, LE_R, LE_G, LE_B, LF_R, LF_G, LF_B, LG_R, LG_G, LG_B, LH_R, LH_G, LH_B)
    BEGIN
        CASE ADR_I IS
            WHEN "00000" =>
                DAT_O <= LA_R;
            WHEN "00001" =>
                DAT_O <= LA_G;
            WHEN "00010" =>
                DAT_O <= LA_B;
            WHEN "00011" =>
                DAT_O <= LB_R;
            WHEN "00100" =>
                DAT_O <= LB_G;
            WHEN "00101" =>
                DAT_O <= LB_B;
            WHEN "00110" =>
                DAT_O <= LC_R;
            WHEN "00111" =>
                DAT_O <= LC_G;
            WHEN "01000" =>
                DAT_O <= LC_B;
            WHEN "01001" =>
                DAT_O <= LD_R;
            WHEN "01010" =>
                DAT_O <= LD_G;
            WHEN "01011" =>
                DAT_O <= LD_B;
            WHEN "01100" =>
                DAT_O <= LE_R;
            WHEN "01101" =>
                DAT_O <= LE_G;
            WHEN "01110" =>
                DAT_O <= LE_B;
            WHEN "01111" =>
                DAT_O <= LF_R;
            WHEN "10000" =>
                DAT_O <= LF_G;
            WHEN "10001" =>
                DAT_O <= LF_B;
            WHEN "10010" =>
                DAT_O <= LG_R;
            WHEN "10011" =>
                DAT_O <= LG_G;
            WHEN "10100" =>
                DAT_O <= LG_B;
            WHEN "10101" =>
                DAT_O <= LH_R;
            WHEN "10110" =>
                DAT_O <= LH_G;
            WHEN "10111" =>
                DAT_O <= LH_B;
            WHEN OTHERS =>
                DAT_O <= (OTHERS => '0');
        END CASE;
    END PROCESS;
--------------------------------------------------------------------------------
END structure;
--------------------------------------------------------------------------------
