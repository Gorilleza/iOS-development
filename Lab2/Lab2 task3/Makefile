# Makefile for project with structures

program: build/main.o build/student.o
	gcc -o program build/main.o build/student.o

build/main.o: src/main.c
	mkdir -p build
	gcc -c -o build/main.o src/main.c

build/student.o: src/student.c
	gcc -c -o build/student.o src/student.c

clean:
	rm -f *.o program
	rm -rf build/
