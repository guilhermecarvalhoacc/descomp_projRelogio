'''
Le um arquivo assembly.

Remove "\n"

If @ in line     => 

else $ in line   =>

elif ret in line =>

REG0 -> CTE0
REG1 -> CTE1
REG2 -> CTE9
REG3 -> REG uso genérico
'''

ASSEMBLY_FILE = 'assembly.txt'
#ASSEMBLY_FILE = 'assembly_testebotao.txt'
OUT_BIN       = 'BIN.txt'

LIST_OPCODES = ['NOP', 'LDA', 'SOMA', 'SUB', 'LDI', 'STA', 'JMP', 'JEQ', 'CEQ', 'JSR', 'RET']

DIC_CONSTANTES_MEM_ADDR = {
    #'ADDR_CTE0'                     :   '0',    #RAM[0]   - @0
    #'ADDR_CTE1'                     :   '1',    #RAM[1]   - @1 
    #'ADDR_CTE9'                     :   '9',    #RAM[9]   - @9 

    'ADDR_COUNTER_UNIDADE'          :  '10',    #RAM[10]  - @10
    'ADDR_COUNTER_DEZENA'           :  '11',    #RAM[11]  - @11
    'ADDR_COUNTER_CENTENA'          :  '12',    #RAM[12]  - @12
    'ADDR_COUNTER_MILHAR'           :  '13',    #RAM[13]  - @13
    'ADDR_COUNTER_DEZ_MILHAR'       :  '14',    #RAM[14]  - @14
    'ADDR_COUNTER_CEN_MILHAR'       :  '15',    #RAM[15]  - @15

    'ADDR_LIMIT_COUNTER_UNIDADE'    :  '16',    #RAM[16]  - @16
    'ADDR_LIMIT_COUNTER_DEZENA'     :  '17',    #RAM[17]  - @17
    'ADDR_LIMIT_COUNTER_CENTENA'    :  '18',    #RAM[18]  - @18
    'ADDR_LIMIT_COUNTER_MILHAR'     :  '19',    #RAM[19]  - @19
    'ADDR_LIMIT_COUNTER_DEZ_MILHAR' :  '20',    #RAM[20]  - @20
    'ADDR_LIMIT_COUNTER_CEN_MILHAR' :  '21',    #RAM[21]  - @21

    'ADDR_FLAG_OVERFLOW'            :  '22',    #RAM[22]  - @22
    'ADDR_FLAG_INIBICAO'            :  '23',    #RAM[23]  - @23
    'LED_F_OVERFLOW'                : '257',    #RAM[258] - @258
    'LED_F_INIBICAO'                : '258',    #RAM[258] - @258

    #Display
    'HEX0'                          : '288',
    'HEX1'                          : '289',
    'HEX2'                          : '290',
    'HEX3'                          : '291',
    'HEX4'                          : '292',
    'HEX5'                          : '293',

    "LEDR"                          : "256",
    "SW0"                           : "320",
    "SW1"                           : "320",
    "SW2"                           : "320",
    "SW3"                           : "320",
    "SW4"                           : "320",
    "SW5"                           : "320",
    "SW6"                           : "320",
    "SW7"                           : "320",
    "SW8"                           : "321",
    "SW9"                           : "322",
    "KEY0"                          : "352",
    "KEY1"                          : "353",
    "KEY2"                          : "354",
    "KEY3"                          : "355",
    "FPGA_RESET"                    : "356",
    "CLEAR_KEY0"                    : "511",
    "CLEAR_KEY1"                    : "510"
}


def load_input(file):
    with open(file, 'r') as f:
        lines = f.readlines()

    lines = [line.replace('\n','') for line in lines if not (line.startswith('\n'))]
    lines = [line for line in lines if not line.startswith(('#', ' '))]
    return lines

def map_labels(assembly_lines):
    cont = 0

    for line in assembly_lines:
        if line.startswith('%LABEL'):
            line = line.replace("\n","")
            sr_name = line.split(' ')[1] 
            #print(f'sr_name: {sr_name}, addr: {cont}')
            DIC_CONSTANTES_MEM_ADDR[sr_name] = cont
        else:
            cont+=1
    return 

def get_opcode(assembly_line):
    for opcode in LIST_OPCODES:
        if opcode in assembly_line:
            assembly_line = assembly_line.replace(opcode, ' ').strip()
            return opcode, assembly_line 

    print(f'Nenhum opcode na string, erro em: {assembly_line}')
    return None

