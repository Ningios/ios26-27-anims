CG27GenieDriver badge @0xb7fc  (10 insns)
types: @16@0:8
  0x0b7fc  pacibsp                                                
  0x0b800  stp      x29, x30, [sp, #-0x10]!                       
  0x0b804  mov      x29, sp                                       
  0x0b808  add      x0, x0, #0x4d8                                
  0x0b80c  bl       #0x16d64                                        ; _objc_loadWeakRetained
  0x0b810  ldp      x29, x30, [sp], #0x10                         
  0x0b814  autibsp                                                
  0x0b818  eor      x16, x30, x30, lsl #1                         
  0x0b81c  tbz      x16, #0x3e, #0xb824                           
  0x0b820  brk      #0xc471                                       
