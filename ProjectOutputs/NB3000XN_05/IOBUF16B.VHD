-- -----------------------------------------------------------------
-- "Copyright (C) Altium Limited 2003"
-- -----------------------------------------------------------------
-- Component Name: 	IOBUF16B
-- Description: 	16-Bit Input/Output Buffer, Bus Version, Bus Version
-- Core Revision: 	1.00.00
-- -----------------------------------------------------------------
-- Modifications with respect to Version  : 
--
--
-- -----------------------------------------------------------------

library IEEE;
use IEEE.Std_Logic_1164.all;

entity IOBUF16B is
  port (
    T  : in    std_logic;
    I  : in    std_logic_vector(15 downto 0);
    IO : inout std_logic_vector(15 downto 0);
    O  : out   std_logic_vector(15 downto 0)
    );
end IOBUF16B;

architecture STRUCTURE of IOBUF16B is

begin

  O <= IO;
  IO <= I when T = '0' else (others => 'Z');

end STRUCTURE;
