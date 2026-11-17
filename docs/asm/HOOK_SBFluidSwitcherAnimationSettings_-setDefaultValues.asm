HOOK SBFluidSwitcherAnimationSettings -setDefaultValues @0xdc60  (15 insns)
  0x0dc60  pacibsp                                                
  0x0dc64  stp      x20, x19, [sp, #-0x20]!                       
  0x0dc68  stp      x29, x30, [sp, #0x10]                         
  0x0dc6c  add      x29, sp, #0x10                                
  0x0dc70  mov      x19, x0                                       
  0x0dc74  adrp     x8, #0x25000                                  
  0x0dc78  ldr      x8, [x8, #0x928]                              
  0x0dc7c  blraaz   x8                                            
  0x0dc80  mov      x0, x19                                       
  0x0dc84  ldp      x29, x30, [sp, #0x10]                         
  0x0dc88  ldp      x20, x19, [sp], #0x20                         
  0x0dc8c  autibsp                                                
  0x0dc90  eor      x16, x30, x30, lsl #1                         
  0x0dc94  tbz      x16, #0x3e, #0xdc9c                           
  0x0dc98  brk      #0xc471                                       
