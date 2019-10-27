@This is a single line comment!
/*
This is an example of a multiline comment.
This assembly file will begin with a .text to denote the
beginning of instructions. .data tells the Assembler where
the data is in the file. 
.global defines that what follows it will be available to the
whole program much like global variables in java/C
in this case we are using _start which is a label signifies the
beginning of the program of course MOV moves the value in one
register into another. Now interestingly the #65 denotes an integer
number literal SWI 0 denotes the end of the program and exiting to the terminal
SWI stands for Software Interrupt. The value of 1 in R7 is telling
SWI to exit to the terminal. The value in R7 is called a System call
number

To output to the screen I will have to set register 7 to the system call 4
*/


.text

.global _start

_start:
@ MOV R7, #4       @We want to write information to the screen sys call
  MOV R7, #3       @We want to capture keyboard input sys call
@ MOV R0, #1       @Says the output stream should be the monitor
  MOV R0, #0       @Says the input stream sould be keyboard
@ MOV R2, #12      @Defines the length of the string of characters to display
  MOV R2, #10      @Says read in ten characters
  LDR R1, =message @Load the string containing message into register 1
  SWI 0

_write:
  MOV R7, #4
  MOV R0, #1
  MOV R2, #5       @Number of characters to write
  LDR R1, =message
  SWI 0 

end:
 MOV R7, #1       @Of course this is again where we exit to terminal
 SWI 0

.data             @Here we define our data
message:
 .ascii " "
