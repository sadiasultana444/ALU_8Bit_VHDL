library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_8bit_tb is

end alu_8bit_tb;

architecture Behavioral of alu_8bit_tb is

   
    component alu_8bit
    Port(
	 A   : in  STD_LOGIC_VECTOR(7 downto 0);
         B   : in  STD_LOGIC_VECTOR(7 downto 0);
         Sel : in  STD_LOGIC_VECTOR(2 downto 0);
         Y   : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
	 signal A   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal B   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal Sel : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal Y   : STD_LOGIC_VECTOR(7 downto 0);

begin
uut: alu_8bit PORT MAP (
          A => A,
          B => B,
          Sel => Sel,
          Y => Y
        );
		  stim_proc: process
    begin		
        
        A <= "00001010"; 
        B <= "00000101"; 
        Sel <= "000";
        wait for 100 ns;

        
        Sel <= "001";
        wait for 100 ns;

        
        Sel <= "010";
        wait for 100 ns;
		  
        Sel <= "011";
        wait for 100 ns;

        
        Sel <= "100";
        wait for 100 ns;

        wait;
    end process;

end Behavioral;