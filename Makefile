#==========================================
#    Makefile: makefile for sl 5.1
#	Copyright 1993, 1998, 2014
#                 Toyoda Masashi
#		  (mtoyoda@acm.org)
#	Last Modified: 2014/03/31
#==========================================

CC=gcc
CFLAGS=-O -Wall

executable_name=sl

all: sl

install: sl
	install -m755 ${executable_name} /usr/bin/

uninstall:
	rm /usr/bin/${executable_name}

sl: sl.c sl.h
	$(CC) $(CFLAGS) -o ${executable_name} sl.c -lncurses

clean:
	rm -f sl

distclean: clean
