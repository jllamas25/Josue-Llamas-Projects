----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:53 01/17/2016 
-- Design Name: 
-- Module Name:    FA - FAA 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA is
    Port ( Sin : in  STD_LOGIC;
           ain : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sout : out  STD_LOGIC;
           cout : out  STD_LOGIC);
    end FA;

architecture FAA of FA is
signal x: std_logic;
begin
	x <= ain and bin;
	Sout <= Sin xor x xor cin;
	cout <= (sin and x) or ( sin  and cin ) or ( x and cin);
	
end FAA;

