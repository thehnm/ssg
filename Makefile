PREFIX = /usr/local/bin

install: all
	mkdir -p ${DESTDIR}${PREFIX}
	cp -f ssg ${DESTDIR}${PREFIX}
	chmod +x ${DESTDIR}${PREFIX}/ssg
	cp -f ssg-initsite ${DESTDIR}${PREFIX}
	chmod +x ${DESTDIR}${PREFIX}/ssg-initsite

uninstall:
	rm -f ${DESTDIR}${PREFIX}/ssg \
		  ${DESTDIR}${PREFIX}/ssg-initsite

.PHONY: all install uninstall
