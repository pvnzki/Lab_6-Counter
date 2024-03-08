----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2024 09:57:30 PM
-- Design Name: 
-- Module Name: TB_Slow_Clk - Behavioral
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

entity TB_Slow_Clk is
-- Port ( );
end TB_Slow_Clk;

architecture Behavioral of TB_Slow_Clk is

component Slow_Clk
    port(   Clk_in : in std_logic;
            Clk_out : out std_logic
          );
    end component;

    signal Clk_in, Clk_out : std_logic;

begin

    -- Instantiate Slow_Clk component
    UUT: Slow_Clk port map (
        Clk_in => Clk_in,
        Clk_out => Clk_out
    );

    -- Process to generate clock signal
    process
    begin
        Clk_in <= '0';
        wait for 10 ns;  -- Half period of the clock
        Clk_in <= '1';
        wait for 10 ns;  -- Half period of the clock
    end process;

end Behavioral;
