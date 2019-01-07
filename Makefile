#Allie Clifford
#Makefile for comp111 assignment 2
#Date created: 10/01/2018
#Last modified: 10/05/2018

CC = gcc
CLFAGS = -g -std=c99 -Wall -Wextra -Werror -Wfatal-errors -pedantic
LDLIBS = -lrt -lpthread

all: a2

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

a2: aardvarks.o anthills.o
	$(CC) $^ -o $@ $(LDLIBS)

clean:
	rm -f a2 *.o

