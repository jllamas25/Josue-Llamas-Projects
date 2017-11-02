----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 																			Josue Llamas 
--                                                                   Spartan 3E
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Controlunit is
    Port (   a : in  STD_LOGIC_VECTOR (3 downto 0);
             b : in  STD_LOGIC_VECTOR (3 downto 0);
			   sub: in STD_LOGIC;
           clk : in  STD_LOGIC;
           PD2 : out  STD_LOGIC_VECTOR (3 downto 0);
           PD1 : out  STD_LOGIC_VECTOR (3 downto 0);
           PD0 : out  STD_LOGIC_VECTOR (3 downto 0);
           QD1 : out  STD_LOGIC_VECTOR (3 downto 0);
           QD0 : out  STD_LOGIC_VECTOR (3 downto 0);
           RD1 : out  STD_LOGIC_VECTOR (3 downto 0);
           RD0 : out  STD_LOGIC_VECTOR (3 downto 0));
end Controlunit;

architecture Behavioral of Controlunit is
----------------------------------------------------
------------ Components -----------------------------------
component PM4 is
    Port ( --
				 a : in  STD_LOGIC_VECTOR (3 downto 0);
				  b : in  STD_LOGIC_VECTOR (3 downto 0);
				--cin : in  STD_LOGIC;
				  P : out  STD_LOGIC_VECTOR (7 downto 0)
				--cout: out std_logic
				);
	 end component;
-------------------------------------------------------
component AddSub is
    Port ( --clk : in  STD_LOGIC;
				a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           op : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC
          -- ov : out  STD_LOGIC
			  );
	 end component;
-------------------------------------------------------
component ArrayDivider is
    Port ( --clk : in  STD_LOGIC;
				A : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
			 --bi : in  STD_LOGIC;
           --R : out  STD_LOGIC_VECTOR (3 downto 0);
            Q: out  STD_LOGIC_VECTOR (3 downto 0));
	 end component;
------------------------------------------------------
component B2BCD is
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
		end component;
--------------------------------------------------------
--------------------------------------------------------
----------------Signals---------------------------------

signal cout : std_logic;
signal 			 p : STD_LOGIC_VECTOR (7 downto 0);
signal          Q : STD_LOGIC_VECTOR (3 downto 0);
signal          R : STD_LOGIC_VECTOR (3 downto 0);

begin 

dev1 :          PM4 Port map (  a, b, P);
dev2 : ArrayDivider port map (  a, b, q);
dev3 : AddSub       port map (  a, b, sub,  R, cout);
dev4 : B2BCD        port map ( clk, cout,sub, P, Q, R, PD2,PD1, PD0,  QD1, QD0, RD1, RD0);

end Behavioral;

