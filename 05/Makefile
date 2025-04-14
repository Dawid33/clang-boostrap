TCCDIR=tcc-0.9.27
TCC=$(TCCDIR)/tcc
TCC0=$(TCC)0
TCCINST=tcc-bootstrap
all: testapp
in04: *.b ../04a/out04
	../04a/out04 main.b in04
out04: in04 ../04/out03
	../04/out03 in04 out04
%.html: %.md ../markdown
	../markdown $<
%.out: %.c *.h out04
	./out04 $< $@
a.out: main.c *.h out04
	./out04
$(TCC0): $(TCCDIR)/*.c $(TCCDIR)/*.h out04
	cd $(TCCDIR) && ../out04 tcc.c tcc0
$(TCCDIR)/lib/libtcc1.a: $(TCC0) $(TCCDIR)/lib/*.[cS]
	$(TCC0) -c $(TCCDIR)/lib/alloca86_64-bt.S -o $(TCCDIR)/lib/alloca86_64-bt.o
	$(TCC0) -c $(TCCDIR)/lib/alloca86_64.S -o $(TCCDIR)/lib/alloca86_64.o
	$(TCC0) -c $(TCCDIR)/lib/va_list.c -o $(TCCDIR)/lib/va_list.o
	$(TCC0) -c $(TCCDIR)/lib/libtcc1.c -o $(TCCDIR)/lib/libtcc1.o
	$(TCC0) -ar $(TCCDIR)/lib/libtcc1.a $(TCCDIR)/lib/*.o
musl: tcc-files
	mkdir -p musl-boostrap/include
	mkdir -p musl-boostrap/bin
	mkdir -p musl-boostrap/lib
	$(MAKE) -j8 -C musl-0.6.0
	$(MAKE) -C musl-0.6.0 install
tcc-files: $(TCCDIR)/lib/libtcc1.a $(TCCDIR)/include/*.h
	mkdir -p $(TCCINST)/include
	cp -r $(TCCDIR)/include/*.h $(TCCINST)/include/
	cp -r $(TCCDIR)/lib/libtcc1.a $(TCCINST)/
$(TCC): $(TCC0) musl
	cd $(TCCDIR) && ./tcc0 -nostdinc -nostdlib -B ../tcc-boostrap -I ../musl-bootstrap/include tcc.c ../musl-bootstrap/lib/*.[oa] -o tcc
tcc: $(TCC)
musl-final: tcc
	mkdir -p musl-boostrap-final/include
	mkdir -p musl-boostrap-final/bin
	mkdir -p musl-boostrap-final/lib
	$(MAKE) -j8 -C musl-final
	$(MAKE) -C musl-final install
testapp: tcc musl-final
	$(TCC) -Wall -g -static -nostdinc -nostdlib -I musl-final/include test.c musl-final/lib/*.[oa] -MD -o test

$(TCC)2: $(TCC)1
	cd $(TCCDIR) && ./tcc1 tcc.c -o tcc2
$(TCC)0a: $(TCCDIR)/*.c $(TCCDIR)/*.h
	cd $(TCCDIR) && gcc tcc.c -o tcc0a
$(TCC)1a: $(TCCDIR)/*.c $(TCCDIR)/*.h
	cd $(TCCDIR) && ./tcc0a tcc.c -o tcc1a
clean:
	$(MAKE) -C musl-final clean
	$(MAKE) -C musl-0.6.0 clean
	rm -rf musl-bootstrap
	rm -rf musl-bootstrap-final
	rm -rf tcc-bootstrap
	rm -f out* *.out *.o $(TCCDIR)/tcc[0123456] $(TCCDIR)/tcc[0123456]a $(TCCDIR)/lib/*.[oa]
