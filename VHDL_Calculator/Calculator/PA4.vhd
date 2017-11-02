----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:04 01/24/2016 
-- Design Name: 
-- Module Name:    PA4add - PA4AA 
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

entity PA4add is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           ov : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end PA4add;

architecture PA4AA of PA4add is
	component FAadder is
		 Port ( x : in  STD_LOGIC;
				  y : in  STD_LOGIC;
				  cin : in  STD_LOGIC;
				  s : out  STD_LOGIC;
				  cout : out  STD_LOGIC);
				  
		 end component;

	signal c : std_logic_vector (4 downto 1);

begin
FA1: FAadder port map ( x(0), y(0), cin , s(0), c(1));
FA2: FAadder port map ( x(1), y(1), c(1), s(1), c(2));
FA3: FAadder port map ( x(2), y(2), c(2), s(2), c(3));
FA4: FAadder port map ( x(3), y(3), c(3), s(3), c(4));

ov   <= C(4) xor c(3);
cout <= c(4);




end PA4AA;

