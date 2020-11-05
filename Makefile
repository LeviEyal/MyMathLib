CC = gcc
FLAGS = -Wall
AR = ar

mains: libmyMath.a mainProg.o
	$(CC) $(FLAGS) -o mains libmyMath.a mainProg.o
maind: libmyMath.so mainProg.o
	$(CC) $(FLAGS) -o maind ./libmyMath.so mainProg.o

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

mymaths: libmyMath.a

mymathd: libmyMath.so

.PHONY: all clean
all:
clean: 
	rm -f *.o *.a *.so maind mains