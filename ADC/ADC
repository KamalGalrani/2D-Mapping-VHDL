library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity proj2 is 
port (dac : in unsigned(7 downto 0);
thr : in integer range 0 to 255 ;
valu : out std_logic;
clk : in std_logic);
end entity proj2 ;

architecture ravi of proj2 is
signal sum :integer range 0 to 25599;
signal err : integer range 0 to 255;
begin
 process (clk)
 variable count: integer range 0 to 255;
 begin
 if count = 100 then
 err <= ((sum/100)-thr);
 else 
 sum <= sum + conv_integer (dac);
 count := count+1;
 end if;
 if (err>0) then valu <= '1';
 else valu <= '0';
 end if;
 end process;
end architecture ravi;
