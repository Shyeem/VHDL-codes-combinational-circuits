-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity NANDgate_three_input is

port ( A,B,C : in std_logic;
	F    : out std_logic);

end NANDgate_three_input;

-- architecture
architecture exa_nand3 of NANDgate_three_input is
begin
	
	F <= NOT(A AND B AND C);

end exa_nand3;
