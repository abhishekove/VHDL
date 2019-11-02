
----------------------------------------------------------------------------------
-- Company:  PCCOE
-- Engineer: Mrs.Smita Khairnar
-- Module Name:    MUX 4:1 - Dataflow 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_41_beh is
Port ( a,b,c,d : in  STD_LOGIC;
s : in  STD_LOGIC_VECTOR (1 downto 0);
y : out  STD_LOGIC);
end Mux_41_beh;

architecture Behavioral of Mux_41_beh is

begin
process (s,a,b,c,d)
	begin
		if (s="00") then 
			y <=a ; 
		elsif (s="01") then 
			y<=b ; 
		elsif (s="10") then 
			y<=c; 
		else 
			y<=d;
		end if;
end process;
end Behavioral;

