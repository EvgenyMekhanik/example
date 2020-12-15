all: example

example: example.o
	gcc example.o -o example -luv -lev -lpthread

example.o: example.c queue.h
	gcc -c -g example.c

clean:
	rm -rf *.o example

