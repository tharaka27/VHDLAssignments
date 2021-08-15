library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is

component schematicFile
  Port ( 
            A : IN STD_LOGIC;
            B : IN STD_LOGIC;
            C : IN STD_LOGIC;
            Q : OUT STD_LOGIC );
end component;

    signal A_wire : STD_LOGIC;
    signal B_wire : STD_LOGIC;
    signal C_wire : STD_LOGIC;
    signal Q_wire : STD_LOGIC;
    
begin

uut_1 : schematicFile
    port map(
     A => A_wire,
     B => B_wire,
     C => C_wire,
     Q => Q_wire);

stimuli: process
begin
    A_wire <= '0';
    B_wire <= '0';
    C_wire <= '0';
    wait for 100ns;
    A_wire <= '1';
    B_wire <= '0';
    C_wire <= '0';
    wait for 100ns;
    A_wire <= '0';
    B_wire <= '1';
    C_wire <= '0';
    wait for 100ns;
    A_wire <= '1';
    B_wire <= '1';
    C_wire <= '0';
    wait for 100ns;
    A_wire <= '0';
    B_wire <= '0';
    C_wire <= '1';
    wait for 100ns;
    A_wire <= '1';
    B_wire <= '0';
    C_wire <= '1';
    wait for 100ns;
    A_wire <= '0';
    B_wire <= '1';
    C_wire <= '1';
    wait for 100ns;
    A_wire <= '1';
    B_wire <= '1';
    C_wire <= '1';
    wait for 100ns;
    wait;
end process;

end Behavioral;
