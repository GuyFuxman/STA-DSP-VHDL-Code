-- PLL.vhd

-- Generated using ACDS version 17.0 595

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PLL is
	port (
		pll_0_outclk0_clk : out std_logic;        -- pll_0_outclk0.clk
		pll_0_refclk_clk  : in  std_logic := '0'; --  pll_0_refclk.clk
		pll_0_reset_reset : in  std_logic := '0'  --   pll_0_reset.reset
	);
end entity PLL;

architecture rtl of PLL is
	component PLL_pll_0 is
		port (
			refclk   : in  std_logic := 'X'; -- clk
			rst      : in  std_logic := 'X'; -- reset
			outclk_0 : out std_logic;        -- clk
			locked   : out std_logic         -- export
		);
	end component PLL_pll_0;

begin

	pll_0 : component PLL_pll_0
		port map (
			refclk   => pll_0_refclk_clk,  --  refclk.clk
			rst      => pll_0_reset_reset, --   reset.reset
			outclk_0 => pll_0_outclk0_clk, -- outclk0.clk
			locked   => open               -- (terminated)
		);

end architecture rtl; -- of PLL
