palabra = input("Ingrese la palabra a convertir cada caracter en Ascii: ")
archivo = input("Como desea que se llame su archivo?: ")

file = open(archivo+".mem", "x")

for a in palabra:
    file.write('{0:08b}'.format(ord(a))+" //"+a+" - "+str(ord(a))+"\n")
file.close()

print("Generado con exito "+archivo+".mem")