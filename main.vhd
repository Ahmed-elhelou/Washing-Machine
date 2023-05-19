library ieee;
use ieee.std_logic_1164.all;
entity main is
	port(
		userProg : in std_logic_vector (4 downto 0);
		clk, reset, start : in std_logic;
		state : out std_logic_vector (1 downto 0);
		sevSeg_data : out std_logic_vector (6 downto 0); -- abcdefg
		sevSeg_driver : out std_logic_vector (5 downto 0) --character index
	);
end entity;

architecture main_arch of main is

	component washing_machine is
	port(
		clk, reset, start : in std_logic;
		userProg : in std_logic_vector (4 downto 0);
		state : out std_logic_vector (1 downto 0)
	);
	end component;
	component seven_segment is 
		port(
			clk, reset, start : in std_logic;
			userProg : in std_logic_vector (4 downto 0);
			state : in std_logic_vector (1 downto 0);
			sevSeg_data : out std_logic_vector (6 downto 0); -- abcdefg
			sevSeg_driver : out std_logic_vector (5 downto 0) --character index
		);
	end component;
	
	component clock_devider is
	port (
		clk, reset : in std_logic;
		desired_freq : in integer;
		out_clk : out std_logic
	);
	end component;
	signal sev_seg_clock: std_logic;
	signal washing_machine_clock: std_logic;
	signal state_signal : std_logic_vector (1 downto 0);
	signal sevSeg_data_signal : std_logic_vector (6 downto 0); -- abcdefg
	signal sevSeg_driver_signal : std_logic_vector (5 downto 0); --character index
	
begin
	sev_seg_clock_devider : clock_devider port map(clk, reset, 10000, sev_seg_clock);
	washing_machine_clock_devider : clock_devider port map(clk, reset, 1000, washing_machine_clock);
	sev_segment_driver : seven_segment port map(sev_seg_clock, reset, start, userProg, state_signal, sevSeg_data, sevSeg_driver);
	washing_machine_driver : washing_machine port map(washing_machine_clock, reset, start, userProg, state_signal);
	state <= state_signal;

end architecture;

