library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity schematicFile is
  Port ( 
            A : IN STD_LOGIC;
            B : IN STD_LOGIC;
            C : IN STD_LOGIC;
            Q : OUT STD_LOGIC );
end schematicFile;

architecture Behavioral of schematicFile is

component and_gate_3
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : out STD_LOGIC);
end component;

component nor_gate
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end component;

component nand_gate
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end component;

signal nand_wire : STD_LOGIC;
signal nor_wire : STD_LOGIC;

begin
    
nand_gate_ins : nand_gate
    port map(
        a => A,
        b => B,
        c => nand_wire);

nor_gate_ins : nor_gate
    port map(
        a => A,
        b => B,
        c => nor_wire);

and_gate_3_ins : and_gate_3
    port map(
        a => nand_wire,
        b => nor_wire,
        c => C,
        d => Q );

end Behavioral;
