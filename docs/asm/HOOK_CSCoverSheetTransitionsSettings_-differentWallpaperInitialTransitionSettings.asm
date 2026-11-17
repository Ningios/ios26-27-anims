HOOK CSCoverSheetTransitionsSettings -differentWallpaperInitialTransitionSettings @0xe130  (17 insns)
  0x0e130  pacibsp                                                
  0x0e134  stp      x20, x19, [sp, #-0x20]!                       
  0x0e138  stp      x29, x30, [sp, #0x10]                         
  0x0e13c  add      x29, sp, #0x10                                
  0x0e140  mov      x19, x1                                       
  0x0e144  mov      x20, x0                                       
  0x0e148  bl       #0x122c8                                        ; sub_122c8
  0x0e14c  adrp     x8, #0x25000                                  
  0x0e150  ldr      x2, [x8, #0x968]                              
  0x0e154  mov      x0, x20                                       
  0x0e158  mov      x1, x19                                       
  0x0e15c  ldp      x29, x30, [sp, #0x10]                         
  0x0e160  ldp      x20, x19, [sp], #0x20                         
  0x0e164  autibsp                                                
  0x0e168  eor      x16, x30, x30, lsl #1                         
  0x0e16c  tbz      x16, #0x3e, #0xe174                           
  0x0e170  brk      #0xc471                                       
