#Makefile for Crystalfontz UNIX examples

CC = i486-openwrt-linux-gcc
STRIP = i486-openwrt-linux-strip
#CC = gcc
#STRIP = strip
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
