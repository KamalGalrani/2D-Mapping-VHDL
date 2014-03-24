library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity ADC is 
  port(
      CLK  : in  std_logic;
		TX   : out std_logic;
		RST  : in  std_logic;
      ADC  : in  unsigned(7 downto 0);
      THR  : in  unsigned(7 downto 0);
      BIN  : out std_logic;
		DATA : out unsigned(7 downto 0)
      );
end entity;

architecture main of ADC is
signal err     : integer range 0 to 255;
signal wr      : std_logic;
signal txrdy   : std_logic;
signal tx_data : unsigned(7 downto 0);
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
 --err <= to_integer(ADC) - to_integer(THR);
 --tx_data <= ADC;
 DATA <= ADC;
 send_data: UART port map (CLK, RST, ADC, wr, TX, txrdy);
 process ( CLK )
 begin
--   if ( err > 0 ) then 
--	    BIN <= '1';
--   else 
--	    BIN <= '0';
--   end if;
	if (txrdy = '1') then
       wr <= '1';
   else
	    wr <= '0';
   end if;
 end process;
end architecture;
