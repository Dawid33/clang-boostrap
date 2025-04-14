all: 
	$(MAKE) -C 00
	$(MAKE) -C 01
	$(MAKE) -C 02
	$(MAKE) -C 03
	$(MAKE) -C 04
	$(MAKE) -C 04a
	# don't compile all of 05 because it takes a while
	$(MAKE) -C 05
	$(MAKE) -C 05 tcc
	$(MAKE) -C 05 tcc-files
	$(MAKE) -C 05 musl
clean:
	$(MAKE) -C 00 clean
	$(MAKE) -C 01 clean
	$(MAKE) -C 02 clean
	$(MAKE) -C 03 clean
	$(MAKE) -C 04 clean
	$(MAKE) -C 04a clean
	$(MAKE) -C 05 clean
	rm -f markdown
	rm -f README.html
