
----------------------------------------------------------------------------------
-- Company:  I2IT 
-- Engineer: Parag Hirulkar
-- Module Name:    MUX 4:1 - Dataflow 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_41_dataflow is
    Port ( i : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           sel : in  STD_LOGIC_VECTOR (1 DOWNTO 0);
			  y : out STD_LOGIC);
end Mux_41_dataflow;

architecture Dataflow of Mux_41_dataflow is

begin

with sel select
y<= i(0) when "00",
    i(1) when "01",
    i(2) when "10",
    i(3) when others;

end Dataflow;

