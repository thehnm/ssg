PREFIX = /usr/local

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ssg5 ${DESTDIR}${PREFIX}/bin
	chmod +x ${DESTDIR}${PREFIX}/bin/ssg5

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/ssg5

.PHONY: all install uninstall
