----------------------------------------------------------------------------------
-- Company:  PCCOE 
-- Engineer: MRS.SMITA KHAIRNAR
-- Module Name:    Full Adder - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_beh is
    Port ( abc : in  STD_LOGIC_VECTOR (2 DOWNTO 0);
           ca_sum : out  STD_LOGIC_VECTOR (1 DOWNTO 0));
end FA_beh;

architecture Behavioral of FA_beh is
begin
	process( abc)
	begin
		case  abc is 
			when "000"=> ca_sum <= "00";
			when "001"=> ca_sum <= "01";
			when "010"=> ca_sum <= "01";
			when "011"=> ca_sum <= "10";
			when "100"=> ca_sum <= "01";
			when "101"=> ca_sum <= "10";
			when "110"=> ca_sum <= "10";
			when "111"=> ca_sum <= "11";
			when others => ca_sum <= "--";
		end case;
	end process;
		
end Behavioral;

