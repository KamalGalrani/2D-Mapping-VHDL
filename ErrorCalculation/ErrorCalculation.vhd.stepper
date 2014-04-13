library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Navigation is
  generic(
      THR  : integer range 0 to 255 := 30
      );
  port(
		RGHT   : in  std_logic;
      ADC_L1 : in  unsigned(7 downto 0);
		ADC_L2 : in  unsigned(7 downto 0);
		ADC_R1 : in  unsigned(7 downto 0);
		ADC_R2 : in  unsigned(7 downto 0);
		ERR    : out integer range -255 to 255;
		ROT    : out integer range -127 to 127
      );
end entity;

architecture main of Navigation is
begin

 ERR <= (to_integer(ADC_L1) + to_integer(ADC_L2))/2 - THR when (RGHT = '0') else (to_integer(ADC_R1) + to_integer(ADC_R2))/2 - THR;
 ROT <= (to_integer(ADC_L1) - to_integer(ADC_L2))/2 when (RGHT = '0') else (to_integer(ADC_R2) - to_integer(ADC_R1))/2;
end architecture;