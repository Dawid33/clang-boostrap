CC= ../05/tcc-0.9.27/tcc
TCCINST= ../05/tcc-bootstrap
MUSLINST= ../05/musl-bootstrap
LUAINST= deps/lua-bootstrap

CFLAGS= -I $(MUSLINST)/include -I $(LUAINST)/include -I deps/lpeglabel
SRCS = $(sort $(wildcard **/*.c))
OBJS = $(SRCS:.c=.o) 

all: test.out #zsh

test.out: test.s.o test.c.o
	$(TCC) -static -nostdlib -B ../tcc-boostrap  -I ../musl-bootstrap/include ../musl-bootstrap/lib/*.[oa] test.s.o test.c.o -o test.out
test.s.o: $(TCC0) test.s
	$(TCC) -static -nostdlib -B ../tcc-boostrap  -I ../musl-bootstrap/include ../musl-bootstrap/lib/*.[oa] -c test.s -o test.s.o
test.c.o: $(TCC0) test.c
	$(TCC) -static -nostdlib -B ../tcc-boostrap -I ../musl-bootstrap/include ../musl-bootstrap/lib/*.[oa] -c test.c -o test.c.o

# deps/lua-bootstrap/lib/liblua.a:
# 	$(MAKE) -j8 -C deps/lua-5.4.6 
# 	$(MAKE) -C deps/lua-5.4.6 install

# deps/lpeglabel/lpeglabel.a: deps/lua-bootstrap/lib/liblua.a
# 	$(MAKE) -C deps/lpeglabel

# %.o: %.c deps/lua-bootstrap/lib/liblua.a
# 	$(CC) $(CFLAGS) -c -o $@ $<

# zsh: $(OBJS) deps/lua-bootstrap/lib/liblua.a deps/lpeglabel/lpeglabel.a
# 	$(CC) -nostdlib -B $(TCCINST) -o zsh $(OBJS) deps/lpeglabel/lpeglabel.a $(LUAINST)/lib/liblua.a $(MUSLINST)/lib/*.[oa] 

# run: zsh
# 	./zsh	

c:
	rm -f zsh
	rm -f src/*.o
	rm -f deps/lpeglabel/*.o

clean: c
	rm -rf deps/lua-bootstrap
	$(MAKE) -C deps/lua-5.4.6 clean
	$(MAKE) -C deps/lpeglabel clean

