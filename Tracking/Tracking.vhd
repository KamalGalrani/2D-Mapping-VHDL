library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Tracking is
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
end entity;

architecture main of Tracking is
signal a_x, a_y    : integer range 0 to 30000    :=  0 ;
signal c_x, c_y    : integer range 0 to 30000    :=  0 ;
signal r_mv, l_mv  : std_logic                   := '0';
signal dx          : integer range -15 to 15     :=  0 ;
signal dy          : integer range -15 to 15     :=  0 ;
signal DT          : integer range 0 to 7        :=  0 ;
signal a_2t        : integer range -360 to 360   :=  0 ;
component D_Lookup is
  port(
      THETA2 : in  integer range -360 to 360;
      DX     : out integer range -15 to 15;
		DY     : out integer range -15 to 15;
		DT     : out integer range 0 to 7
      );
end component;
begin
  --MAPPING BUFFERS AND COMPONENTS
  ACT_X     <= a_x;
  ACT_Y     <= a_y;
  ACT_2T    <= a_2t;
  CLOSEST_X <= c_x;
  CLOSEST_Y <= c_y;
  Lookup: D_Lookup port map (a_2t, dx, dy, DT);
  
  --UPDATING ACTUAL POSITION
  process(CLK, RST)
  variable r_lck, l_lck : std_logic := '0';
  begin
  if ( RST = '1' ) then
    a_x  <= 0;
    a_y  <= 0;
    a_2t <= 0;
	 r_lck := '0';
	 l_lck := '0';
  elsif (rising_edge(CLK)) then
    if ( ENC_R = '1' and r_lck = '0' ) then
	   if ( FWD_R = '1' ) then
	     a_x  <= a_x  + dx;
	     a_y  <= a_y  + dy;
	     a_2t <= a_2t + DT;
		else
	     a_x  <= a_x  - dx;
	     a_y  <= a_y  - dy;
	     a_2t <= a_2t - DT;
		end if;
		r_lck := '1';
	 elsif ( ENC_L = '1' and l_lck = '0' ) then
	   if ( FWD_L = '1' ) then
	     a_x  <= a_x  + dx;
	     a_y  <= a_y  + dy;
	     a_2t <= a_2t - DT;
		else
	     a_x  <= a_x  - dx;
	     a_y  <= a_y  - dy;
	     a_2t <= a_2t + DT;
		end if;
		l_lck := '1';
	 end if;
	 if (ENC_R = '0') then
	   r_lck := '0';
	 end if;
	 if (ENC_L = '0') then
	   l_lck := '0';
	 end if;
  end if;
  end process;
  
  --UPDATING CLOSEST Y CO-ORDINATE WHILE FOLLOWING AN OBJECT
  ----ELSE KEEPING THE PRESENT POSITION AS CLOSEST POINT
  process (a_x, a_y)
  begin
  if ((( FOLLOWING = '1' ) and ( abs( FIN_X - c_x ) > abs( FIN_X - a_x ))) or ( FOLLOWING = '0' )) then
    c_x <= a_x;
    c_y <= a_y;
  end if;
  end process;
end architecture;