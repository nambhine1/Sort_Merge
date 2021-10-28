----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2021 10:53:40 AM
-- Design Name: 
-- Module Name: merge2 - Behavioral
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

entity merge_2 is
--  Port ( );
    port (
          in2_1 , in2_2, in2_3 , in2_4 : in std_logic_vector (7 downto 0);
          out2_1 , out2_2 , out2_3 , out2_4 : out std_logic_vector (7 downto 0)
         );
end merge_2;

architecture Behavioral of merge_2 is
signal flag : std_logic;
begin

process (in2_1 , in2_2 , in2_3 , in2_4) is 
begin
  if ((in2_1 < in2_3) and (in2_2 <in2_3) and (in2_2 < in2_4)) then
        out2_1 <= in2_1;
        out2_2 <= in2_2;
        out2_3 <= in2_3;
        out2_4 <= in2_4;
  elsif ((in2_1 < in2_3) and (in2_2 > in2_3) and (in2_2 > in2_4)) then
        out2_1 <= in2_1;
        out2_2 <= in2_3;
        out2_3 <= in2_4;
        out2_4 <= in2_2;
  elsif ((in2_1 < in2_3) and (in2_2 > in2_3) and (in2_2 < in2_4)) then
        out2_1 <= in2_1;
        out2_2 <= in2_3;
        out2_3 <= in2_2;
        out2_4 <= in2_4;
 elsif ((in2_1 > in2_3) and (in2_4 <in2_1) and (in2_4 < in2_2)) then
        out2_1 <= in2_3;
        out2_2 <= in2_4;
        out2_3 <= in2_1;
        out2_4 <= in2_2;
elsif ((in2_1 > in2_3) and (in2_4 >in2_1) and (in2_4 > in2_2)) then
        out2_1 <= in2_3;
        out2_2 <= in2_1;
        out2_3 <= in2_2;
        out2_4 <= in2_4;

elsif ((in2_1 > in2_3) and (in2_4 >in2_1) and (in2_4 < in2_2)) then
        out2_1 <= in2_3;
        out2_2 <= in2_1;
        out2_3 <= in2_4;
        out2_4 <= in2_2;
else
  -- do nothing,  
  end if;
end process;

end Behavioral;
