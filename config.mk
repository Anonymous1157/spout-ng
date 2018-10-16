# See COPYING file for copyright, license and warranty details.

VERSION = 1.4

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# includes and libs
SDLINC = $(shell pkg-config --cflags sdl)
SDLLIB = $(shell pkg-config --libs sdl)

INCS = -I. ${SDLINC}
LIBS = -lc ${SDLLIB}

# flags
CFLAGS = -m32 -Wall -Wextra -Wpedantic -Werror -O0 -g3 ${INCS} -DVERSION=\"${VERSION}\"
LDFLAGS = -m32 -O0 -g3 ${LIBS}

# compiler and linker
CC = cc
