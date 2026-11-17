HOOK SBFullScreenToHomeCenterZoomDownSwitcherModifier -_layoutSettings @0xdca0  (17 insns)
  0x0dca0  pacibsp                                                
  0x0dca4  stp      x20, x19, [sp, #-0x20]!                       
  0x0dca8  stp      x29, x30, [sp, #0x10]                         
  0x0dcac  add      x29, sp, #0x10                                
  0x0dcb0  mov      x19, x1                                       
  0x0dcb4  mov      x20, x0                                       
  0x0dcb8  bl       #0x1022c                                        ; sub_1022c
  0x0dcbc  adrp     x8, #0x25000                                  
  0x0dcc0  ldr      x2, [x8, #0x930]                              
  0x0dcc4  mov      x0, x20                                       
  0x0dcc8  mov      x1, x19                                       
  0x0dccc  ldp      x29, x30, [sp, #0x10]                         
  0x0dcd0  ldp      x20, x19, [sp], #0x20                         
  0x0dcd4  autibsp                                                
  0x0dcd8  eor      x16, x30, x30, lsl #1                         
  0x0dcdc  tbz      x16, #0x3e, #0xdce4                           
  0x0dce0  brk      #0xc471                                       
