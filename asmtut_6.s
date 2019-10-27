.global _start



_start:
  MOV R7, #3 @ Syscall to keyboard
  MOV R0, #0 @ Input stream is keyboard
  MOV R2, #1 @ Read in one character
  LDR R1, =character @Store input character in register 1
  SWI 0

_uppercase:
 LDR R1, =character
 LDR R0, [R1]
 BIC R0, R0, #32
 STR R0, [R1]

 /*
 If we have a lowecase a it will be     0110 0001
 If we have a uppercase A it will be    0100 0001
 We need to hit this bit here           0010 0000
 We will use bit clear in order to do this. Remembering
 the bit we want to hit is in the 32 position
*/

_write:
 MOV R7, #4  @System call output to screen
 MOV R0, #1  @Define our output to Monitor
 MOV R2, #1  @Number of characters
 LDR R1, =character
 SWI 0

end:
 MOV R7, #1
 SWI 0

.data
 character:
 .ascii " "
