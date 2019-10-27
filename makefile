asmtut: asmtut_9.o
	ld -o asmtut_9 asmtut_9.o
asmtut.o: asmtut_9.s
	as -o asmtut_9.o asmtut_9.s
clean:
	rm *.o asmtut_9
