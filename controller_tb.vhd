library ieee;
use ieee.std_logic_1164.all;

entity washing_machine_tb is
end entity;

architecture tb_arch of washing_machine_tb is
    -- Component declaration
    component washing_machine
        port (
            userProg : in std_logic_vector(4 downto 0);
            clk, reset, start : in std_logic;
            state : out std_logic_vector(1 downto 0)
        );
    end component;

    -- Testbench signals
    signal tb_clk : std_logic := '0';
    signal tb_reset : std_logic := '0';
    signal tb_start : std_logic := '0';
    signal tb_userProg : std_logic_vector(4 downto 0) := "00000";
    signal tb_state : std_logic_vector(1 downto 0);

    constant CLK_PERIOD : time := 1000000 ns;
begin

    -- Instantiate the washing machine controller
    uut: washing_machine
        port map (
            userProg => tb_userProg,
            clk => tb_clk,
            reset => tb_reset,
            start => tb_start,
            state => tb_state
        );

    -- Clock process
    process
    begin
        while now < 20000000 ns loop
            tb_clk <= '0';
            wait for CLK_PERIOD / 2;
            tb_clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Stimulus process
    process
    begin

        -- Set the user program to COTTON
        tb_userProg <= "10000";
        tb_start <= '1';
        wait for CLK_PERIOD;
        wait for CLK_PERIOD;
        tb_start <= '0';

        wait for CLK_PERIOD;
        assert tb_state = "00" report "Expected state: WASH" severity error;


        wait for CLK_PERIOD;
        assert tb_state = "00" report "Expected state: WASH" severity error;


        wait for CLK_PERIOD;
        assert tb_state = "00" report "Expected state: WASH" severity error;


        wait for CLK_PERIOD;
        assert tb_state = "00" report "Expected state: WASH" severity error;

        wait for CLK_PERIOD;
        assert tb_state = "01" report "Expected state: SPIN" severity error;
        wait for CLK_PERIOD;
        assert tb_state = "01" report "Expected state: SPIN" severity error;
        wait for CLK_PERIOD;
        assert tb_state = "01" report "Expected state: SPIN" severity error;
        wait for CLK_PERIOD;
        assert tb_state = "01" report "Expected state: SPIN" severity error;
        wait for CLK_PERIOD;
        assert tb_state = "01" report "Expected state: SPIN" severity error;

        wait for CLK_PERIOD;
        assert tb_state = "10" report "Expected state: RINSE" severity error;
        wait for CLK_PERIOD;
        assert tb_state = "10" report "Expected state: RINSE" severity error;

        wait for CLK_PERIOD;
        assert tb_state = "11" report "Expected state: IDLE" severity error;
        wait for CLK_PERIOD;
        assert tb_state = "11" report "Expected state: IDLE" severity error;
        wait;
    end process;

end architecture;