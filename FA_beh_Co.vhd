--------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar 
-- Module Name: Full adder - Test bench
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY FA_beh_Co_vhd IS
END FA_beh_Co_vhd;

ARCHITECTURE behavior OF FA_beh_Co_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT FA_beh
	PORT(
		abc : IN std_logic_vector(2 downto 0);          
		ca_sum : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL abc :  std_logic_vector(2 downto 0) := (others=>'0');

	--Outputs
	SIGNAL ca_sum :  std_logic_vector(1 downto 0);

BEGIN
	-- Instantiate the Unit Under Test (UUT)
	uut: FA_beh PORT MAP(abc => abc,	ca_sum => ca_sum);
	PROCESS
	BEGIN
		abc<="000";
		wait for 100 ns;
		abc<="001";
		wait for 100 ns;
		abc<="010";
		wait for 100 ns;
		abc<="011";
		wait for 100 ns;
		abc<="100";
		wait for 100 ns;
		abc<="101";
		wait for 100 ns;
		abc<="110";
		wait for 100 ns;
		abc<="111";
		wait for 100 ns;
	end process;
END behavior;
