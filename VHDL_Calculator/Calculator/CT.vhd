-----------------------------------------------------------------------------
-- Engineer  Josue Llamas
-- Create Date:   13:54:52 01/25/2016  
-- Module Name:   C:/Users/Gllamas/Documents/ECE424L/Calculator/CT.vhd
-- Project Name:  Calculator
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
---------------------------------------------------------- 
ENTITY CT IS
END CT;
------------------------------------------------------------------------------- 
ARCHITECTURE behavior OF CT IS 
 -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Controlunit
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         sub : IN  std_logic;
         clk : IN  std_logic;
         PD2 : OUT  std_logic_vector(3 downto 0);
         PD1 : OUT  std_logic_vector(3 downto 0);
         PD0 : OUT  std_logic_vector(3 downto 0);
         QD1 : OUT  std_logic_vector(3 downto 0);
         QD0 : OUT  std_logic_vector(3 downto 0);
         RD1 : OUT  std_logic_vector(3 downto 0);
         RD0 : OUT  std_logic_vector(3 downto 0));
    END COMPONENT;
   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal sub : std_logic := '0';
   signal clk : std_logic := '0';
   --Outputs
   signal PD2 : std_logic_vector(3 downto 0);
   signal PD1 : std_logic_vector(3 downto 0);
   signal PD0 : std_logic_vector(3 downto 0);
   signal QD1 : std_logic_vector(3 downto 0);
   signal QD0 : std_logic_vector(3 downto 0);
   signal RD1 : std_logic_vector(3 downto 0);
   signal RD0 : std_logic_vector(3 downto 0);
------------------------------------------------------
BEGIN
---- Instantiate the Unit Under Test (UUT)
   uut: Controlunit PORT MAP (
          a => a,
          b => b,
          sub => sub,
          clk => clk,
          PD2 => PD2,
          PD1 => PD1,
          PD0 => PD0, 
          QD1 => QD1,
          QD0 => QD0,
          RD1 => RD1,
          RD0 => RD0);
----------------- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 1 ns;
		clk <= '1';
		wait for 1 ns;
   end process; 
-------------------------- Stimulus process
stim_proc: process
   begin		
      wait for 50 ns;	
		a <= "0001"; b <= "1001"; sub <= '1' ; wait for 50 ns; -- 1  9
		a <= "0101"; b <= "0101"; sub <= '1' ; wait for 50 ns; -- 5  5
		a <= "0001"; b <= "1111"; sub <= '0' ; wait for 50 ns; -- 1  15
		a <= "0010"; b <= "0110"; sub <= '0' ; wait for 50 ns; -- 2  6
		a <= "0010"; b <= "1000"; sub <= '0' ; wait for 50 ns; -- 2  8
		wait;      
   end process;
END;
