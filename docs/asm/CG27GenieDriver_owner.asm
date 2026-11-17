CG27GenieDriver owner @0xb708  (10 insns)
types: @16@0:8
  0x0b708  pacibsp                                                
  0x0b70c  stp      x29, x30, [sp, #-0x10]!                       
  0x0b710  mov      x29, sp                                       
  0x0b714  add      x0, x0, #0x480                                
  0x0b718  bl       #0x16d64                                        ; _objc_loadWeakRetained
  0x0b71c  ldp      x29, x30, [sp], #0x10                         
  0x0b720  autibsp                                                
  0x0b724  eor      x16, x30, x30, lsl #1                         
  0x0b728  tbz      x16, #0x3e, #0xb730                           
  0x0b72c  brk      #0xc471                                       
