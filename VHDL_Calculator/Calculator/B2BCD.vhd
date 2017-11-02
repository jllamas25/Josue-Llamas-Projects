---------------------------------------------------------------------------------- 
-- Engineer: Josue Llamas
-- Create Date:    18:20:46 01/24/2016  
-- Module Name:    B2BCD - B2BCDA 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

entity B2BCD is
    Port ( clk : in std_logic;
			  cout,sub: in std_logic;
				 p : in  STD_LOGIC_VECTOR (7 downto 0);
             Q : in  STD_LOGIC_VECTOR (3 downto 0);
             R : in  STD_LOGIC_VECTOR (3 downto 0);
           PD2 : out  STD_LOGIC_VECTOR (3 downto 0);
           PD1 : out  STD_LOGIC_VECTOR (3 downto 0);
           PD0 : out  STD_LOGIC_VECTOR (3 downto 0);
           QD1 : out  STD_LOGIC_VECTOR (3 downto 0);
           QD0 : out  STD_LOGIC_VECTOR (3 downto 0);
           RD1 : out  STD_LOGIC_VECTOR (3 downto 0);
           RD0 : out  STD_LOGIC_VECTOR (3 downto 0));
end B2BCD;
-----------------------------------------------------------------
architecture B2BCDA of B2BCD is
type state_type is (S0,S1, S2, S3, S4); 
signal state : state_type;
signal D2,D1 : std_logic_vector (3 downto 0);
signal A :std_logic_vector (7 downto 0);
begin
	process
		begin
			wait until (clk'event and clk = '1');
			case state  is
				when S0 => D2 <= "0000"; D1 <= "0000"; A <= P; state <= S1;
				When S1 => if A > "01100011" then A <= A - "01100100";
												 D2 <= D2 + "0001" ; 
											 state <= S1;
							elsif A > "00001001" then A <= A - "00001010";
												 D1 <= D1+ "0001"; 
											 state <= S1;
										 else PD2 <= D2; 
												PD1 <= D1; 
												PD0 <= A(3 downto 0);  
												  A <= "0000"&Q ;
												 D1 <= "0000"; 
											 state <= S2;
								end if;
				when S2 => If A > "00001001" then A <= A - "00001010";
												D1 <= D1 + "0001";
									   else QD1 <= D1;
												D1 <= "0000";
											  QD0 <= A(3 downto 0);
											state <= S3;
								end if;
				When S3 => if sub = '0' then A <= "000"&cout&R; state <= S4;
										elsif   cout = '1' then A <= "0000"&R;
     										   state <= S4;
									  else state <= S0;
								end if;
				When S4 => if A > "00001001" then A <= A - "00001010";
														   D1 <= D1 + "0001";
													else RD1 <= D1;
														  RD0 <= A(3 downto 0);
														  state <= S0;
								end if;
				end case;
	end process;
end B2BCDA;

