#variables:
CC = gcc
FLAGS = -Wall
AR = ar

all: mains maind

mains: mainProg.o libmyMath.a 
	$(CC) $(FLAGS) -o mains mainProg.o  libmyMath.a 
maind: mainProg.o libmyMath.so 
	$(CC) $(FLAGS) -o maind mainProg.o ./libmyMath.so 

# Creating static lib
libmyMath.a: power.o basicMath.o
	$(AR) -rcs libmyMath.a power.o basicMath.o
# Creating dynamic lib
libmyMath.so: power.o basicMath.o
	$(CC) -shared -o libmyMath.so power.o basicMath.o

mainProg.o: mainProg.c myMath.h
	$(CC) $(FLAGS) -c mainProg.c
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