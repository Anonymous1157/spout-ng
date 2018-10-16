# See COPYING file for copyright, license and warranty details.

PREFIX ?= /usr/local
MANPREFIX ?= ${PREFIX}/share/man/man1

CFLAGS = -m32 -O0 -g3 $(shell pkg-config --cflags sdl) -Wall -Wextra -Wpedantic -Werror
LDFLAGS = -m32 -O0 -g3 $(shell pkg-config --libs sdl)

src/spout: src/spout.o

src/spout.o: src/spout.c src/font.h src/sintable.h src/spout.h

clean:
	${RM} src/spout.o src/spout

install: src/spout src/spout.1
	install -d ${PREFIX}/bin/
	install -m755 src/spout ${PREFIX}/bin/
	install -d ${MANPREFIX}/
	install -m644 doc/spout.1 ${MANPREFIX}/

.PHONY: install clean
