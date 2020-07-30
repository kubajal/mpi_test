all: test

test.o: test.c
	gcc -c test.c -I "C:\Program Files (x86)\Microsoft SDKs\MPI\Include"

test: test.o
	gcc -o test test.o -L "C:\Program Files (x86)\Microsoft SDKs\MPI\Lib\x64" -lmsmpi

clean:
	rm -f *.o test
