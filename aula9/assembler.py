
#definição dos mnemônicos e seus
#respectivo OPCODEs (em binário)
mne =	{ 
       "NOP":   "0000",
       "LDA":   "0001",
       "SOMA":  "0010",
       "SUB":   "0011",
       "LDI":   "0100",
       "STA":   "0101",
       "JMP":   "0110",
       "JEQ":   "0111",
       "CEQ":   "1000",
       "JSR":   "1001",
       "RET":   "1010",
}


DIC_CONSTANTES_MEM_ADDR = {
    'ADDR_CTE0'                     :   '0',    #RAM[0]   - @0
    'ADDR_CTE1'                     :   '1',    #RAM[1]   - @1 
    'ADDR_CTE9'                     :   '9',    #RAM[9]   - @9 

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
    'LED_F_OVERFLOW'                : '257',    #RAM[257] - @257
    'LED_F_INIBICAO'                : '258',    #RAM[258] - @258

    #Display
    'HEX0'                          : '288',
    'HEX1'                          : '289',
    'HEX2'                          : '290',
    'HEX3'                          : '291',
    'HEX4'                          : '292',
    'HEX5'                          : '293',

    "LEDR"                          : "256",
    "LEDR8"                         : "257",
    "LEDR9"                         : "258",

    "SWR"                           : "320",
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


#Converte o valor após o caractere arroba '@'
#em um valor binario
def  converteArroba(line, dicionario):
    line = line.split('@')
    try:
        if line[1] in list(dicionario.keys()):

            print(line[1])
            print(dicionario[line[1]])
            line[1] = bin(int(dicionario[line[1]]))[2:].upper().zfill(9)
            line = ''.join(line)

        else:
            line[1] = bin(int(line[1]))[2:].upper().zfill(9)
            line = ''.join(line)
    except Exception as err: 
        print(f'Erro:\n{err}')
        
        import pdb; pdb.set_trace()
    return line
 
#Converte o valor após o caractere cifrão'$'
#em um valor binario 
def  converteCifrao(line):
    line = line.split('$')
    line[1] = bin(int(line[1]))[2:].upper().zfill(9)
    line = ''.join(line)
    return line
        
#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

#Remove o comentário a partir do caractere cerquilha '#',
#deixando apenas a instrução
def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line
    
#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line):
    line = line.replace("\n", "") #Remove o caracter de final de linha
    line = line.replace("\t", "") #Remove o caracter de tabulacao
    line = line.split(' ')
    line[0] = mne[line[0]]
    line = "".join(line)
    return line

def encontra_enderecos_subrotinas(lines):
        cont = 0 #Cria uma variável para contagem
        
        for line in lines:        
            #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
            if (line.startswith('\n')):
                    continue
            elif (line.startswith(' ') or line.startswith('#')):
                print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug
            
            #Se a linha for válida para conversão, executa
            else:
                if line.startswith('%LABEL'):
                    line = line.replace("\n","")
                    sr_name = line.split(' ')[1] 
                    print(f'sr_name: {sr_name}, addr: {cont}')
                    DIC_CONSTANTES_MEM_ADDR[sr_name] = cont

                cont+=1       #Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL

    

def main():
    assembly = 'assembly.txt' #Arquivo de entrada de contem o assembly
    destinoBIN = 'BIN.txt' #Arquivo de saída que contem o binário formatado para VHDL

    with open(assembly, "r") as f: #Abre o arquivo ASM
        lines = f.readlines() #Verifica a quantidade de linhas
        
    with open(destinoBIN, "w") as f:  #Abre o destino BIN
        cont = 0 #Cria uma variável para contagem
        
        encontra_enderecos_subrotinas(lines)

        for line in lines:        
            #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
            if (line.startswith('\n')):
                    continue
            elif (line.startswith(' ') or line.startswith('#')):
                line = line.replace("\n", "")
                print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug
            
            #Se a linha for válida para conversão, executa
            else:

                if (line.startswith('--') or line.startswith('%LABEL')):
                    # Pegando linhas que são apenas comentarios e convertendo para NOP
                    instrucaoLine = 'NOP'
                    comentarioLine = line
                    line = f"tmp({cont}) := {instrucaoLine} & '0' & x\"00\"; \t --{comentarioLine}"  #Formata para o arquivo BIN

                else:
                    #Exemplo de linha => 1. JSR @14 #comentario1
                    comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha. Ex: #comentario1
                    instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução. Ex: JSR @14
                    
                    instrucaoLine = trataMnemonico(instrucaoLine) #Trata o mnemonico. Ex(JSR @14): x"9" @14

                    #print(instrucaoLine)
                        
                    if '@' in instrucaoLine: #Se encontrar o caractere arroba '@' 
                        instrucaoLine = converteArroba(instrucaoLine, DIC_CONSTANTES_MEM_ADDR) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                            
                    elif '$' in instrucaoLine: #Se encontrar o caractere cifrao '$' 
                        instrucaoLine = converteCifrao(instrucaoLine) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
                        
                    else: #Senão, se a instrução nao possuir nenhum imediator, ou seja, nao conter '@' ou '$'
                        instrucaoLine = instrucaoLine.replace("\n", "") #Remove a quebra de linha
                        instrucaoLine = instrucaoLine + 9*"0" #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                    
                    line = 'tmp(' + str(cont) + ') := "' + instrucaoLine + '";\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN
                                                                                                        #Entrada => 1. JSR @14 #comentario1
                                                                                                        #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1
                #print(f'{line}')                       
                cont+=1       #Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
                f.write(line) #Escreve no arquivo BIN.txt

if __name__ == "__main__":
    print("[+] Iniciando assembler...\n")
    main()
    print("\n[+] Assembler executado com sucesso!")
