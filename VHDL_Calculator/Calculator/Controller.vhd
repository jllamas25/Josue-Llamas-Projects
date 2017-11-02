----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:13:06 01/14/2016 
-- Design Name: 
-- Module Name:    Controller - ControllerA 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Controller is
    Port (  clk : in  STD_LOGIC;
           RADD : out  STD_LOGIC_VECTOR (4 downto 0);
           DOUT : in  STD_LOGIC_VECTOR (7 downto 0);
			  PWADD : in  STD_LOGIC_VECTOR (4 downto 0);
           PDOUT : in  STD_LOGIC_VECTOR (7 downto 0);
			 Reset : in  STD_LOGIC;
				  W : out STD_LOGIC;
           WADD : out STD_LOGIC_VECTOR (4 downto 0);
            DIN : out STD_LOGIC_VECTOR (7 downto 0));
end Controller;

architecture ControllerA of Controller is

type state_type is (S0, S1, S2);
signal state: state_type;
signal rad1, wad1 :std_logic_vector (4 downto 0) := "00000";
begin
	process 
		begin
		wait until (clk'event and clk = '1');
		if Reset = '1' then state <= S0;
		
		else
		--	wait until (clk'event and clk = '1');
			case state is
			
				when S0 => rad1 <= "00000";
							  WAD1 <= "00000";
							 state <= S1;
				when S1 => if WAD1 = PWADD then DIN <= PDOUT; state <= S2;
									else DIN <= DOUT; state <=S2;
								end if;
				when S2 => 
					  if ( RAD1 = "11111") then state <=S0; 
							else RAD1 <= RAD1 + "00001"; WAD1 <= WAD1 + "00001"; state <=S1; 
					 end if;
			end case;
		end if;
	end process;
	 w <= '1' when state = S2 else '0';
	RADD <= rad1;
   WADD <= wad1;
end ControllerA;

