library ieee;
use ieee.std_logic_1164.all;

entity seven_segment_tb is
end entity;

architecture tb_arch of seven_segment_tb is
  signal clk: std_logic := '0';
  signal reset: std_logic := '0';
  signal start: std_logic := '0';
  signal userProg: std_logic_vector(4 downto 0) := (others => '0');
  signal state: std_logic_vector(1 downto 0) := (others => '0');
  signal sevSeg_data: std_logic_vector(6 downto 0);
  signal sevSeg_driver: std_logic_vector(5 downto 0);

  constant CLK_PERIOD: time := 100000 ns;

begin
  -- Instantiate the unit under test (UUT)
  uut: entity work.seven_segment
    port map (
      clk => clk,
      reset => reset,
      start => start,
      userProg => userProg,
      state => state,
      sevSeg_data => sevSeg_data,
      sevSeg_driver => sevSeg_driver
    );

  -- Clock process
  clk_process: process
  begin
    while now < 2000000000 ns loop  -- Simulate for 20 pulses
      clk <= '0';
      wait for CLK_PERIOD / 2;
      clk <= '1';
      wait for CLK_PERIOD / 2;
    end loop;
    wait;
  end process;

  -- Stimulus process
  stimulus_process: process
  begin
    -- Reset sequence
	  reset <= '1';
	  start <='1';
	   wait for CLK_PERIOD;
	 reset <= '0';
	 start <='0';
	 
    state <= "00";
    assert sevSeg_data = "1010101" report "Unexpected sevSeg_data value W state 00";
    assert sevSeg_driver = "100000" report "Unexpected sevSeg_driver valueW state 00";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0001000" report "Unexpected sevSeg_data value a state 00";
    assert sevSeg_driver = "010000" report "Unexpected sevSeg_driver value a state 00";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0100100" report "Unexpected sevSeg_data value s state 00";
    assert sevSeg_driver = "001000" report "Unexpected sevSeg_driver value s state 00";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1001000" report "Unexpected sevSeg_data value h state 00";
    assert sevSeg_driver = "000100" report "Unexpected sevSeg_driver value h state 00";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1111111" report "Unexpected sevSeg_data value space state 00";
    assert sevSeg_driver = "000010" report "Unexpected sevSeg_driver value space state 00";
    wait for CLK_PERIOD;
    assert sevSeg_data = "1111111" report "Unexpected sevSeg_data value space state 00";
    assert sevSeg_driver = "000001" report "Unexpected sevSeg_driver value space state 00";
	
	
	 
	 reset <= '1';
	  start <='1';
	   wait for CLK_PERIOD;
	 reset <= '0';
	 start <='0'; 
    state <= "11";
	 wait for CLK_PERIOD/2;
	 
    assert sevSeg_data = "1111001" report "1 Unexpected sevSeg_data value I state 11";
    assert sevSeg_driver = "100000" report "Unexpected sevSeg_driver value I state 11";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1000010" report "2 Unexpected sevSeg_data value D state 11";
    assert sevSeg_driver = "010000" report "Unexpected sevSeg_driver value D state 11";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1110001" report "2 Unexpected sevSeg_data value L state 11";
    assert sevSeg_driver = "001000" report "Unexpected sevSeg_driver value L state 11";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0110000" report "4 Unexpected sevSeg_data value E state 11";
    assert sevSeg_driver = "000100" report "Unexpected sevSeg_driver value E state 11";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1111111" report "5 Unexpected sevSeg_data value space state 11";
    assert sevSeg_driver = "000010" report "Unexpected sevSeg_driver value space state 11";
    wait for CLK_PERIOD;
    assert sevSeg_data = "1111111" report "6 Unexpected sevSeg_data value space state 11";
    assert sevSeg_driver = "000001" report "Unexpected sevSeg_driver value space state 11";
	 
	 wait for CLK_PERIOD;
	 reset <= '1';
	  start <='1';
	   wait for CLK_PERIOD;
	 reset <= '0';
	 start <='0';
	 
    state <= "10";
	 
    assert sevSeg_data = "0011001" report "Unexpected sevSeg_data value R state 10";
    assert sevSeg_driver = "100000" report "Unexpected sevSeg_driver value R state 10";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1111001" report "Unexpected sevSeg_data value I state 10";
    assert sevSeg_driver = "010000" report "Unexpected sevSeg_driver value I state 10";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0001001" report "Unexpected sevSeg_data value N state 10";
    assert sevSeg_driver = "001000" report "Unexpected sevSeg_driver value N state 10";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0100100" report "Unexpected sevSeg_data value S state 10";
    assert sevSeg_driver = "000100" report "Unexpected sevSeg_driver value S state 10";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0110000" report "Unexpected sevSeg_data value E state 10";
    assert sevSeg_driver = "000010" report "Unexpected sevSeg_driver value E state 10";
    wait for CLK_PERIOD;
    assert sevSeg_data = "1111111" report "Unexpected sevSeg_data value space state 10";
    assert sevSeg_driver = "000001" report "Unexpected sevSeg_driver value space state 10";
	 
	 
	 
	 reset <= '1';
	  start <='1';
	   wait for CLK_PERIOD;
	 reset <= '0';
	 start <='0';
	 
    state <= "01";
    assert sevSeg_data = "0100100" report "Unexpected sevSeg_data value S state 01";
    assert sevSeg_driver = "100000" report "Unexpected sevSeg_driver value S state 01";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0011000" report "Unexpected sevSeg_data value P state 01";
    assert sevSeg_driver = "010000" report "Unexpected sevSeg_driver value P state 01";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1111001" report "Unexpected sevSeg_data value I state 01";
    assert sevSeg_driver = "001000" report "Unexpected sevSeg_driver value I state 01";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0001001" report "Unexpected sevSeg_data value N state 01";
    assert sevSeg_driver = "000100" report "Unexpected sevSeg_driver value N state 01";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1111111" report "Unexpected sevSeg_data value space state 10";
    assert sevSeg_driver = "000010" report "Unexpected sevSeg_driver value space state 10";
    wait for CLK_PERIOD;
    assert sevSeg_data = "1111111" report "Unexpected sevSeg_data value space state 10";
    assert sevSeg_driver = "000001" report "Unexpected sevSeg_driver value space state 10";
	 
	 
	 
    wait;
  end process;

  -- Assertion process (Optional: Uncomment to add assertions)
  -- assertion_process: process
  -- begin
  --   -- Add assertions here
  --   wait;
  -- end process;

end architecture;