library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Navigation is
  generic(
		--TURN_90 = <PI>*<DISTANCE_BW_WHEELS (in deci mm)>/4
		--DISTANCE_BW_WHEELS = 1600 (in deci mm)
      TURN_90     : integer range 512  to 2047 := 1256 ;   
		TURN_180  : integer range 1024 to 4095 := 2512
		);
  port(
      CLK       : in  std_logic;
      RST       : in  std_logic;
		CH1_L     : out std_logic;
		CH2_L     : out std_logic;
		CH3_L     : out std_logic;
		CH4_L     : out std_logic;
		CH1_R     : out std_logic;
		CH2_R     : out std_logic;
		CH3_R     : out std_logic;
		CH4_R     : out std_logic
		);
end entity;

architecture main of Navigation is
signal busy,  busy_l,  busy_r : std_logic;
signal distance_l, distance_r : integer range 0 to 10000;
signal run                    : std_logic;
signal fwd_l, fwd_r           : std_logic;

component Stepper is
  port(
      CLK      : in  std_logic;
      DISTANCE : in  integer range 0 to 10000;
      STATUS   : out integer range 0 to 10000;
		run      : in  std_logic;
		BUSY     : out std_logic;
      CH1      : out std_logic;
		CH2      : out std_logic;
		CH3      : out std_logic;
		CH4      : out std_logic;
		FWD      : in  std_logic
      );
end component;
begin
  Stepper_L: Stepper port map ( CLK => CLK, DISTANCE => distance_l, run => run, BUSY => busy_l, CH1 => CH1_L, CH2 => CH2_L, CH3 => CH3_L, CH4 => CH4_L, FWD => fwd_l);
  Stepper_R: Stepper port map ( CLK => CLK, DISTANCE => distance_r, run => run, BUSY => busy_r, CH1 => CH1_R, CH2 => CH2_R, CH3 => CH3_R, CH4 => CH4_R, FWD => fwd_r);
  busy <= busy_l and busy_r;
  process (busy, RST)
  variable state : integer range 0 to 7 := 0;
  begin
  if (RST = '1') then
     state := 0;
     run   <= '0';
  elsif (BUSY = '0') then
    case state is
	 when 0 =>
	   distance_r <= 5000;
		distance_l <= 5000;
		fwd_r <= '1';
		fwd_l <= '1';
		run <= '1';
		state := 1;
	 when 1 =>
	   distance_r <= TURN_90;
		distance_l <= TURN_90;
		fwd_r <= '0';
		fwd_l <= '1';
		run <= '1';
		state := 2;
	 when 2 =>
	   distance_r <= 5000;
		distance_l <= 5000;
		fwd_r <= '1';
		fwd_l <= '1';
		run <= '1';
		state := 3;
	 when 3 =>
	   distance_r <= TURN_180;
		distance_l <= TURN_180;
		fwd_r <= '0';
		fwd_l <= '1';
		run <= '1';
		state := 4;
	 when 4 =>
	   distance_r <= 5000;
		distance_l <= 5000;
		fwd_r <= '1';
		fwd_l <= '1';
		run <= '1';
		state := 5;
	 when 5 =>
	   distance_r <= TURN_90;
		distance_l <= TURN_90;
		fwd_r <= '1';
		fwd_l <= '0';
		run <= '1';
		state := 6;
	 when 6 =>
	   distance_r <= 5000;
		distance_l <= 5000;
		fwd_r <= '1';
		fwd_l <= '1';
		run <= '1';
		state := 7;
	 when 7 =>
	   run <= '0';
	 end case;
	 end if;
  end process;
end architecture;