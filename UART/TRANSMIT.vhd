library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TRANSMIT is
  port(
      TX_CLK : in  std_logic;
      WR     : in  std_logic;
      RST    : in  std_logic;
      DATA   : in  std_logic_vector(7 downto 0);
      TX     : out std_logic;
      TXRDY  : out std_logic
      );
end entity;

architecture main of TRANSMIT is
signal latch: std_logic_vector(7 downto 0);
signal step: integer range 0 to 10;
begin
  process (TX_CLK, RST, WR)
  begin
    if ( RST = '1' ) then
      step  <= 10;
      TX    <= '1';
		TXRDY <= '1';
    elsif ( WR = '0' and step = 10 ) then
      latch <= DATA;
      step <= 0;		
      TX    <= '1';
      TXRDY <= '0';
    elsif ( rising_edge(TX_CLK) ) then
      if ( step = 0 ) then				--Send START bit
        TX   <= '0';
        step <= 1;
      elsif ( step = 9 ) then					--Send STOP bit
        TX <= '1';
        step <= 10;
	   elsif (step = 10) then				--Keep TX high when idle
        TX <= '1';
        TXRDY <= '1';
      else										--Transmit DATA
        TX <= latch(step - 1);
        step <= step + 1;
      end if;
    end if;
  end process;
end architecture;