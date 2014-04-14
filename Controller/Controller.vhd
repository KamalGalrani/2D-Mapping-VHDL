library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controller is
  generic(
      --NUMBER OF END POINTS
      N     : positive := 5;
      THRES : positive := 100
      );
  port(
      CLK       : in  std_logic;
      RST       : in  std_logic;
		ENC_L     : in  std_logic;
		ENC_R     : in  std_logic;
		TX        : out std_logic     := '1';
		SHARP     : in  unsigned(7 downto 0);
		TSOP      : in  std_logic_vector(2 downto 0)
		);
end entity;

architecture main of Controller is
type int_array is array(0 to N) of integer range 0 to 30000;
signal pts       : int_array;

signal RUN       : std_logic                 := '0';
signal correctn  : integer range -127 to 127 :=  0 ;

--TRACKING BOT POSITION
signal FIN_X, FIN_Y : integer range    0 to 30000;
signal ACT_X, ACT_Y : integer range    0 to 30000;
signal ACT_2T       : integer range -360 to   360;
signal CLOSEST_X    : integer range    0 to 30000;
signal CLOSEST_Y    : integer range    0 to 30000;
signal FOLLOWING    : std_logic            := '0';
component Tracking is
  port(
      CLK       : in  std_logic;
      RST       : in  std_logic;
		ENC_L     : in  std_logic;
		ENC_R     : in  std_logic;
		FWD_R     : in  std_logic;
		FWD_L     : in  std_logic;
		FIN_X     : in  integer range 0 to 30000;
		FIN_Y     : in  integer range 0 to 30000;
		ACT_X     : out integer range 0 to 30000;
		ACT_Y     : out integer range 0 to 30000;
		ACT_2T    : out integer range -360 to 360;
		CLOSEST_X : out integer range 0 to 30000;
		CLOSEST_Y : out integer range 0 to 30000;
		FOLLOWING : in  std_logic
		);
end component;

--COMMUNICATION
signal wr   : std_logic := '0';
signal data : unsigned(7 downto 0);
signal txrdy: std_logic;
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
--END POINT ASSIGNMENT BEGINS
----FIRST POINT (X,Y)
  pts(0) <= 5000;
  pts(1) <= 5000;
----SECOND POINT (X,Y)
  pts(2) <= 5000;
  pts(3) <= 10000;
----THIRD POINT (X,Y)
  pts(4) <= 5000;
  pts(5) <= 5000;
--END POINT ASSIGNMENT ENDS

--NAVIGATION
----PORT MAPPING TRACKING
POSITION: Tracking port map (CLK, RST, ENC_L, ENC_R, '1', '1', FIN_X, FIN_Y, ACT_X, ACT_Y, ACT_2T, CLOSEST_X, CLOSEST_Y, FOLLOWING);
----PORT MAPPING DRIVER
----PORT MAPPING ERROR CALCULATION
----PROCESS STARTS
  process (CLK)
  variable state     : integer range -2 to N - 1 :=  0 ;
  begin
  if ( RST = '1' ) then
    state := -2;
  elsif (rising_edge(CLK)) then
    if (( abs( FIN_X - ACT_X ) < THRES ) and ( abs( FIN_Y - ACT_Y ) < THRES )) then
	   RUN <= '0';
	   if  ( state = N - 1 )  then
		  state := -2;
		else 
        state := state + 2;
		end if;
	 elsif (( TSOP(1) = '1' ) or ( TSOP(2) = '1' )) then
	   RUN <= '0';
	   correctn <= 127;
		FOLLOWING <= '1';
	 elsif ( TSOP(0) = '1' ) then
	 	RUN <= '0';
		FOLLOWING <= '1';
	 else
      if ( state = -2 ) then
		  FIN_X <= 0;
		  FIN_Y <= 0;
		else
		  FIN_X <= pts(state);
		  FIN_Y <= pts(state);
		end if;
		RUN <= '1';
    end if;
  end if;
  end process;
--NAVIGATION ENDS
  
--COMMUNICATION
----PORT MAPPING
TRANSMIT: UART port map (CLK, RST, data, wr, TX, txrdy);
----SENDING DATA
  process (CLK)
  variable wr_buff : std_logic                := '1';
  variable latch   : unsigned (15 downto 0);
  variable state   : integer range 0 to 7     :=  0 ;
  begin
  if (RST = '1') then
  wr_buff := '1';
  wr      <= '1';
  state   :=  0 ;
  elsif (rising_edge(CLK)) then
    if wr_buff = '0' then
	   wr      <= '0';
		wr_buff := '1';
	 elsif ( txrdy = '1' ) then
	   if ( state = 0 ) or ( state = 1 ) then
		  data <= "11111111";
		  wr_buff := '0';
		  latch := to_unsigned(ACT_X,16);
		elsif ( state = 2 ) then
		  data <= latch(7 downto 0);
		  wr_buff := '0';
		elsif ( state = 3 ) then
		  data <= latch(15 downto 8);
		  wr_buff := '0';
		elsif ( state = 4 ) then
		  latch := to_unsigned(ACT_Y,16);
		elsif ( state = 5 ) then
		  data <= latch(7 downto 0);
		  wr_buff := '0';
		elsif ( state = 6 ) then
		  data <= latch(15 downto 8);
		  wr_buff := '0';
		else
		  state := 0;
		end if;
		state := state + 1;
	 else
	   wr <= '1';
	 end if;
  end if;
  end process;
--COMMUNICATION ENDS

end architecture;