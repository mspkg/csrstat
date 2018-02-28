CC ?= cc
CFLAGS ?= -g -O2 -Wall
PREFIX ?= /usr/local

all:
	${CC} ${CFLAGS} ${LDFLAGS} -o csrstat csrstat.c

install:
	test -d ${DESTDIR}${PREFIX}/sbin || mkdir -p ${DESTDIR}${PREFIX}/sbin
	install -pm 755 csrstat ${DESTDIR}${PREFIX}/sbin

clean:
	rm -f csrstat
	rm -rf csrstat.dSYM/
