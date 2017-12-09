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
