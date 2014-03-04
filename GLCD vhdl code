library ieee;
use ieee.std_logic_1164.all;

entity proj is
port(rs, rw, en ,cs1 , cs2 : out std_ulogic;
		lcdData : out std_ulogic_vector(7 downto 0);
		button1 : in std_ulogic ;
		button2 : in std_ulogic ;
		clk : in std_ulogic);
		end entity proj;

architecture ravi of proj is
signal count_done : std_ulogic := '0';
type state is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, S15, S16, S17, S18, s19, s20);
signal present_state : state;
begin
	process
	variable count : integer := 0;
	begin
	cs1 <= '1';
	cs2 <= '0';
	wait until clk'event and clk = '1';
		--if clk'event and clk = '1' then
			if (count = 2000000) then
				count := 0;
				count_done <= '1';
			else
				count := count + 1;
				count_done <= '0';
			end if;
		--end if;
		if count = 80000 then
			case present_state is
				when s0 =>
					lcdData <= "00111000";--command 38
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s1;
				when s1 =>
					lcdData <= "00111000";
					rs <= '0';
					rw <= '0';
					en <= '1';
					present_state <= s2;
				when s2 =>
					lcdData <= "00111000";
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s3;
				when s3 =>
					lcdData <= "00000001";--command 01
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s4;
				when s4 =>
					lcdData <= "00000001";
					rs <= '0';
					rw <= '0';
					en <= '1';
					present_state <= s5;
				when s5 =>
					lcdData <= "00000001";
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s6;
				when s6 =>
					lcdData <= "00001110";--command 0e
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s7;
				when s7 =>
					lcdData <= "00001110";
					rs <= '0';
					rw <= '0';
					en <= '1';
					present_state <= s8;
				when s8 =>
					lcdData <= "00001110";
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s9;
				when s9 =>
					lcdData <= "10000000";--command 80
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s10;
				when s10 =>
					lcdData <= "10000000";
					rs <= '0';
					rw <= '0';
					en <= '1';
					present_state <= s11;
				when s11 => 
					lcdData <= "10000000";
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s12;
				when s12 =>
				if (button1 = '1') and (button2 = '1') then
				present_state <= s12;
				end if;
				if (button1 = '0') and (button2 = '1') then
				present_state <= s15;
				end if ;
				if (button1 = '1') and (button2 = '0') then
				present_state <= s0;
				end if ;
				if (button1 = '0') and (button2 = '0') then
				present_state <= s0;
				end if ;
				when s15 =>
					lcdData <= "01000001";--A
					rs <= '1';
					rw <= '0';
					en <= '0';
					present_state <=s16;
				when s16 =>
					lcdData <= "01000001";
					rs <= '1';
					rw <= '0';
					en <= '1';
					present_state <= s17;
				when s17 =>
					lcdData <= "01000001";
					rs <= '1';
					rw <= '0';
					en <= '0';
					present_state <= s18;
			
				when s18 =>
				   lcdData <= "00000110";--command 0x06 increment cursor
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s19;
				when s19 =>
					lcdData <= "00000110";
					rs <= '0';
					rw <= '0';
					en <= '1';
					present_state <= s20;
				when s20 => 
					lcdData <= "00000110";
					rs <= '0';
					rw <= '0';
					en <= '0';
					present_state <= s12 ;
				when others=>
				present_state <= s0;
				end case;
		end if;
	end process;
end ravi;
		
