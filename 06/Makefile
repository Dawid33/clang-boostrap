CC= ../05/tcc-0.9.27/tcc
TCCINST= ../05/tcc-bootstrap
MUSLINST= ../05/musl-bootstrap
LUAINST= lua-bootstrap

CFLAGS= -I $(MUSLINST)/include -I $(LUAINST)/include -I lpeglabel
SRCS = $(sort $(wildcard **/*.c))
OBJS = $(SRCS:.c=.o) 

all: zsh

lua-bootstrap/lib/liblua.a:
	$(MAKE) -j8 -C lua-5.4.6 
	$(MAKE) -C lua-5.4.6 install

%.o: %.c lua-bootstrap/lib/liblua.a
	$(CC) $(CFLAGS) -c -o $@ $<

zsh: $(OBJS) lua-bootstrap/lib/liblua.a
	$(CC) -nostdlib -B $(TCCINST) -o zsh $(OBJS) $(LUAINST)/lib/liblua.a $(MUSLINST)/lib/*.[oa] 

run: zsh
	./zsh	

c:
	rm -f zsh
	rm -f src/*.o
	rm -f lpeglabel/*.o

clean: c
	rm -rf lua-bootstrap
	$(MAKE) -C lua-5.4.6 clean

