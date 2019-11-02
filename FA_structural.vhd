----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name:    Full Adder - Structural 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_structural is
    Port ( a,b,c : in  STD_LOGIC;
           sum,carry : out  STD_LOGIC);
end FA_structural;

architecture Structural of FA_structural is
component and_2
	Port ( a,b : in  STD_LOGIC;
			 y : out  STD_LOGIC);
end component; 

component xor_2
	Port ( a,b : in  STD_LOGIC;
			 y : out  STD_LOGIC);
end component;
 
component or_2
	Port ( a,b : in  STD_LOGIC;
			 y : out  STD_LOGIC);
end component;

signal s1,s2,s3: std_logic;
begin
x1: xor_2 port map (a,b,s1);
a1: and_2 port map (a,b,s2);
x2: xor_2 port map (s1,c,sum);
a2: and_2 port map (s1,c,s3);
r1: or_2 port map (s2,s3,carry);
end Structural;

