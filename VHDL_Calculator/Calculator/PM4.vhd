----------------------------------------------------------------------------------
-- Engineer: Josue Llamas
-- Create Date:    17:21:00 01/17/2016 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PM4 is
    Port (    a : in  STD_LOGIC_VECTOR (3 downto 0);
				  b : in  STD_LOGIC_VECTOR (3 downto 0);
				  P : out  STD_LOGIC_VECTOR (7 downto 0));
end PM4;
architecture PM4A of PM4 is
	component FA is
    Port ( Sin : in  STD_LOGIC;
           ain : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sout : out  STD_LOGIC;
           cout : out  STD_LOGIC);
	end component;
----------------------------------------------------------
	signal sin, cin : std_logic :='0';
	signal c1,c2,c3,c4   : std_logic_vector ( 4 downto 1);
	signal S, S1, S2, S3  : std_logic_vector ( 3 downto 0);
----------------------------------------------------------
begin
 FA1: FA port map (sin ,A(0), B(0), cin ,  S(0), c1(1));
 FA2: FA port map (sin ,A(1), B(0), c1(1), S(1), c1(2));
 FA3: FA port map (sin ,A(2), B(0), c1(2), S(2), c1(3));
 FA4: FA port map (sin ,A(3), B(0), c1(3), S(3), c1(4));
 
 FA5: FA port map (S(1) ,A(0), B(1), cin ,  S1(0), c2(1));
 FA6: FA port map (S(2) ,A(1), B(1), c2(1), S1(1), c2(2));
 FA7: FA port map (S(3) ,A(2), B(1), c2(2), S1(2), c2(3));
 FA8: FA port map (c1(4) , A(3), B(1), c2(3), S1(3), c2(4));
 
 FA9:  FA port map (S1(1) ,A(0), B(2), cin ,  S2(0), c3(1));
 FA10: FA port map (S1(2) ,A(1), B(2), c3(1), S2(1), c3(2));
 FA11: FA port map (S1(3) ,A(2), B(2), c3(2), S2(2), c3(3));
 FA12: FA port map (c2(4)   ,A(3), B(2), c3(3), S2(3), c3(4));
 
 FA13: FA port map (S2(1) ,A(0), B(3), cin ,  S3(0), c4(1));
 FA14: FA port map (S2(2) ,A(1), B(3), c4(1), S3(1), c4(2));
 FA15: FA port map (S2(3) ,A(2), B(3), c4(2), S3(2), c4(3));
 FA16: FA port map (c3(4)   ,A(3), B(3), c4(3), S3(3), c4(4));
 
 P(7) <= c4(4);
 P(6) <= S3(3);
 P(5) <= S3(2);
 P(4) <= S3(1); 
 P(3) <= S3(0);
 P(2) <= S2(0); 
 P(1) <= S1(0);
 P(0) <=  S(0);
 end PM4A;

