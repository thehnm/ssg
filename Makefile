PREFIX = /usr/local/bin

install: all
	mkdir -p ${DESTDIR}${PREFIX}
	cp -f ssg6 ${DESTDIR}${PREFIX}
	chmod +x ${DESTDIR}${PREFIX}/ssg6
	cp -f initsite ${DESTDIR}${PREFIX}
	chmod +x ${DESTDIR}${PREFIX}/initsite

uninstall:
	rm -f ${DESTDIR}${PREFIX}/ssg6 \
		  ${DESTDIR}${PREFIX}/initsite

.PHONY: all install uninstall
