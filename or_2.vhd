----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name:    OR - Dataflow 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_2 is
    Port ( a,b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end or_2;

architecture Dataflow of or_2 is
begin
y<= a or b;
end Dataflow;
