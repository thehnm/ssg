PREFIX = /usr/local

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ssg5 ${DESTDIR}${PREFIX}/bin
	chmod +x ${DESTDIR}${PREFIX}/bin/ssg5
	cp -f initsite ${DESTDIR}${PREFIX}/bin
	chmod +x ${DESTDIR}${PREFIX}/bin/initsite

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/ssg5 \
		  ${DESTDIR}${PREFIX}/bin/initsite

.PHONY: all install uninstall
