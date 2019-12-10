#!/usr/bin/make

all: filter_source.exe

clean:
	-rm -f lex.yy.c filter_source.exe

install: all
	cp -p filter_source.exe /home/rcownie/bin/filter_source.exe

filter_source.exe: filter_source.lex
	flex filter_source.lex
	gcc -g -O2 -o $@ lex.yy.c -lfl
  
