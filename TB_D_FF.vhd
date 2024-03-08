----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2024 02:09:36 PM
-- Design Name: 
-- Module Name: TB_D_FF - Behavioral
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

entity TB_D_FF is
--  Port ( );
end TB_D_FF;

architecture Behavioral of TB_D_FF is

component D_FF
    port(
        D, Res, Clk : in std_logic;
        Q, Qbar : out std_logic
    );
end component;

signal D, Res, Clk : std_logic;
signal Q, Qbar : std_logic;

begin

    UUT: D_FF port map(
        D => D,
        Res => Res,
        Clk => Clk,
        Q => Q,
        Qbar => Qbar
    );
    
    process begin
        
    D <= '0';
    Res <= '0';
    Clk <= '0';
    WAIT FOR 100 ns;
    D <= '0';
    Res <= '0';
    Clk <= '1';
    WAIT FOR 100 ns;
    D <= '0';
    Res <= '1';
    Clk <= '0';
    WAIT FOR 100 ns;
    D <= '0';
    Res <= '1';
    Clk <= '1';
    WAIT FOR 100 ns;
    D <= '1';
    Res <= '0';
    Clk <= '0';
    WAIT FOR 100 ns;
    D <= '1';
    Res <= '0';
    Clk <= '1';
    WAIT FOR 100 ns;
    D <= '1';
    Res <= '1';
    Clk <= '0';
    WAIT FOR 100 ns;
    D <= '1';
    Res <= '1';
    WAIT;              
        
    end process;        

end Behavioral;
  