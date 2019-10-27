.global _start

_start:
 MOV R0, #0     @Define initial value of R0
 MOV R1, #1     @Define initial value of R1
 B _continue_loop

_loop:
 ADD R0, R0, R1 @Store in R0 the value of R0 plus the value of R1 

_continue_loop:
 CMP R0, #9     @Compare value in R0 against 9
 BLE _loop      @If value in R0 is less than or equal to 9 jump back to loop

end:
 MOV R7, #1
 SWI 0
