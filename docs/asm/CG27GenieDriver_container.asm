CG27GenieDriver container @0xb5cc  (10 insns)
types: @16@0:8
  0x0b5cc  pacibsp                                                
  0x0b5d0  stp      x29, x30, [sp, #-0x10]!                       
  0x0b5d4  mov      x29, sp                                       
  0x0b5d8  add      x0, x0, #0x438                                
  0x0b5dc  bl       #0x16d64                                        ; _objc_loadWeakRetained
  0x0b5e0  ldp      x29, x30, [sp], #0x10                         
  0x0b5e4  autibsp                                                
  0x0b5e8  eor      x16, x30, x30, lsl #1                         
  0x0b5ec  tbz      x16, #0x3e, #0xb5f4                           
  0x0b5f0  brk      #0xc471                                       
