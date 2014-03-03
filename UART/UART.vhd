library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART is
port (clk, reset, wr: in std_logic; tx, txrdy: out std_logic);
end entity;

architecture main of UART is
signal divisor, count: integer;
signal txclk: std_logic;
component TRANSMIT is
port (clk  : in std_logic;
      wr   : in std_logic;
      reset: in std_logic;
      data : in std_logic_vector(7 downto 0);
      tx   : out std_logic;
      txrdy: out std_logic);
end component;
begin
  --Clock DIV = FCPU/(2*BAUDRATE)
    --9600   => 2604
	 --14400  => 1736
	 --19200  => 1302
	 --28800  => 868
	 --38400  => 651
	 --57600  => 434
	 --115200 => 217
  divisor <= 217;
  
  process (reset, clk)
    begin
    if reset='1' then
      txclk <= '0';
      count <= 0;
    elsif rising_edge(clk) then
      txclk <= '0';
      if (count = divisor) then
        count <= 0;
        txclk <= '1';
      else
        count <= count + 1;
      end if;
    end if;
  end process;
  transmitter: TRANSMIT port map (txclk, wr, reset, "01000010", tx, txrdy);
end architecture;