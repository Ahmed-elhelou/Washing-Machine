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
    while now < 2000000 ns loop  -- Simulate for 20 pulses
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
    
    state <= '00';
    assert sevSeg_data = "1010101" report "Unexpected sevSeg_data value for COTTON in WASH state";
    assert sevSeg_driver = "100000" report "Unexpected sevSeg_driver value for COTTON in WASH state";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0001000" report "Unexpected sevSeg_data value for COTTON in WASH state";
    assert sevSeg_driver = "010000" report "Unexpected sevSeg_driver value for COTTON in WASH state";
    wait for CLK_PERIOD;

    assert sevSeg_data = "0100100" report "Unexpected sevSeg_data value for COTTON in WASH state";
    assert sevSeg_driver = "001000" report "Unexpected sevSeg_driver value for COTTON in WASH state";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1001000" report "Unexpected sevSeg_data value for COTTON in WASH state";
    assert sevSeg_driver = "000100" report "Unexpected sevSeg_driver value for COTTON in WASH state";
    wait for CLK_PERIOD;

    assert sevSeg_data = "1111111" report "Unexpected sevSeg_data value for COTTON in WASH state";
    assert sevSeg_driver = "000010" report "Unexpected sevSeg_driver value for COTTON in WASH state";
    wait for CLK_PERIOD;
    assert sevSeg_data = "1111111" report "Unexpected sevSeg_data value for COTTON in WASH state";
    assert sevSeg_driver = "000001" report "Unexpected sevSeg_driver value for COTTON in WASH state";

    wait;
  end process;

  -- Assertion process (Optional: Uncomment to add assertions)
  -- assertion_process: process
  -- begin
  --   -- Add assertions here
  --   wait;
  -- end process;

end architecture;