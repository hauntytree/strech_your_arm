.global _start

_start:
  MOV R0, #50
  MOV R1, #2
  B _loop

_decrement:
  SUBGT R0, R0, R1  @If the number in R0 is > R1 then subtract R1 from R0

_loop:
  CMP R0, R1        @Compare values in R0 against R1
  BNE _decrement    @If they are not equal jump to decrement

end:
  MOV R7, #1
  SWI 0
