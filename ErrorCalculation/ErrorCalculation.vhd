library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ErrorCalculation is
  generic(
  --Try removing the range and see the effect on gates
      THRES  : integer := 50;
		Kp     : integer := 1;
		Kd     : integer := 0;
		Ki     : integer := 0
      );
  port(
      L0_R1     : in  std_logic;		
		ADC_R     : in  unsigned(7 downto 0);
		ADC_L     : in  unsigned(7 downto 0);
		CORRECTN  : out integer range -127 to 127
      );
end entity;

architecture main of ErrorCalculation is
signal dist_r, dist_l  : integer range 0 to 1300;
signal dist            : integer range 0 to 127;
signal correction      : integer range -127 to 127;
component ADC is
  port(
      ADC  : in  unsigned(7 downto 0);
		DIST : out integer range 0 to 1300
      );
end component;
begin
--DISTANCE CALCULATIONS FROM ADC VALUE
  R_ADC : ADC port map (ADC_R, dist_r);
  L_ADC : ADC port map (ADC_L, dist_l);
  
--PID IMPLEMENTATION
  dist <= to_integer(to_unsigned(dist_r,7)) when ( L0_R1 = '1' )
            else to_integer(to_unsigned(dist_l,7));
				
  process(dist)
  variable prev_err, err  : integer range -127 to 127 := 0;
  begin
    err      := dist - THRES;
    if ( (Kp * err + Kd * ( err - prev_err )) > 127 ) then
	   CORRECTN <= 127;
	 elsif ( (Kp * err + Kd * ( err - prev_err )) < -127 ) then
		CORRECTN <= -127;
	 else
	   CORRECTN <= Kp * err + Kd * ( err - prev_err );
	 end if;
    prev_err := err;
  end process;
--END PID IMPLEMENTATION
end architecture;