-- library declaration

library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity generic_decoder_type is
 port (D_IN	   : in std_logic_vector(3 downto 0);
       SZ_OUT      : out std_logic_vector(2 downto 0));
end generic_decoder_type;

-- architecture
architecture deco of generic_decoder_type is
   begin
      with D_IN	 select
	SZ_OUT <= "100" when "0000"|"0001"|"0010"|"0011",
		  "010" when "0100"|"0101"|"0110"|"0111"|"1000"|"1001",
		  "001" when "1010"|"1011"|"1100"|"1101"|"1110"|"1111",
		  "000" when others;
end deco;
