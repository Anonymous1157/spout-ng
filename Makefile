# See COPYING file for copyright, license and warranty details.

PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

CFLAGS = -m32 -O0 -g3 $(shell pkg-config --cflags sdl) -Wall -Wextra -Wpedantic -Werror
LDFLAGS = -m32 -O0 -g3 $(shell pkg-config --libs sdl)

spout: spout.o

spout.o: spout.c font.h sintable.h spout.h
