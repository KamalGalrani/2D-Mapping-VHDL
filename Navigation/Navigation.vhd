library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Navigation is
  generic(
		--TURN_90 = <PI>*<DISTANCE_BW_WHEELS (in deci mm)>/4
		--DISTANCE_BW_WHEELS = 1600 (in deci mm)
      TURN_90     : integer range 512  to 2047 := 1256 ;   
		TURN_180    : integer range 1024 to 4095 := 2512
		);
  port(
      CLK      : in  std_logic;
      RST      : in  std_logic;
		CH1      : out std_logic;
		CH2      : out std_logic;
		CH3      : out std_logic;
		CH4      : out std_logic
		);
end entity;

architecture main of Navigation is
begin

  process (BUSY)
  variable state : integer 0 to 7 := 0;
  begin
  if (BUSY = '0') then
    case state is
	 when => 0
	   DISTANCE_R <= 5000;
		DISTANCE_L <= 5000;
		FWD_R <= '1';
		FWD_L <= '1';
		RUN <= '1';
		state := 1;
	 when => 1
	   DISTANCE_R <= TURN_90;
		DISTANCE_L <= TURN_90;
		FWD_R <= '0';
		FWD_L <= '1';
		RUN <= '1';
		state := 2;
	 when => 2
	   DISTANCE_R <= 5000;
		DISTANCE_L <= 5000;
		FWD_R <= '1';
		FWD_L <= '1';
		RUN <= '1';
		state := 3;
	 when => 3
	   DISTANCE_R <= TURN_180;
		DISTANCE_L <= TURN_180;
		FWD_R <= '0';
		FWD_L <= '1';
		RUN <= '1';
		state := 4;
	 when => 4
	   DISTANCE_R <= 5000;
		DISTANCE_L <= 5000;
		FWD_R <= '1';
		FWD_L <= '1';
		RUN <= '1';
		state := 5;
	 when => 5
	   DISTANCE_R <= TURN_90;
		DISTANCE_L <= TURN_90;
		FWD_R <= '1';
		FWD_L <= '0';
		RUN <= '1';
		state := 6;
	 when => 6
	   DISTANCE_R <= 5000;
		DISTANCE_L <= 5000;
		FWD_R <= '1';
		FWD_L <= '1';
		RUN <= '1';
		state := 7;
	 when => 7
	   RUN <= '0';
	 end case;
  end process;
end architecture;