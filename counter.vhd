----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Milan Rai 
-- 
-- Create Date:    20:34:52 12/22/2019 
-- Design Name: 
-- Module Name:    binaryCounter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binaryCounter is
    Port ( led : out  STD_LOGIC_VECTOR (3 downto 0);
           clock : in  STD_LOGIC);
end binaryCounter;

architecture Behavioral of binaryCounter is
	signal counter : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin
	led <= counter(15 downto 12);
	count: process(clock)
		begin 
			if rising_edge(clock) then
				counter <= counter+1;
			end if;
		end process;
end Behavioral;

