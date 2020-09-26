--when A=B output is 1
-- library declaration
library IEEE;
use IEEE.std_logic_1164.all;
                                             
-- entity
entity Comparator_4bit is 

port(  A, B   : in std_logic_vector(3 downto 0);     
       Equals : out std_logic) ;                      

end Comparator_4bit;   
  

--Architecture
--Structural description
architecture structural of Comparator_4bit is
  signal x : std_logic_vector(3 downto 0);	
   begin
	X(3)<= A(3) xnor B(3);
	X(2)<= A(2) xnor B(2);
	X(1)<= A(1) xnor B(1);
	X(0)<= A(0) xnor B(0);

	Equals <=  X(3) and X(2) and X(1) and X(0);
end structural; 
