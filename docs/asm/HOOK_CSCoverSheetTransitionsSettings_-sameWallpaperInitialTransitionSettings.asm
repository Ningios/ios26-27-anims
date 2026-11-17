HOOK CSCoverSheetTransitionsSettings -sameWallpaperInitialTransitionSettings @0xe0a0  (17 insns)
  0x0e0a0  pacibsp                                                
  0x0e0a4  stp      x20, x19, [sp, #-0x20]!                       
  0x0e0a8  stp      x29, x30, [sp, #0x10]                         
  0x0e0ac  add      x29, sp, #0x10                                
  0x0e0b0  mov      x19, x1                                       
  0x0e0b4  mov      x20, x0                                       
  0x0e0b8  bl       #0x122c8                                        ; sub_122c8
  0x0e0bc  adrp     x8, #0x25000                                  
  0x0e0c0  ldr      x2, [x8, #0x958]                              
  0x0e0c4  mov      x0, x20                                       
  0x0e0c8  mov      x1, x19                                       
  0x0e0cc  ldp      x29, x30, [sp, #0x10]                         
  0x0e0d0  ldp      x20, x19, [sp], #0x20                         
  0x0e0d4  autibsp                                                
  0x0e0d8  eor      x16, x30, x30, lsl #1                         
  0x0e0dc  tbz      x16, #0x3e, #0xe0e4                           
  0x0e0e0  brk      #0xc471                                       
