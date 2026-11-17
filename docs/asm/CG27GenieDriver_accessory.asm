CG27GenieDriver accessory @0xb604  (10 insns)
types: @16@0:8
  0x0b604  pacibsp                                                
  0x0b608  stp      x29, x30, [sp, #-0x10]!                       
  0x0b60c  mov      x29, sp                                       
  0x0b610  add      x0, x0, #0x440                                
  0x0b614  bl       #0x16d64                                        ; _objc_loadWeakRetained
  0x0b618  ldp      x29, x30, [sp], #0x10                         
  0x0b61c  autibsp                                                
  0x0b620  eor      x16, x30, x30, lsl #1                         
  0x0b624  tbz      x16, #0x3e, #0xb62c                           
  0x0b628  brk      #0xc471                                       
