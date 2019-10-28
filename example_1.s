.section .text
.global _start

_start:
 MOV R0, PC
 MOV R1, #2
 ADD R2, R1, R1
 BKPT
