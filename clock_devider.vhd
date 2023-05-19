library ieee;
use ieee.std_logic_1164.all;

entity clock_devider is
	port (
	clk, reset : in std_logic;
	desired_freq : in integer;
	out_clk : out std_logic
	);
end entity;

architecture clock_devider_arc of clock_devider is
signal counter : integer := 0;
signal curr_out : std_logic := '0';

begin
	process (clk, reset) is
		variable number : integer := 50000 / desired_freq / 2 - 1;
	begin
		if(reset = '1') then
			counter <= 0;
		elsif(rising_edge(clk)) then
			counter <= counter + 1;
			if(counter >= number) then
				curr_out <= not curr_out;
				counter <= 0;
			end if;
		end if;
		
	end process;
	out_clk <= curr_out;
end clock_devider_arc;
	