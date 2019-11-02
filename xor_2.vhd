----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name:    XOR - Dataflow 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_2 is
    Port ( a,b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end xor_2;

architecture Dataflow of xor_2 is
begin
y<= a xor b;
end Dataflow;

