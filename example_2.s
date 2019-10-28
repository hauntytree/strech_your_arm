.data
var1: .word 3        @Variable 1 in memory
var2: .word 4        @Varibale 2 in memory

.text                @Start of the code section
.global _start

 _start:
 LDR R0, adr_var1
 LDR R1, adr_var2
 LDR R2, [R0]
 STR R2, [R1]       
 BKPT                @Breakpoint

adr_var1: .word var1 @Address to var1 stored here
adr_var2: .word var2 @Address to var2 stored here
