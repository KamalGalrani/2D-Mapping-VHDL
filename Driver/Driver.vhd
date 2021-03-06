library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Driver is
  generic(
      THRES_ERR  : positive      := 10;
		THRES_POS  : positive      := 1000;
		THRES_2T   : positive      := 30
      );
  port(
      CLK        : in std_logic;
      L1         : out std_logic := '0';
		L2         : out std_logic := '0';
		R1         : out std_logic := '0';
		R2         : out std_logic := '0';
		CORRECTN   : in  integer range -127 to 127;
		FOLLOWING  : in  std_logic;
		FIN_X      : in  integer range 0 to 30000;
		FIN_Y      : in  integer range 0 to 30000;
		ACT_X      : in  integer range 0 to 30000;
		ACT_Y      : in  integer range 0 to 30000;
		ACT_2T     : in  integer range -360 to 360;
		RUN        : in  std_logic := '0';
		NEXTPT     : out std_logic := '0'
		);
end entity;

architecture main of Driver is

begin

  process (CLK)
  begin
  if rising_edge(CLK) then
    NEXTPT <= '0';
    if FOLLOWING = '1' then
	   if CORRECTN > THRES_ERR then
	     	 L1 <= '1';
	       L2 <= '0';
	       R1 <= '0';
	       R2 <= '1';
		elsif CORRECTN < -1*THRES_ERR then
	     	 L1 <= '0';
	       L2 <= '1';
	       R1 <= '1';
	       R2 <= '0';
	   else
	     	 L1 <= '1';
	       L2 <= '0';
	       R1 <= '1';
	       R2 <= '0';
		end if;
	 elsif RUN = '1' then
	   if abs(FIN_Y - ACT_Y) < THRES_POS then
		  if abs(FIN_X - ACT_X) < THRES_POS then
		    NEXTPT <= '1';
		  elsif FIN_X > ACT_X then
		    if ( abs(ACT_2T - 180) < THRES_2T ) then
  		      L1 <= '1';
	         L2 <= '0';
	         R1 <= '1';
	         R2 <= '0';
			 else 
			   L1 <= '1';
	         L2 <= '0';
	         R1 <= '0';
	         R2 <= '1';
			 end if;
		  else
		    if ( abs(ACT_2T + 180) < THRES_2T ) then
  		      L1 <= '1';
	         L2 <= '0';
	         R1 <= '1';
	         R2 <= '0';
			 else 
			   L1 <= '1';
	         L2 <= '0';
	         R1 <= '0';
	         R2 <= '1';
			 end if;
		  end if;
		elsif FIN_Y > ACT_Y then
        if ( abs(ACT_2T) < THRES_2T ) then
  		    L1 <= '1';
	       L2 <= '0';
	       R1 <= '1';
	       R2 <= '0';
		  else 
			 L1 <= '1';
	       L2 <= '0';
	       R1 <= '0';
	       R2 <= '1';
		  end if;
		else
		  if ( abs(ACT_2T) < THRES_2T ) then
  		    L1 <= '0';
	       L2 <= '1';
	       R1 <= '0';
	       R2 <= '1';
		  else 
			 L1 <= '1';
	       L2 <= '0';
	       R1 <= '0';
	       R2 <= '1';
		  end if;
		end if;
	 else
	 L1 <= '0';
	 L2 <= '0';
	 R1 <= '0';
	 R2 <= '0';
	 end if;
  end if;
  end process;
end architecture;