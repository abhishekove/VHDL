----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:19:27 06/16/2016 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
    Port ( output : out  STD_LOGIC_VECTOR (2 downto 0);
           preset,clear,clk,up_dwn,rst : in  STD_LOGIC);
end Counter;

architecture Behavioral of Counter is
begin
 process(clk)
 variable temp: STD_LOGIC_VECTOR (2 downto 0);
  begin
	if (clk' event and clk='1') then
		if (preset = '1') then
			temp := "111";
		elsif (clear = '1') then
			temp := "000";
		elsif (up_dwn = '1' ) then
			temp := temp + '1';
		else 
			temp := temp - '1';
		end if;
	end if;
	output<= temp;
end process;
end Behavioral;

