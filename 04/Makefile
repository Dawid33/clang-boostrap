all: out03 guessing_game.out out04 
out03: in03 ../03/out02
	../03/out02
out04: in04 out03
	./out03
%.out: % out03
	./out03 $< $@
clean:
	rm -f out* *.out
