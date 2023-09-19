LIBNAME = lpeglabel
LUADIR = ../lua-bootstrap/include/

COPT = -O2
# COPT = -DLPEG_DEBUG -g

CWARNS = -Wall -Wextra -pedantic \
	-Waggregate-return \
	-Wcast-align \
	-Wcast-qual \
	-Wdisabled-optimization \
	-Wpointer-arith \
	-Wshadow \
	-Wsign-compare \
	-Wundef \
	-Wwrite-strings \
	-Wbad-function-cast \
	-Wdeclaration-after-statement \
	-Wmissing-prototypes \
	-Wnested-externs \
	-Wstrict-prototypes \
# -Wunreachable-code \


CFLAGS = $(CWARNS) -nostdinc -B ../../../05/tcc-bootstrap -I ../../../05/musl-bootstrap/include -I$(LUADIR)
CC = ../../../05/tcc-0.9.27/tcc

FILES = lpvm.o lpcap.o lptree.o lpcode.o lpprint.o

# For Linux
linux:
	make lpeglabel.a 

# # For Mac OS
# macosx:
# 	make lpeglabel.so "DLLFLAGS = -bundle -undefined dynamic_lookup"

lpeglabel.a: $(FILES)
	$(CC) -ar c lpeglabel.a $(FILES) 

$(FILES): makefile

test: test.lua testlabel.lua testerrors.lua relabel.lua lpeglabel.so
	lua test.lua
	lua testlabel.lua
	lua testerrors.lua

clean:
	rm -f $(FILES) lpeglabel.so


lpcap.o: lpcap.c lpcap.h lptypes.h
lpcode.o: lpcode.c lptypes.h lpcode.h lptree.h lpvm.h lpcap.h
lpprint.o: lpprint.c lptypes.h lpprint.h lptree.h lpvm.h lpcap.h
lptree.o: lptree.c lptypes.h lpcap.h lpcode.h lptree.h lpvm.h lpprint.h
lpvm.o: lpvm.c lpcap.h lptypes.h lpvm.h lpprint.h lptree.h

