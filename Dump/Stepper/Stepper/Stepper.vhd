library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Stepper is
  generic(
		DISTANCE_PER_STEP : integer range 0 to 64 := 44;
		--CLK_DIVIDER = (<CLOCK_FREQUENCY>/(<SPEED_IN_RPM>*<NO_OF_STEPS>))*60
      CLK_DIVIDER       : positive              := 1500000
      );
  port(
      CLK      : in  std_logic;
      DISTANCE : in  integer range 0 to 10000;
      STATUS   : out integer range 0 to 10000;
		RUN      : in  std_logic;
		BUSY     : out std_logic;
      CH1      : out std_logic;
		CH2      : out std_logic;
		CH3      : out std_logic;
		CH4      : out std_logic;
		FWD      : in  std_logic;
		DEBUG    : out integer range 0 to 3
      );
end entity;

architecture main of Stepper is
signal stepper_clk  : std_logic                := '0';
signal a_steps      : integer range 0 to 227   :=  0 ;
signal req_steps    : integer range 0 to 227   :=  0 ;
signal running      : std_logic                := '0';
signal trigger      : std_logic                := '0';
begin
  BUSY    <= running;
  STATUS  <= a_steps*DISTANCE_PER_STEP;
  
  process (CLK)
  variable count : integer range 0 to CLK_DIVIDER;
  begin
    if rising_edge(CLK) then
      stepper_clk <= '0';
      if (count = CLK_DIVIDER) then
        count := 0;
        stepper_clk <= '1';
      else
        count := count + 1;
      end if;
    end if;
  end process;
  
  process(stepper_clk)
  variable state     : integer range 0 to 3       := 0;
  begin
  DEBUG <= state;
  if ( rising_edge(stepper_clk) ) then
    --if ( running = '1' and RUN = '1' ) then
      --if ( a_steps /= req_steps ) then
        if state = 0 then
          CH1   <= '1' ;--xor FWD;
          CH2   <= '0' ;--xor FWD;
          CH3   <= '1' ;--xor FWD;
          CH4   <= '0' ;--xor FWD;
          state :=  1;
        elsif state = 1 then
          CH1   <= '0' ;--xor FWD;
          CH2   <= '1' ;--xor FWD;
          CH3   <= '0' ;--xor FWD;
          CH4   <= '1' ;--xor FWD;
          state :=  2;
        elsif state = 2 then
          CH1   <= '1' ;--xor FWD;
          CH2   <= '0' ;--xor FWD;
          CH3   <= '0' ;--xor FWD;
          CH4   <= '1' ;--xor FWD;
          state :=  3;
        elsif state = 3 then
          CH1   <= '0' ;--xor FWD;
          CH2   <= '1' ;--xor FWD;
          CH3   <= '1' ;--xor FWD;
          CH4   <= '0' ;--xor FWD;
          state :=  0;
		  else
			 state := 0;
        end if;
        --a_steps <= a_steps + 1;
      --else
        --running   <= '0';
      --end if;
    --elsif ( running = '0' and trigger = '1' ) then
      --running   <= '1';
		--a_steps     <= 0;
    --else
      --running   <= '0';
    --end if;
  end if;
  end process;
  
--  process (RUN, running)
--  begin
--  if ( RUN = '1' and running = '0' ) then
--    trigger <= '1';
--	 req_steps <= DISTANCE/DISTANCE_PER_STEP;
--  else
--    trigger <= '0';
--  end if;
--  end process;
end architecture;