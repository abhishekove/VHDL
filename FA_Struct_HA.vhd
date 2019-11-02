----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name:    Full Adder - Structural 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_Struct_HA is
    Port ( a,b,c : in  STD_LOGIC;
           sum,carry : out  STD_LOGIC);
end FA_Struct_HA;

architecture Structural of FA_Struct_HA is
component HA
	Port (a,b: in  STD_LOGIC;
			s,c: out  STD_LOGIC);
end component;

component or_2
	Port ( a,b : in  STD_LOGIC;
			 y : out  STD_LOGIC);
end component;

signal s1,s2,s3: std_logic;

begin
ha1: HA port map (a,b,s1,s2);
ha2: HA port map (a,s1,sum,s3);
r1: or_2 port map (s2,s3,carry);
end Structural;

