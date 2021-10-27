----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2021 10:46:54 AM
-- Design Name: 
-- Module Name: merge1 - Behavioral
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

entity merge1 is
--  Port ( );
    port (
          in1_1 , in2_1 : in std_logic_vector (7 downto 0);
          out1_1 , out2_1 : out std_logic_vector (7 downto 0)
         );
end merge1;

architecture Behavioral of merge1 is
begin

process (in1_1 , in2_1) is 
begin
    if (in1_1 <= in2_1) then
        out1_1 <= in1_1;
        out2_1 <= in2_1;
    else
        out1_1 <= in2_1;
        out2_1 <= in1_1;
    end if;
end process;

end Behavioral;
