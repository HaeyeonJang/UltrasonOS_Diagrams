# adapted from here: https://stackoverflow.com/a/32622652/1865495

CC=dot
CFLAGS=-Tpng

SRCS = $(wildcard *.dot)

PROGS = $(patsubst %.dot,%,$(SRCS))

default: $(PROGS)

%: %.dot
	$(CC) $(CFLAGS) -o $@.png $<

.PHONY: open
open:
	open *.png

.PHONY: clean
clean:
	rm -f *.png

.PHONY: all
all: clean default open
