library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Stepper is
  generic(
      SPEED     : integer range 0 to 10   := 1
      );
  port(
      CLK  : in  std_logic;
      PI   : in  std_logic_vector( 7 downto 0 );
      PA   : out std_logic_vector( 7 downto 0 );
      CH1  : out std_logic;
		CH2  : out std_logic;
		CH3  : out std_logic;
		CH4  : out std_logic;
		FWD  : out std_logic
      );
end entity;

architecture main of Stepper is
signal position : unsigned (7 downto 0) := "00000000";
signal forward  : std_logic;
signal clr      : std_logic;
signal t        : integer range 0 to 255 := 0;
signal count : integer range 0 to 50000000;
signal stepper_clk  : std_logic;
begin
  process (CLK)
  begin
    if rising_edge(CLK) then
      stepper_clk <= '0';
      if (count = 500000) then
        count <= 0;
        stepper_clk <= '1';
      else
        count <= count + 1;
      end if;
    end if;
  end process;
  FWD <= forward;
  process(stepper_clk, clr)
  begin
    if ( rising_edge(stepper_clk) ) then
      if ( position /= unsigned(PI) ) then
        t <= t + SPEED;
        if ( t = 255 ) then
          t <= 0;
          if ( forward = '1' ) THEN
            position <= position + "00000001";
          else
            position <= position - "00000001";
          end if;
        end if;
      end if;
    end if;
  end process;
  
  PA <= std_logic_vector( position );
  --forward <= '0' when ( position > unsigned(PI) ) else '1';
  forward <= '1';
  CH1   <= ( '1' xor forward ) when t < 128           else ( '0' xor forward );
  CH2   <= ( '0' xor forward ) when t < 64 OR t > 191 else ( '1' xor forward );
  CH3   <= ( '0' xor forward ) when t < 128           else ( '1' xor forward );
  CH4   <= ( '1' xor forward ) when t < 64 OR t > 191 else ( '0' xor forward );
end architecture;