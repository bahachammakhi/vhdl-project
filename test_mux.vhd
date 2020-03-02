LIBRARY IEEE  ;
USE IEEE.STD_LOGIC_1164.ALL ;
entity testmux is 
end testmux ; 
architecture archtest of testmux is 
component mux2  
port (alarm_data :in std_logic_vector(3 downto 0 );
	   time_data:in std_logic_vector(3 downto 0 );
	   set_data : in std_logic_vector(3 downto 0);
	  show_a : in std_logic ;
	  show_t: in std_logic;
	   display :out std_logic_vector(3 downto 0));
	   
end component;
signal s_alarm_data :  std_logic_vector(3 downto 0 );
signal s_time_data:  std_logic_vector(3 downto 0 );
signal s_set_data :  std_logic_vector(3 downto 0 );
signal s_show_a :  std_logic;
signal s_show_t : std_logic;
signal s_display :  std_logic_vector(3 downto 0) ;
begin
    inst : mux2 port map(
		s_alarm_data ,
		s_time_data ,
		s_set_data,
		s_show_a ,
		s_show_t,
		s_display);
	
	proc:process
    begin 
	s_alarm_data <= "0000";
	s_time_data <= "1001";
	s_set_data <= "1000";
	s_show_t <= '1';
	s_show_a <= '1';
	wait for 10 ns ;
	s_alarm_data <= "1000";
	s_time_data <= "1101";
	s_set_data <= "1001";
	s_show_t <= '0';
	wait for 10 ns ; 
	s_alarm_data <= "0110";
	s_time_data <= "1111";
	s_set_data <= "1010";
	wait for 10 ns ; 
	s_alarm_data <= "1001";
	s_time_data <= "1000";
	s_set_data <= "1100";
	wait for 10 ns ; 
    s_show_a <='0';
    wait for 10 ns;
    s_alarm_data <= "1000";
	s_time_data <= "1110";
	s_set_data <= "1010";
	s_show_t <= '1';
    wait ;
    end process proc;
    end  archtest;

