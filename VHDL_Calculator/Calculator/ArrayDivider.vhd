----------------------------------------------------------------------------------
-- Engineer: Josue Llamas
-- Create Date:    21:52:27 01/21/2016  
-- Module Name:    ArrayDivider - ArrayDividerA 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ArrayDivider is
    Port (    A : in  STD_LOGIC_VECTOR (3 downto 0);
				  b : in  STD_LOGIC_VECTOR (3 downto 0);
				  Q : out  STD_LOGIC_VECTOR (3 downto 0));
end ArrayDivider;
--------------------------------------------------------------------
architecture ArrayDividerA of ArrayDivider is
	component FAdiv is
		 Port ( Sin : in  STD_LOGIC;
				  Bin : in  STD_LOGIC;
				   bi : in  STD_LOGIC;
				  cin : in  STD_LOGIC;
				 sout : out  STD_LOGIC;
				 cout : out  STD_LOGIC);
	end component;
---------------Signal------------------------------
	signal sin : std_logic :='0';
   signal bi : std_logic :='1';
	signal c1,c2,c3,c4    : std_logic_vector ( 4 downto 1);
	signal S, S1, S2, S3  : std_logic_vector ( 3 downto 0);
-----------------------------------------------------------
begin
 FA1: FAdiv port map (sin,A(3), bi , c1(3) ,  S(3), c1(4));
 FA2: FAdiv port map (sin,A(2), bi , c1(2) ,  S(2), c1(3));
 FA3: FAdiv port map (sin,A(1), bi , c1(1) ,  S(1), c1(2));
 FA4: FAdiv port map (b(3),A(0), bi , bi   ,  S(0), c1(1));
 
 FA5: FAdiv port map (S(2),A(3), c1(4), c2(3) ,  S1(3), c2(4));
 FA6: FAdiv port map (S(1),A(2), c1(4), c2(2) ,  S1(2), c2(3));
 FA7: FAdiv port map (S(0),A(1), c1(4), c2(1) ,  S1(1), c2(2));
 FA8: FAdiv port map (b(2),A(0),  c1(4), C1(4) ,   S1(0), c2(1));

  FA9: FAdiv port map (S1(2),A(3), c2(4), c3(3) ,  S2(3), c3(4));
 FA10: FAdiv port map (S1(1),A(2), c2(4), c3(2) ,  S2(2), c3(3));
 FA11: FAdiv port map (S1(0),A(1), c2(4), c3(1) ,  S2(1), c3(2));
 FA12: FAdiv port map (b(1) ,A(0), c2(4), c2(4) ,  S2(0), c3(1));
 
 FA13: FAdiv port map (S2(2),A(3), c3(4), c4(3) ,  S3(3), c4(4));
 FA14: FAdiv port map (S2(1),A(2), c3(4), c4(2) ,  S3(2), c4(3));
 FA15: FAdiv port map (S2(0),A(1), c3(4), c4(1) ,  S3(1), c4(2));
 FA16: FAdiv port map (b(0) ,A(0), c3(4), c3(4) ,  S3(0), c4(1));
-- R(0) <= S3(0); 
-- R(1) <= S3(1);
-- R(2) <= S3(2);
-- R(3) <= S3(3);
 Q(3) <= c1(4);
 Q(2) <= c2(4); 
 Q(1) <= c3(4);
 Q(0) <=  c4(4);
end ArrayDividerA;

