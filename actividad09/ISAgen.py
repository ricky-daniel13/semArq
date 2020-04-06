# Script para generar un set de instrucciones aleatorio
from random import randrange, choice

#Diccionario con funciones
fn =  {
    "ADD": "100000",
    "AND": "100100",
    "NOR": "100111",
    "OR": "100101",
    "XOR": "100110",
    "SUB": "100010",
    "MULT": "011000",
    "DIV": "011010"
}
#Funcion que devuelve el OpCode
def opcode():
    return '{:06b}'.format(0)

#Funcion que devuelve el rs
def rs(r):
    return '{:05b}'.format(r)

#Funcion que devuelve el rt
def rt(r):
    return '{:05b}'.format(r)

#Funcion que devuelve el rd
def rd(r):
    return '{:05b}'.format(r)

#Funcion que devuelve el shant
def shant():
    return '{:05b}'.format(0)

#Funcion que devuelve el codigo de funcion de la instruccion
def funct(fun):
    return fn[fun]

#Funcion para generar el set de instrucciones
def gen():
    mem = open("simulation/modelsim/MemInst_init.txt", "w")

    for a in range(0, 12):
        func = choice(list(fn.keys()))
        op = opcode()
        rS = randrange(31)
        Rs = rs(rS)
        rT = randrange(31)
        Rt = rt(rT)
        rD = randrange(15)
        Rd = rd(rD)
        shan = shant()
        fun = funct(func)
        mem.write(str(op) + str(Rs)[3:5] + " //opcode + 2 bits de rs \n")
        mem.write(str(Rs)[0:3] + str(Rt) + " //rs " + str(rS) + " rt " + str(rT) + " \n")
        mem.write(str(Rd) + str(shan)[2:5] + " //rd " + str(rD) + " + 3 bits de shant \n")
        mem.write(str(shan)[0:2] + str(fun) + " //shant + //funct - " + func + "\n")
    mem.close()

    print("Generado con exito MemInst_init.txt")
    
    regs = open("simulation/modelsim/RBdata_init.txt", "w")

    for i in range(0,16):
        regs.write(str('{:032b}'.format(0)) + " //0 - 15 = 0\n")
    for i in range(0,16):
        num = randrange(1000)
        regs.write(str('{:032b}'.format(num)) + " //" + str(num) + "\n")  #Numero aleatorio de 32 bits
    regs.close()

    print("Generado con exito RBdata_init.txt")

gen()
