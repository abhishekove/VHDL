--------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar 
-- Module Name: Full adder - Test bench
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY FA_struct_HA_tb_vhd IS
END FA_struct_HA_tb_vhd;

ARCHITECTURE behavior OF FA_struct_HA_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT FA_Struct_HA
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;          
		sum : OUT std_logic;
		carry : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a,b,c :  std_logic := '0';

	--Outputs
	SIGNAL sum, carry :  std_logic;
	
BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: FA_Struct_HA PORT MAP(
		a => a,
		b => b,
		c => c,
		sum => sum,
		carry => carry
	);

	PROCESS
	BEGIN
		a<='0';
		wait for 100 ns;
		a<='1';
		wait for 100 ns;
	END PROCESS;
	
	PROCESS
	BEGIN
		b<='0';		
		wait for 200 ns;
		b<='1';
		wait for 200 ns;
	END PROCESS;
	
	PROCESS
	BEGIN
		c<='0';		
		wait for 400 ns;
		c<='1';
		wait for 400 ns;
	END PROCESS;

END;
