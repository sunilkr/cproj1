CC=gcc
CFLAGS=-I .
DEPS=dbgp.h
BIN=cproj1

debug: main.cpp dbgp.cpp dbgp.h
	$(CC) -v -g -save-temps -o $(BIN) main.cpp dbgp.cpp $(CFLAGS)

release: main.cpp dbgp.cpp dbgp.h
	$(CC) -fPIE -Wall -Os -s -o $(BIN) main.cpp dbgp.cpp $(CFLAGS)

.PHONY: clean

clean:
	rm -f $(BIN) ./*.o ./*.ii ./*.s


