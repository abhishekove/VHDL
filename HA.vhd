----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name: Half adder  - Dataflow 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HA is
    Port ( a,b : in  STD_LOGIC;
           s,c : out  STD_LOGIC);
end HA;

architecture Dataflow of HA is
begin
s<= a xor b;
c<= a and b;

end Dataflow;

