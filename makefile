asmtut: asmtut_8.o
	ld -o asmtut_8 asmtut_8.o
asmtut.o: asmtut_8.s
	as -o asmtut_8.o asmtut_8.s
clean:
	rm *.o asmtut_8
