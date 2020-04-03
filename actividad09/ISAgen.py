# Script para generar un set de instrucciones aleatorio
from random import randrange

#Funcion que devuelve el OpCode
def opcode():
    return '{0:06b}'.format(0)

#Funcion que devuelve el rs
def rs(r):
    return '{0:05b}'.format(r)

#Funcion que devuelve el rt
def rt(r):
    return '{0:05b}'.format(r)

#Funcion que devuelve el rd
def rd(r):
    return '{0:05b}'.format(r)

#Funcion que devuelve el shant
def shant():
    return '{0:05b}'.format(0)

#Funcion que devuelve el codigo de funcion de la instruccion
def funct(fun):
    fn =  {
        "ADD": "100000",
        "AND": "100100",
        "NOR": "100111",
        "OR": "100101",
        "XOR": "100110",
        "ADDU": "100001",
        "SUBU": "100011"
    }
    return fn[fun]

def manual():
    pass

#Funcion para generar el archivo totalmente automaticamente
def auto():
    funcs = ['ADD', 'SUBU']
    file = open("MemInst_init.txt", "x")

    for a in range(0, 11):
        func = funcs[randrange(len(funcs))]
        file.write(str(opcode())+" //opcode \n")
        file.write(str(rs(randrange(32)))+" //rs \n")
        file.write(str(rt(randrange(32)))+" //rt \n")
        file.write(str(rd(randrange(32)))+" //rd \n")
        file.write(str(shant())+" //shant \n")
        file.write(str(funct(func))+" //funct - "+func+"\n")
    file.close()

    print("Generado con exito MemInst_init.txt")
    exit()


while True:
    print("Desea insertar las instrucciones o generar todo aleatorio")
    op = input("((M)anual/(A)utomatico/(S)alir): ")
    if op.lower() == 'm':
        manual()
    elif op.lower() == 'a':
        auto()
    elif op.lower() == 's':
        exit()
    else:
        print("Opcion invalida")
