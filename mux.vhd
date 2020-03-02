LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL ;
ENTITY MUX IS 
PORT (
ALARM_DATA : IN Std_Logic_vector(3 downto 0) ;
TIME_DATA : IN Std_Logic_vector(3 downto 0) ;
SHOW_A : IN Std_Logic;
DISPLAY : OUT Std_Logic_vector(3 downto 0));
END MUX ;

ARCHITECTURE arch OF MUX IS 
BEGIN 
process(SHOW_A)
begin 
if SHOW_A = '0' then DISPLAY <= TIME_DATA ;
elsif SHOW_A = '1' then DISPLAY <= ALARM_DATA;
end if;
end process;
END arch ; 