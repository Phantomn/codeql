CC=gcc
CFLAGS=-m32 -fno-stack-protector -mpreferred-stack-boundary=2 -z execstack -no-pie

all: uaf

uaf:
	$(CC) $(CFLAGS) -o uaf uaf.c
