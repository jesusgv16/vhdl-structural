library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX2TO1_1BIT is


	 port(
		 EM1 : in STD_LOGIC;
		 EM2 : in STD_LOGIC;
		 EMS : in STD_LOGIC;
		 SM : out STD_LOGIC
	     );
end MUX2TO1_1BIT;

architecture MUX2TO1_1BIT of MUX2TO1_1BIT is
	component NOT_1BIT is
	 port(
		 EN : in STD_LOGIC;
		 SN : out STD_LOGIC
	     );
	end component;		 
	component OR2TO1_1BIT is
	 port(
		 EO1 : in STD_LOGIC;
		 EO2 : in STD_LOGIC;
		 SO : out STD_LOGIC
	     );
	end component;
	component AND2TO1_1BIT is
	port(
		 EA1 : in STD_LOGIC;
		 EA2 : in STD_LOGIC;
		 SA : out STD_LOGIC
	     );
	end component;
	SIGNAL EMSN, SA1, SA2: STD_LOGIC;
begin
	N01: NOT_1BIT 		PORT MAP (EMS,EMSN);	
	A01: AND2TO1_1BIT	PORT MAP (EMS,EM1,SA1);
	A02: AND2TO1_1BIT	PORT MAP (EMSN,EM2,SA2);
	O01: OR2TO1_1BIT	PORT MAP (SA1,SA2,SM);
end MUX2TO1_1BIT;
