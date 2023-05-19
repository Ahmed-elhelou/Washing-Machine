library ieee;
use ieee.std_logic_1164.all;
entity washing_machine is
	port(
		clk, reset, start : in std_logic;
		userProg : in std_logic_vector (4 downto 0);
		state : out std_logic_vector (1 downto 0)
	);
end entity;

architecture washing_machine_arch of washing_machine is
	--array of integer
	type int_array is array(0 to 2) of integer;
	
	--states
	constant WASH: std_logic_vector(1 downto 0) := "00";
	constant SPIN: std_logic_vector(1 downto 0) := "01";
	constant RINSE: std_logic_vector(1 downto 0) := "10";
	constant IDLE: std_logic_vector(1 downto 0) := "11";
	--programs 
	constant COTTON: std_logic_vector(4 downto 0) := "10000";
	constant RAPID: std_logic_vector(4 downto 0) := "01000";
	constant SLOW: std_logic_vector(4 downto 0) := "00100";
	constant DRAIN: std_logic_vector(4 downto 0) := "00010";
	constant WHITE: std_logic_vector(4 downto 0) := "00001";
	
	--cycles counts
	constant COTTON_CYCLES_COUNT : int_array := (4,5,2);
	constant RAPID_CYCLES_COUNT : int_array := (2,3,2);
	constant SLOW_CYCLES_COUNT : int_array := (20,15,7);
	constant DRAIN_CYCLES_COUNT : int_array := (0,10,5);
	constant WHITE_CYCLES_COUNT : int_array := (6,3,5);
	
	--buffers
	signal wash_counter : integer range 0 to 21;
	signal SPIN_counter : integer range 0 to 15;
	signal RINSE_counter : integer range 0 to 8;
	
	signal curr_program : std_logic_vector (4 downto 0) := COTTON;
	signal curr_state : std_logic_vector (1 downto 0) := "ZZ";
	
begin

	process (clk) is
	
		variable zero_flag : std_logic := '0';
		begin
		if rising_edge(clk) then
			if reset ='1' then
				curr_state <= "ZZ";
				zero_flag := '0';
			elsif start = '1' then
                curr_state <= WASH;
				if userProg = COTTON then
					wash_counter <= COTTON_CYCLES_COUNT(0);
					SPIN_counter <= COTTON_CYCLES_COUNT(1);
					RINSE_counter <= COTTON_CYCLES_COUNT(2);
				 elsif userProg = RAPID then
					wash_counter <= RAPID_CYCLES_COUNT(0);
					SPIN_counter <= RAPID_CYCLES_COUNT(1);
					RINSE_counter <= RAPID_CYCLES_COUNT(2);
				 elsif userProg = SLOW then
					wash_counter <= SLOW_CYCLES_COUNT(0);
					SPIN_counter <= SLOW_CYCLES_COUNT(1);
					RINSE_counter <= SLOW_CYCLES_COUNT(2);
				 elsif userProg = DRAIN then
					wash_counter <= DRAIN_CYCLES_COUNT(0);
					SPIN_counter <= DRAIN_CYCLES_COUNT(1);
					RINSE_counter <= DRAIN_CYCLES_COUNT(2);
				 elsif userProg = WHITE then
					wash_counter <= WHITE_CYCLES_COUNT(0);
					SPIN_counter <= WHITE_CYCLES_COUNT(1);
					RINSE_counter <= WHITE_CYCLES_COUNT(2);
				 end if;
			elsif zero_flag = '0' then
				if curr_state = WASH then
				  if wash_counter <= 1 then
						zero_flag := '1';
				  else 
						wash_counter <= wash_counter - 1;
				  end if;
				elsif curr_state = SPIN then
				  if spin_counter <= 1 then
						zero_flag := '1';
				  else 
						spin_counter <= spin_counter - 1;
				  end if;
				elsif curr_state = RINSE then
				  if rinse_counter <= 1 then
						zero_flag := '1';
				  else 
						rinse_counter <= rinse_counter - 1;
				  end if;
				end if;
			end if;
			
			if zero_flag = '1' then
				 zero_flag := '0';
				 if curr_state = WASH then
					  curr_state <= SPIN;
				 elsif curr_state = SPIN then
					  curr_state <= RINSE;
				 elsif curr_state = RINSE then
					  curr_state <= IDLE;
				 end if;
			end if;
		end if;
				
    end process;
		

    state <= curr_state;

end architecture;