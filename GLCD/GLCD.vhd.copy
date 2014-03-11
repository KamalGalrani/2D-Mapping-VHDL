library ieee;
use ieee.std_logic_1164.all;

entity GLCD is
  generic(
      CLK_DIVIDER : integer := 5000
      );
  port(
      RS       : out std_logic;
		RW       : out std_logic;
		EN       : out std_logic;
		CS1      : out std_logic;
		CS2      : out std_logic;
		DATA_OUT : out std_logic_vector(7 downto 0);
		DATA_IN  : in  std_logic_vector(7 downto 0);
		WR       : in  std_logic;
		RST      : in  std_logic;
		CLK      : in  std_logic;
		BUSY     : out std_logic
		);
end entity GLCD;

architecture main of GLCD is
signal writing : std_logic := '0';
signal send    : std_logic := '0';
signal sending : std_logic := '0';
signal lcd_clk : std_logic := '0';
signal latch   : std_logic_vector(7 downto 0);
begin
  CS1  <= '1';
  CS2  <= '0';
  RW   <= '0';
  BUSY <= writing;
  process (CLK)
  variable count : integer := 0;
  begin
    if ( count = CLK_DIVIDER ) then
      count := 0;
      lcd_clk <= not lcd_clk;
    else
      count := count + 1;
    end if;
  end process;
  
  process (CLK)
  variable step : integer range 0 to 4 := 0;
  begin
  if ( rising_edge(CLK) ) then
  if ( RST = '0' ) then
    step := 0;
  elsif ( sending = '1' ) then
    send <= '0';
  elsif ( sending = '0' ) then
    case step is
    when 0 =>
      latch <= "00111000";--command 38
       RS <= '0';
      send <= '1';
      step :=  1;
    when 1 =>
		latch <= "00000001";--command 01
        RS <= '0';
      send <= '1';
      step :=  2;
    when 2 =>
		latch <= "00001110";--command 0e
        RS <= '0';
      send <= '1';
      step :=  3;
    when 3 =>
      latch <= "10000000";--command 80
       RS <= '0';
      send <= '1';
      step :=  4;
    when 4 =>
      if ( WR = '1' ) then
        step    := 4;
        writing <= '0';
      elsif ( WR = '0' and writing = '0' ) then
        writing <= '1';
        latch   <= DATA_IN;
        RS      <= '1';
        send    <= '1';
        step    :=  4;
      end if ;
    end case;
  end if;
  end if;
  end process;
	
  process (lcd_clk)
  begin
  if (sending = '0' and send = '1' ) then
    DATA_OUT <= latch;
          EN <= '1';
			 sending <= '1';
  else
          EN <= '0';
          sending <= '0';
  end if;
  end process;
end main;
		
