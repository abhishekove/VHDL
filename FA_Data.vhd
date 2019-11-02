----------------------------------------------------------------------------------
-- Company:  PCCOE 
-- Engineer: SMITA KHAIRNAR
-- Module Name:    Full Adder - Dataflow 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_Data is
    Port ( a,b,c : in  STD_LOGIC;
           sum,ca : out  STD_LOGIC);
end FA_Data;

architecture Dataflow of FA_Data is
begin
	sum<= a xor b xor c;
	ca<= (a and b) or (b and c) or (a and c);
end Dataflow;

