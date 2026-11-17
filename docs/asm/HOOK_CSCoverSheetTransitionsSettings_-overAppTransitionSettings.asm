HOOK CSCoverSheetTransitionsSettings -overAppTransitionSettings @0xe1c0  (17 insns)
  0x0e1c0  pacibsp                                                
  0x0e1c4  stp      x20, x19, [sp, #-0x20]!                       
  0x0e1c8  stp      x29, x30, [sp, #0x10]                         
  0x0e1cc  add      x29, sp, #0x10                                
  0x0e1d0  mov      x19, x1                                       
  0x0e1d4  mov      x20, x0                                       
  0x0e1d8  bl       #0x122c8                                        ; sub_122c8
  0x0e1dc  adrp     x8, #0x25000                                  
  0x0e1e0  ldr      x2, [x8, #0x978]                              
  0x0e1e4  mov      x0, x20                                       
  0x0e1e8  mov      x1, x19                                       
  0x0e1ec  ldp      x29, x30, [sp, #0x10]                         
  0x0e1f0  ldp      x20, x19, [sp], #0x20                         
  0x0e1f4  autibsp                                                
  0x0e1f8  eor      x16, x30, x30, lsl #1                         
  0x0e1fc  tbz      x16, #0x3e, #0xe204                           
  0x0e200  brk      #0xc471                                       
