all: libstupidffi.so stupidext/stupidext.so
	ruby compare.rb

stupidext/stupidext.so:
	(cd stupidext && ruby extconf.rb && make)

stupidffi.o: stupidffi.cc stupidffi.h
	g++ -g -fPIC -c -o $@ stupidffi.cc

libstupidffi.so: stupidffi.o
	g++ -g -o $@ $^ -fPIC -shared

clean:
	rm stupidffi.o libstupidffi.so
	rm stupidext/Makefile stupidext/stupidext.o stupidext/stupidext.so
