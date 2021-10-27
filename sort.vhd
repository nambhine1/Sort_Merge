----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2021 10:37:19 AM
-- Design Name: 
-- Module Name: sort - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sort is
--  Port ( );
    port (
        in1, in2 , in3 , in4 : in std_logic_vector (7 downto 0);
        out1 , out2 , out3 , out4 : out std_logic_vector (7 downto 0)
    );
end sort;

architecture Behavioral of sort is

component merge1 is 
 port (
          in1_1 , in2_1 : in std_logic_vector (7 downto 0);
          out1_1 , out2_1 : out std_logic_vector (7 downto 0)
        
       );
end component;

component merge_2 is 
 port (
          in2_1 , in2_2, in2_3 , in2_4 : in std_logic_vector (7 downto 0);
          out2_1 , out2_2 , out2_3 , out2_4 : out std_logic_vector (7 downto 0)
        
       );
end component;

signal a,b,c, d : std_logic_vector (7 downto 0);

begin

level1_1 : merge1 port map (in1,in2, a,b);
level1_2 : merge1 port map (in3,in4, c,d);
level2_1 : merge_2 port map (a,b,c,d,out1,out2,out3,out4);


end Behavioral;
