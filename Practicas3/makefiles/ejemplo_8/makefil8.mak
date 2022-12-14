#Fichero: makefil8.mak
#Makefile con macros definidas por el usuario

#Definicion de macros
OBJ = main.o vector.o orden.o
FLAGS = -g -c

destinos: main.x clean

main.x: $(OBJ)
	gcc -o main.x $(OBJ)

main.o: main.c vector.h orden.h
	gcc $(FLAGS) main.c

vector.o: vector.c vector.h
	gcc $(FLAGS) vector.c

orden.o: orden.c orden.h
	gcc $(FLAGS) orden.c

clean:
	rm $(OBJ)
