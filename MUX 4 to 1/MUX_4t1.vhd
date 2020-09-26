-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity MUX_4t1 is

  port(D3,D2,D1,D0 : in std_logic;
      SEL         : in std_logic_vector(1 downto 0);
      MX_OUT      : out std_logic);

end MUX_4t1;

-- architecture
architecture mux4t1 of MUX_4t1 is

  begin

	MX_OUT <= D3 when (SEL = "11") else
		  D2 when (SEL = "10") else
  		  D1 when (SEL = "01") else
		  D0 when (SEL = "00") else
		  '0';
end mux4t1;
