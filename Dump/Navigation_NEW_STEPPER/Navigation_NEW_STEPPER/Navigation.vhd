library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Navigation is
  generic(
      THR_ROT_MIN : integer range 0 to  31 := 10;
		THR_ROT_MAX : integer range 0 to 127 := 100;
      THR         : integer range 0 to 255 := 30
      );
  port(
      CLK     : in  std_logic;
      RST     : in  std_logic;
		CH1_L   : out std_logic;
		CH2_L   : out std_logic;
		CH3_L   : out std_logic;
		CH4_L   : out std_logic;
		CH1_R   : out std_logic;
		CH2_R   : out std_logic;
		CH3_R   : out std_logic;
		CH4_R   : out std_logic;
      ADC_L1  : in  unsigned(7 downto 0);
		ADC_L2  : in  unsigned(7 downto 0);
		ADC_R1  : in  unsigned(7 downto 0);
		ADC_R2  : in  unsigned(7 downto 0);
		TSOP    : in  std_logic_vector(4 downto 0)
		ENDPT   : in  unsigned(6 downto 0);
      );
end entity;

architecture main of Navigation is
signal avg_l, avg_r           : integer range -255 to 255  :=  0 ;
signal rot_l, rot_r           : integer range -127 to 127  :=  0 ;

signal busy,  busy_l,  busy_r : std_logic;
signal distance_l, distance_r : integer range 0 to 10000;
signal run                    : std_logic;
signal fwd_l, fwd_r           : std_logic;
signal position               : integer range 0 to 60000
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
  avg_l <= (to_integer(ADC_L1) + to_integer(ADC_L2))/2;
  avg_r <= (to_integer(ADC_R1) + to_integer(ADC_R2))/2;
  rot_l <= (to_integer(ADC_L1) - to_integer(ADC_L2))/2;
  rot_r <= (to_integer(ADC_R1) - to_integer(ADC_R2))/2;
 
  process (CLK)
  variable flag : std_logic := '0';
  begin
    if ( RST = '1' ) then
	 run <= '0';
	 position <= 0;
	 elsif (( avg_l > THR ) and ( avg_r > THR ) and ( TSOP = "00000" )) then
	   distance_r <= 5000;
		distance_l <= 5000;
		fwd_r <= '1';
		fwd_l <= '1';
		run <= '1';
      flag := '0';
	 elsif ( avg_l < THR ) then
	   run <= not run;
      if ( flag = '1' ) then
		  if ( rot_l > THR_ROT_MAX ) then
	       flag := '0';
		  else 
		    --rot left
		  end if;
		elsif ( rot_l < -1*THR_ROT_MAX ) then
		  flag := '1';
	   elsif ( rot_l > THR_ROT_MIN ) then
		  flag := '0';
        --rot right
	   elsif ( rot_l < -1*THR_ROT_MIN ) then
		  flag := '0';
	     --rot left
		else
		  flag := '0';
	   --Navigate to next point
		end if;
	 elsif ( avg_r < THR ) then
      if ( flag = '1' ) then
		  if ( rot_r > THR_ROT_MAX ) then
	       flag := '0';
		  else 
		    --rot right
		  end if;
		elsif ( rot_r < -1*THR_ROT_MAX ) then
		  flag := '1';
	   elsif ( rot_r > THR_ROT_MIN ) then
		  flag := '0';
        --rot left
	   elsif ( rot_r < -1*THR_ROT_MIN ) then
		  flag := '0';
	     --rot right
		else
		  flag := '0';
	   --Navigate to next point
		end if;	 
		--TSOP Configurations
	 end if;
  end process;
end architecture;