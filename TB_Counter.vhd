----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 02:06:03 PM
-- Design Name: 
-- Module Name: Counter_Sim - Behavioral
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

entity Counter_Sim is
--  Port ( );
end Counter_Sim;

architecture Behavioral of Counter_Sim is
component Counter
         Port ( Dir : in STD_LOGIC;
                Res :  in STD_LOGIC;
                Clk :  in STD_LOGIC;
                Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;
signal Dir,Res :STD_LOGIC;
signal Q:STD_LOGIC_VECTOR (2 downto 0);
signal Clk : STD_LOGIC :='0';
begin
    UUT: Counter
    port map(
    Clk => Clk,
    Dir => Dir,
    Res => Res,
    Q => Q
);
process
begin
wait for 5ns;
Clk <= NOT Clk;
end process;
process
begin
    Res <= '1';
    Dir <= '1';
    wait for 100ns;
    Res <= '0';
    wait for 100ns;
    Dir <= '0';
    wait for 100ns;
    Res <= '1';
    wait;
end process;

end Behavioral;
