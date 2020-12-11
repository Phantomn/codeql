CC=gcc
CFLAGS=-m32 -fno-stack-protector -mpreferred-stack-boundary=2 -z execstack -no-pie

all: bof

uaf:
	$(CC) $(CFLAGS) -o bof bof.c