def int_to_hex(number):
    '''
    ex: 
    '3'   -> '003'
    '10'  -> '00A'
    '256' -> '100'
    '''
    return hex(int(number))[2:].upper().zfill(3)

def format_corrector(hex_number):
    hex_number = str(hex_number)
    bit9       = hex_number[0]
    hex_number = hex_number[1:]
    return f"'{bit9}' & x\"{hex_number}\""

def mem_addr_to_instruction_format(mem_addr):
    mem_addr             = mem_addr.replace('@','').strip()
    
    if mem_addr in DIC_CONSTANTES_MEM_ADDR:
        mem_addr = DIC_CONSTANTES_MEM_ADDR[mem_addr]

    hex_mem_addr         = int_to_hex(mem_addr)
    mem_addr_instruction = format_corrector(hex_mem_addr)
    return mem_addr_instruction

def imediato_to_instruction_format(imediato):
    imediato             = imediato.replace('$','').strip()

    if imediato in DIC_CONSTANTES_MEM_ADDR: 
        imediato = DIC_CONSTANTES_MEM_ADDR[imediato]

    hex_imediato         = int_to_hex(imediato)
    imediato_instruction = format_corrector(hex_imediato)
    return imediato_instruction

def convert_assembly(assembly_lines):
    INSTRUCOES = []
    numero_instrucao = 0

    for line in assembly_lines:
        if line.startswith('--'):
            INSTRUCOES.append(line) #Store only the commentary

        elif line.startswith('NOP'):
            instruction0 = format_corrector(int_to_hex(0))
            INSTR = f"tmp ({numero_instrucao}) := NOP & R1 & {instruction0};" # NOP '0'
            INSTRUCOES.append(INSTR)
            numero_instrucao += 1
        
        elif 'RET' in line:
            instruction0 = format_corrector(int_to_hex(0))
            INSTR = f"tmp ({numero_instrucao}) := RET & R1 & {instruction0};" # RET '0'
            INSTRUCOES.append(INSTR)
            numero_instrucao += 1

        elif line.startswith('%LABEL'):
            comentario = f"-- {line}"
            INSTRUCOES.append(comentario)

        else:
            if '#' in line:
                line, comentary = line.split('#')
            else:
                comentary = ''
            
            #print(line)
            opcode, line_sem_opcode = get_opcode(line)
            
            if opcode in ['JSR', 'JEQ', 'JMP']:
                rom_addr = line_sem_opcode.replace('@', '').strip()
                if rom_addr in DIC_CONSTANTES_MEM_ADDR:
                    rom_addr = DIC_CONSTANTES_MEM_ADDR[rom_addr]
                    hex_rom_addr = int_to_hex(rom_addr)
                    imediato     = format_corrector(hex_rom_addr)
                    reg          = 'R1'
                    INSTR = f"tmp ({numero_instrucao}) := {opcode} & {reg} & {imediato}; \t-- {opcode} {line_sem_opcode} | {comentary}"
                    INSTRUCOES.append(INSTR)
                    numero_instrucao += 1
                    
                else:
                    print(f'Erro na linha: {line}')


            elif '@' in line:
                reg, mem_addr = line_sem_opcode.split(',')
                mem_addr      = mem_addr_to_instruction_format(mem_addr)
                INSTR = f"tmp ({numero_instrucao}) := {opcode} & {reg} & {mem_addr}; \t-- {opcode} {line_sem_opcode} | {comentary}"
                INSTRUCOES.append(INSTR)
                numero_instrucao += 1
                #print(INSTR)
                
            elif '$' in line:
                reg, imediato = line_sem_opcode.split(',')
                imediato      = imediato_to_instruction_format(imediato)
                INSTR = f"tmp ({numero_instrucao}) := {opcode} & {reg} & {imediato}; \t-- {opcode} {line_sem_opcode} | {comentary}"
                INSTRUCOES.append(INSTR)
                #print(INSTR)
                numero_instrucao += 1
            else:
                print(f'Erro com a linha: {line}')

    return INSTRUCOES

def main():
    raw_assembly = load_input(ASSEMBLY_FILE)
    map_labels(raw_assembly)
    instrucoes = convert_assembly(raw_assembly)
    
    with open(OUT_BIN, 'w') as f:
        for instr in instrucoes:
            f.write(instr + '\n')

if __name__=='__main__':
    main()
