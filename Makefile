CC=gcc
CFLAGS=-I .
DEPS=dbgp.h
BIN=cproj1
BINDIR=bin

debug: main.cpp dbgp.cpp dbgp.h
	mkdir -p $(BINDIR)/debug/
	$(CC) -v -g -fno-stack-protector -no-pie -o $(BINDIR)/debug/$(BIN) main.cpp dbgp.cpp $(CFLAGS)

release: main.cpp dbgp.cpp dbgp.h
	mkdir -p $(BINDIR)/release/
	$(CC) -O2 -Wall -Os -s -fstack-protector-all -o $(BINDIR)/release/$(BIN) main.cpp dbgp.cpp $(CFLAGS)

.PHONY: clean

clean:
	rm -f $(BINDIR)/*/* ./*.o ./*.ii ./*.s


