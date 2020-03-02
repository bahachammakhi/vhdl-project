LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL ;
ENTITY MUX2 IS 
PORT (
ALARM_DATA : IN Std_Logic_vector(3 downto 0) ;
TIME_DATA : IN Std_Logic_vector(3 downto 0) ;
SET_DATA : IN Std_Logic_vector(3 downto 0) ;
SHOW_A : IN Std_Logic;
SHOW_T : IN Std_Logic;
DISPLAY : OUT Std_Logic_vector(3 downto 0));
END MUX2 ;

ARCHITECTURE arch2 OF MUX2 IS 
BEGIN 
process(SHOW_A)
begin 
if SHOW_T  = '1' then DISPLAY <= TIME_DATA;
elsif SHOW_A = '0' then DISPLAY <= SET_DATA ;
else  DISPLAY <= ALARM_DATA;
end if;
end process;
END arch2 ; 