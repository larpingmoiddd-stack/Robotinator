CC ?= /usr/bin/gcc
PKG_CONFIG ?= /usr/bin/pkg-config
CFLAGS ?= -O2 -Wall -Wextra
LIBS = $(shell $(PKG_CONFIG) --cflags --libs gtk+-3.0 vte-2.91)
PREFIX ?= /usr

all: robotinator

robotinator: robotinator.c
	$(CC) $(CFLAGS) robotinator.c -o robotinator $(LIBS)

install: robotinator
	install -Dm755 robotinator $(DESTDIR)$(PREFIX)/bin/robotinator
	install -Dm644 io.github.johhny.Robotinator.desktop $(DESTDIR)$(PREFIX)/share/applications/io.github.johhny.Robotinator.desktop
	install -Dm644 io.github.johhny.Robotinator.metainfo.xml $(DESTDIR)$(PREFIX)/share/metainfo/io.github.johhny.Robotinator.metainfo.xml
	install -Dm644 io.github.johhny.Robotinator.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/scalable/apps/io.github.johhny.Robotinator.svg

clean:
	rm -f robotinator
