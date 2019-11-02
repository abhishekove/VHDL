----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name:    AND - Dataflow 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_3 is
    Port ( a,b,c : in  STD_LOGIC;
           y : out  STD_LOGIC);
end and_3;

architecture Behavioral of and_3 is

begin
y<= a and b and c;

end Behavioral;

