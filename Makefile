BINDIR = /usr/local/bin

install: all
	mkdir -p ${DESTDIR}${BINDIR}
	cp -f ssg5 ${DESTDIR}${BINDIR}
	chmod +x ${DESTDIR}${BINDIR}/ssg5
	cp -f initsite ${DESTDIR}${BINDIR}
	chmod +x ${DESTDIR}${BINDIR}/initsite

uninstall:
	rm -f ${DESTDIR}${BINDIR}/ssg5 \
		  ${DESTDIR}${BINDIR}/initsite

.PHONY: all install uninstall
