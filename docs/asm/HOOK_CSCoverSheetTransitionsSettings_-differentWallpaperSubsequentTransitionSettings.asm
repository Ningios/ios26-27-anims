HOOK CSCoverSheetTransitionsSettings -differentWallpaperSubsequentTransitionSettings @0xe178  (17 insns)
  0x0e178  pacibsp                                                
  0x0e17c  stp      x20, x19, [sp, #-0x20]!                       
  0x0e180  stp      x29, x30, [sp, #0x10]                         
  0x0e184  add      x29, sp, #0x10                                
  0x0e188  mov      x19, x1                                       
  0x0e18c  mov      x20, x0                                       
  0x0e190  bl       #0x122c8                                        ; sub_122c8
  0x0e194  adrp     x8, #0x25000                                  
  0x0e198  ldr      x2, [x8, #0x970]                              
  0x0e19c  mov      x0, x20                                       
  0x0e1a0  mov      x1, x19                                       
  0x0e1a4  ldp      x29, x30, [sp, #0x10]                         
  0x0e1a8  ldp      x20, x19, [sp], #0x20                         
  0x0e1ac  autibsp                                                
  0x0e1b0  eor      x16, x30, x30, lsl #1                         
  0x0e1b4  tbz      x16, #0x3e, #0xe1bc                           
  0x0e1b8  brk      #0xc471                                       
