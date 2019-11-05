library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND2TO1_1BIT is
	port(
		 EA1 : in STD_LOGIC;
		 EA2 : in STD_LOGIC;
		 SA : out STD_LOGIC
	     );
end AND2TO1_1BIT;

architecture AND2TO1_1BIT of AND2TO1_1BIT is
begin
	SA <= EA1 AND EA2;
end AND2TO1_1BIT;
