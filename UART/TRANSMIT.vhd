library ieee;
use ieee.std_logic_1164.all;

entity TRANSMIT is
port (clk     : in std_logic;
      wr      : in std_logic;
      reset   : in std_logic;
      data    : in std_logic_vector(7 downto 0);
      tx      : out std_logic;
      txrdy   : out std_logic);
end entity;

architecture main of TRANSMIT is
constant paritymode: std_logic := '0';
signal done, trigger, parity: std_logic;
signal latch: std_logic_vector(7 downto 0);
signal step: integer range 0 to 15;
begin
  CONTROL: process (wr, done)
  begin
    if (done = '1') then
	   if (wr = '0') then
		  latch <= data;
        txrdy <= '0';
		  trigger <= '1';
      else
		  txrdy <= '1';
		end if;
	 else
		trigger <= '0';
    end if;
  end process;
  
  TRANSMIT_DATA: process (clk, reset, trigger)
  begin
    if (reset = '1') then
      parity <= paritymode;
      tx <= '1';
	   step <= 0;
	   done <= '1';
    elsif (trigger = '1') then
	   parity <= paritymode;
      tx <= '1';
	   step <= 0;
	   done <= '0';
	 elsif (rising_edge(clk) and done = '0') then
      if (step = 0) then
        parity <= paritymode;
        tx <= '0';
		  step <= step + 1;
      else
		  if (step = 10) then
          tx <= '1';
			 step <= 0;
			 done <= '1';
        elsif (step = 9) then
          tx <= parity;
			 step <= step + 1;
        else
		    parity <= parity xor latch(step - 1);
          tx <= latch(step - 1);
			 step <= step + 1;
        end if;
      end if;
    end if;
  end process;
end architecture;