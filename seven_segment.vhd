library ieee;
use ieee.std_logic_1164.all;
entity seven_segment is 
	port(
		clk, reset, start : in std_logic;
		userProg : in std_logic_vector (4 downto 0);
		state : in std_logic_vector (1 downto 0);
		sevSeg_data : out std_logic_vector (6 downto 0); -- abcdefg
		sevSeg_driver : out std_logic_vector (5 downto 0) --character index
	);
end entity;
architecture seven_segment_arch of seven_segment is
	--array of std_logic_vector
	type std_logic_vector_array is array(0 to 5) of std_logic_vector (6 downto 0);

	--Characters
	constant A: std_logic_vector(6 downto 0) := "0001000"; --A  WASH,,, RAPID, DRAIN
	constant C: std_logic_vector(6 downto 0) := "0110001"; --C	,,, COTTON
	constant D: std_logic_vector(6 downto 0) := "1000010"; --D	IDLE,,,, RAPID, DRAIN
	constant E: std_logic_vector(6 downto 0) := "0110000"; --E	RINSE, IDLE ,,, WHITE
	constant H: std_logic_vector(6 downto 0) := "1001000"; --H	WASH,,, WHITE
	constant I: std_logic_vector(6 downto 0) := "1111001"; --i SPIN, RINSE, IDLE ,,, DREAIN, WHITE
	constant L: std_logic_vector(6 downto 0) := "1110001"; --L IDLE,,,, SLOW
	constant N: std_logic_vector(6 downto 0) := "0001001"; --N	SPIN, RINSE,,,, COTTON DRAIN
	constant o: std_logic_vector(6 downto 0) := "1100010"; --o ,,, COTTON
	constant P: std_logic_vector(6 downto 0) := "0011000"; --P	SPIN,,, RAPID
	constant r: std_logic_vector(6 downto 0) := "0011001"; --r RINSE,,, RAPID, DRAIN
	constant S: std_logic_vector(6 downto 0) := "0100100"; --S	WASH, SPIN, RINSE,,,, SLOW
	constant t: std_logic_vector(6 downto 0) := "1110000"; --t	,,,, COTTON, WHITE
	constant W: std_logic_vector(6 downto 0) := "1010101"; --W	WASH,,,, SLOW, WHITE
	constant SPACE: std_logic_vector(6 downto 0) := "1111111"; --Space

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

	signal sevSegIndex : integer range 0 to 5 := 0;

	--states characters
	constant WASH_CHARS : std_logic_vector_array := (W, A, S, H, SPACE, SPACE);
	constant SPIN_CHARS : std_logic_vector_array := (S, P, I, N, SPACE, SPACE);
	constant RINSE_CHARS : std_logic_vector_array := (R, I, N, S, E, SPACE);
	constant IDLE_CHARS : std_logic_vector_array := (I, D, L, E , SPACE, SPACE);

	--programs characters
	constant COTTON_CHARS : std_logic_vector_array := (C, O, T, T, O, N);
	constant RAPID_CHARS : std_logic_vector_array := (R, A, P, I, D, SPACE);
	constant SLOW_CHARS : std_logic_vector_array := (S, L, O, W, SPACE, SPACE);
	constant DRAIN_CHARS : std_logic_vector_array := (D, R, A, I, N, SPACE);
	constant WHITE_CHARS : std_logic_vector_array := (W, H, I, T, E, SPACE);

begin
	process (clk) is
		begin
		if(rising_edge(clk)) then
			if(reset = '1' or start = '1' or sevSegIndex = 5) then
				sevSegIndex <= 0;
			else
				sevSegIndex <= sevSegIndex + 1;
			end if;
		end if;
	end process;
		
			
	
	sevSeg_data <= WASH_CHARS(sevSegIndex) when state = WASH else
               SPIN_CHARS(sevSegIndex) when state = SPIN else
               RINSE_CHARS(sevSegIndex) when state = RINSE else
               IDLE_CHARS(sevSegIndex) when state = IDLE else
               COTTON_CHARS(sevSegIndex) when userProg = COTTON else
               RAPID_CHARS(sevSegIndex) when userProg = RAPID else
               SLOW_CHARS(sevSegIndex) when userProg = SLOW else
               DRAIN_CHARS(sevSegIndex) when userProg = DRAIN else
               WHITE_CHARS(sevSegIndex) when userProg = WHITE else
               "0000000";
	sevSeg_driver <= 
		"100000" when sevSegIndex = 0 else
		"010000" when sevSegIndex = 1 else
		"001000" when sevSegIndex = 2 else
		"000100" when sevSegIndex = 3 else
		"000010" when sevSegIndex = 4 else
		"000001" when sevSegIndex = 5 else
		"000000";

end architecture;