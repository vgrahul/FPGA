library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pll is
	port (
		clkout_clk : out std_logic;        -- clkout.clk
		clkin_clk  : in  std_logic := '0'; --  clkin.clk
		rst_reset  : in  std_logic := '0'  --    rst.reset
	);
end entity pll;

architecture rtl of pll is
	component pll_altpll_0 is
		port (
			clk       : in  std_logic                     := 'X';             -- clk
			reset     : in  std_logic                     := 'X';             -- reset
			read      : in  std_logic                     := 'X';             -- read
			write     : in  std_logic                     := 'X';             -- write
			address   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- address
			readdata  : out std_logic_vector(31 downto 0);                    -- readdata
			writedata : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			c0        : out std_logic;                                        -- clk
			areset    : in  std_logic                     := 'X';             -- export
			locked    : out std_logic;                                        -- export
			phasedone : out std_logic                                         -- export
		);
	end component pll_altpll_0;

begin

	altpll_0 : component pll_altpll_0
		port map (
			clk       => clkin_clk,  --       inclk_interface.clk
			reset     => rst_reset,  -- inclk_interface_reset.reset
			read      => open,       --             pll_slave.read
			write     => open,       --                      .write
			address   => open,       --                      .address
			readdata  => open,       --                      .readdata
			writedata => open,       --                      .writedata
			c0        => clkout_clk, --                    c0.clk
			areset    => open,       --        areset_conduit.export
			locked    => open,       --        locked_conduit.export
			phasedone => open        --     phasedone_conduit.export
		);

end architecture rtl; -- of pll