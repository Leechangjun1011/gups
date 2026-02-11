CC = gcc
CFLAGS = -g -Wall -O3
LIBS = -lm -lpthread

all: gups 

gups: gups.o timer.o
	$(CC) $(CFLAGS) $(INCLUDES) -o gups gups.o zipf.o timer.o $(LIBS)

gups.o: gups.c zipf.c gups.h
	$(CC) $(CFLAGS) $(INCLUDES) -c gups.c zipf.c

timer.o: timer.c timer.h
	$(CC) $(CFLAGS) $(INCLUDES) -c timer.c

clean:
	rm -rf *.o gups
