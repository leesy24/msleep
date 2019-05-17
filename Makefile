#Makefile for msleep utility

CC ?= gcc
STRIP ?= strip
LIBS = 
CFLAGS = -g -O -Wall
LDFLAGS = -g

LIBSRC =
LIBOBJ = $(LIBSRC:%.c=%.o)

all: msleep

msleep: src/msleep.o $(LIBOBJ)
	$(CC) $(LDFLAGS) $(LIBOBJ) src/msleep.o -o msleep
	$(STRIP) msleep

clean:
	rm -f $(LIBOBJ) src/msleep.o msleep
