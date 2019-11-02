----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name:    AND - Dataflow 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity notGate is
   port( inPort : in std_logic;
        outPort : out std_logic);
end notGate;

architecture Behavioral of notGate is
begin
   outPort <= not inPort;
end Behavioral;

