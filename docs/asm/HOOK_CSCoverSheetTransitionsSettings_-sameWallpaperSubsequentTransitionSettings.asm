HOOK CSCoverSheetTransitionsSettings -sameWallpaperSubsequentTransitionSettings @0xe0e8  (17 insns)
  0x0e0e8  pacibsp                                                
  0x0e0ec  stp      x20, x19, [sp, #-0x20]!                       
  0x0e0f0  stp      x29, x30, [sp, #0x10]                         
  0x0e0f4  add      x29, sp, #0x10                                
  0x0e0f8  mov      x19, x1                                       
  0x0e0fc  mov      x20, x0                                       
  0x0e100  bl       #0x122c8                                        ; sub_122c8
  0x0e104  adrp     x8, #0x25000                                  
  0x0e108  ldr      x2, [x8, #0x960]                              
  0x0e10c  mov      x0, x20                                       
  0x0e110  mov      x1, x19                                       
  0x0e114  ldp      x29, x30, [sp, #0x10]                         
  0x0e118  ldp      x20, x19, [sp], #0x20                         
  0x0e11c  autibsp                                                
  0x0e120  eor      x16, x30, x30, lsl #1                         
  0x0e124  tbz      x16, #0x3e, #0xe12c                           
  0x0e128  brk      #0xc471                                       
