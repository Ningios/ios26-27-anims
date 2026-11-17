HOOK SBFluidSwitcherIconOverlayView -layoutSubviews @0xc0fc  (16 insns)
  0x0c0fc  pacibsp                                                
  0x0c100  stp      x20, x19, [sp, #-0x20]!                       
  0x0c104  stp      x29, x30, [sp, #0x10]                         
  0x0c108  add      x29, sp, #0x10                                
  0x0c10c  mov      x19, x0                                       
  0x0c110  adrp     x8, #0x25000                                  
  0x0c114  ldr      x8, [x8, #0x8a0]                              
  0x0c118  blraaz   x8                                            
  0x0c11c  mov      x0, x19                                       
  0x0c120  mov      w1, #0                                        
  0x0c124  ldp      x29, x30, [sp, #0x10]                         
  0x0c128  ldp      x20, x19, [sp], #0x20                         
  0x0c12c  autibsp                                                
  0x0c130  eor      x16, x30, x30, lsl #1                         
  0x0c134  tbz      x16, #0x3e, #0xc13c                           
  0x0c138  brk      #0xc471                                       
