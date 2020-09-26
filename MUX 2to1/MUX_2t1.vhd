--library declaration
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--entity
entity multiplexer is
 port( A, B, Mux_Control : in STD_LOGIC;
       Mux_Out1, Mux_Out2,
       Mux_Out3, Mux_Out4 : out STD_LOGIC );
end multiplexer;

--architecture
ARCHITECTURE behavior of multiplexer is
begin

--just "when"
	Mux_Out1 <= A when Mux_Control = '0' else B;

-- with "select" 
	with Mux_control select
	  Mux_Out2 <= A when '0',
		      B when '1',
                      A when others; -- OTHERS case required since STD_LOGIC
				     -- has values other than "0" or "1"
--using "process"
	process (A, B, Mux_Control)
	begin 				-- Statements inside a process
	  if Mux_Control = '0' THEN 	-- execute sequentially.
		Mux_Out3 <= A;
	  else
		Mux_out3 <= B;
	  end if;

--using "case"
	case Mux_Control is
		when '0' =>
			Mux_Out4 <= A;
		when '1' =>
			Mux_Out4 <= B;
		when others =>
			Mux_Out4 <= A;
	end case;
	end process;
end behavior;
