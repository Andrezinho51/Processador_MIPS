-- Bloco de instrucoes da memoria
-- 
-- aqui esta presente  
-- e salva ele em um segundo array
-- 
-- Pega um endereço de 32bits e retorna a instrução daquele endereço


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity instruction_memory is
	port (
		read_address: in STD_LOGIC_VECTOR (31 downto 0);
		instruction, last_instr_address: out STD_LOGIC_VECTOR (31 downto 0)
	);
end instruction_memory;


architecture behavioral of instruction_memory is	  

   -- 128 bytes (32 linhas * 4 bytes/linha)
   type mem_array is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
    
	signal data_mem: mem_array := (
        "00100001000010000000000000000000", -- addi $t0, $t0, 0
        "00100001001010010000000000000001", -- addi $t1, $t1, 1 
        "00100001010010100000000000010001", -- addi $t2, $t2, 17
        "00100001011010110000000000000000", -- addi $t3, $t3, 0
        "10101110000010000000000000000000", -- sw $t0, 0($s0)
        "00000001000010010110000000100000", -- add $t4, $t0, $t1
        "00000001001000000100000000100000", -- add $t0, $t1,$zero
        "00000001100000000100100000100000", -- add $t1, $t4, $zero
        "00100001011010110000000000000001", -- addi $t3,$t3, 1
        "00100010000100000000000000000100", -- addi $s0,$s0, 4 
        "00010001011010100000000000000001", -- beq $t3, $t2, exit
        "00001000000000000000000000000100", -- j loop
        "00000000000011111111111111111111", -- exit
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",  
        "00000000000000000000000000000000", -- mem 20
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000", 
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000",
        "00000000000000000000000000000000", 
        "00000000000000000000000000000000", -- mem 30
        "00000000000000000000000000000000",
        "00000000000000000000000000000000" 
    );

    begin
	 -- declarar o ultimo address de instrucao AQUI
	 last_instr_address <= "00000000000000000000000000110100";
    instruction <= data_mem(to_integer(unsigned(read_address(31 downto 2))));
	 

end behavioral;