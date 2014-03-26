library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADC is 
  port(
      CLK  : in  std_logic;
		TX   : out std_logic;
      ADC  : in  unsigned(7 downto 0);
		THR  : in  unsigned(7 downto 0);
      BIN  : out std_logic;
		DATA : out unsigned(7 downto 0)
      );
end entity;

architecture main of ADC is
signal err     : integer range -255 to 255;
signal wr      : std_logic;
signal txrdy   : std_logic;
signal trigger : std_logic;
component UART is
  port(
      CLK   : in  std_logic;
      RST   : in  std_logic;
      DATA  : in  unsigned(7 downto 0);
      WR    : in  std_logic;
      TX    : out std_logic;
      TXRDY : out std_logic
      );
end component;
begin
 err <= to_integer(ADC) - to_integer(THR);
 DATA <= ADC;
 send_data: UART port map (CLK, '0', ADC, wr, TX, txrdy);
 process ( CLK )
 begin
 if (rising_edge(CLK)) then
   if ( err > 0 ) then 
	    BIN <= '1';
   else 
	    BIN <= '0';
   end if;
   if (trigger = '1') then
	wr <= '0';
	trigger <= '0';
	elsif (txrdy = '1') then
       trigger <= '1';
		 wr <= '1';
   else
	    trigger <= '0';
		 wr <= '1';
	end if;
	end if;
 end process;
end architecture;