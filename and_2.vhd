----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name:    AND - Dataflow 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_2 is
    Port ( a,b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end and_2;

architecture Dataflow of and_2 is
begin
y<= a and b;
end Dataflow;

