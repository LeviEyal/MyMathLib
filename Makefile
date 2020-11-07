#variables:
CC = gcc
FLAGS = -Wall
AR = ar

all: mains maind

mains: main.o libmyMath.a 
	$(CC) $(FLAGS) -o mains main.o  libmyMath.a 
maind: main.o libmyMath.so 
	$(CC) $(FLAGS) -o maind main.o ./libmyMath.so 

# Creating static lib
libmyMath.a: power.o basicMath.o
	$(AR) -rcs libmyMath.a power.o basicMath.o
# Creating dynamic lib
libmyMath.so: power.o basicMath.o
	$(CC) -shared -o libmyMath.so power.o basicMath.o

main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c

#Creates a static library
mymaths: libmyMath.a

mymathd: libmyMath.so

.PHONY: all clean

clean: 
	rm -f *.o *.a *.so maind mains