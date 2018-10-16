# See COPYING file for copyright, license and warranty details.

VERSION = 1.4

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# includes and libs
SDLINC = $(shell pkg-config --cflags sdl)
SDLLIB = $(shell pkg-config --libs sdl)

INCS = -I. -I/usr/include ${SDLINC}
LIBS = -L/usr/lib -lc ${SDLLIB}

# flags
CFLAGS = -std=gnu99 -Wall -Werror ${INCS} -DVERSION=\"${VERSION}\"
LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
