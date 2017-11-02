----------------------------------------------------------------------------------
-- Engineer: Josue Llamas
-- Create Date:    17:03:38 01/24/2016 
-- Module Name:    AddSub - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AddSub is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           op : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC );
end AddSub;
--------------------------------------------------------
architecture Behavioral of AddSub is
	component PA4add is
		 Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
				  y : in  STD_LOGIC_VECTOR (3 downto 0);
				  cin : in  STD_LOGIC;
				  cout : out  STD_LOGIC;
				  ov : out  STD_LOGIC;
				  s : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
---------------------Signals--------------------------
signal z : std_logic_vector (3 downto 0);
signal ov: std_logic;
begin
	z <= b xor op&op&op&op;
	add: PA4add port map (a, z, op, cout, ov, s);
end Behavioral;

