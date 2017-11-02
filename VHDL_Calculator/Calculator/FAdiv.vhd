----------------------------------------------------------------------------------
-- Company: 
-- Engineer: JOSUE LLAMAS
-- 
-- Create Date:    21:30:02 01/21/2016 
-- Design Name: 
-- Module Name:    FAdiv - FAdivA 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FAdiv is
    Port ( Sin : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           bi : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           Sout : out  STD_LOGIC;
           cout : out  STD_LOGIC);
    end FAdiv;
 
architecture FAdivA of FAdiv is
signal x: std_logic;
begin
	x <= Bin xor bi;
	Sout <= Sin xor x xor cin;
	cout <= (sin and x) or ( sin  and cin ) or ( x and cin);



end FAdivA;

