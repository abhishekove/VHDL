
----------------------------------------------------------------------------------
-- Company:  PCCOE 
-- Engineer: Smita Khairnar
-- Module Name:    MUX 4:1 - Structural 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_41_structual is
port( D0, D1, D2, D3: in std_logic; -- the data lines
      S0, S1 : in std_logic; -- the selector switches
      F : out std_logic);-- the output
end Mux_41_structual;

architecture Behavioral of Mux_41_structual is
component and_3
	Port ( a,b,c : in  STD_LOGIC;
			 y : out  STD_LOGIC);
end component; 

component or_2
	Port ( a,b : in  STD_LOGIC;
			 y : out  STD_LOGIC);
end component;

component notGate is         --import NOT Gate entity
  port( inPort : in std_logic;
        outPort : out std_logic);
end component;

signal invOut0, invOut1  : std_logic;
signal andOut1, andOut2, andOut3, andOut4 : std_logic;
signal orTop, orBot, orOut  : std_logic;

begin
   -- Just like the real circuit, there are 
   -- four components: G1 to G4
   GI1: notGate  port map(S0, invOut0);
   GI2: notGate  port map(S1, invOut1);

   GA1: and_3  port map(invOut1, invOut0, D0, andOut1);
   GA2: and_3  port map(invOut1, S0, D1, andOut2);
   GA3: and_3  port map(S1, invOut0, D2, andOut3);
   GA4: and_3  port map(S1, S0, D3, andOut4);

   GO1: or_2   port map(andOut1, andOut2, orTop);
   GO2: or_2   port map(andOut3, andOut4, orBot);
   GO3: or_2   port map(orTop, orBot, F);      
end Behavioral;

