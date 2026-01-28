PREFIX ?= /usr

all:
	@echo "Ready."

install:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 755 src/vam-tool $(DESTDIR)$(PREFIX)/bin/vam-tool
	install -d $(DESTDIR)$(PREFIX)/share/man/man1
	install -m 644 man/man1/vam-tool.1 $(DESTDIR)$(PREFIX)/share/man/man1/vam-tool.1

package:
	dpkg-buildpackage -us -uc

clean:
	rm -rf debian/vam-tool debian/.debhelper debian/files debian/vam-tool.substvars