bin_PROGRAMS += secchan/ofprotocol
man_MANS += secchan/ofprotocol.8

secchan_ofprotocol_SOURCES = \
	secchan/discovery.c \
	secchan/discovery.h \
	secchan/executer.c \
	secchan/executer.h \
	secchan/emerg-flow.c \
	secchan/emerg-flow.h \
	secchan/fail-open.c \
	secchan/fail-open.h \
	secchan/failover.c \
	secchan/failover.h \
	secchan/flow-end.c \
	secchan/flow-end.h \
	secchan/in-band.c \
	secchan/in-band.h \
	secchan/netflow.h \
	secchan/port-watcher.c \
	secchan/port-watcher.h \
	secchan/protocol-stat.c \
	secchan/protocol-stat.h \
	secchan/ratelimit.c \
	secchan/ratelimit.h \
	secchan/secchan.c \
	secchan/secchan.h \
	secchan/status.c \
	secchan/status.h \
	secchan/stp-secchan.c \
	secchan/stp-secchan.h
secchan_ofprotocol_LDADD = lib/libopenflow.a $(FAULT_LIBS) $(SSL_LIBS)

EXTRA_DIST += secchan/ofprotocol.8.in
DISTCLEANFILES += secchan/ofprotocol.8

include secchan/commands/automake.mk
