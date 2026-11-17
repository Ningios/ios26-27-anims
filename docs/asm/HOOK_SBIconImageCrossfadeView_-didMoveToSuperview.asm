HOOK SBIconImageCrossfadeView -didMoveToSuperview @0xc140  (15 insns)
  0x0c140  pacibsp                                                
  0x0c144  stp      x20, x19, [sp, #-0x20]!                       
  0x0c148  stp      x29, x30, [sp, #0x10]                         
  0x0c14c  add      x29, sp, #0x10                                
  0x0c150  mov      x19, x0                                       
  0x0c154  adrp     x8, #0x25000                                  
  0x0c158  ldr      x8, [x8, #0x8a8]                              
  0x0c15c  blraaz   x8                                            
  0x0c160  mov      x0, x19                                       
  0x0c164  ldp      x29, x30, [sp, #0x10]                         
  0x0c168  ldp      x20, x19, [sp], #0x20                         
  0x0c16c  autibsp                                                
  0x0c170  eor      x16, x30, x30, lsl #1                         
  0x0c174  tbz      x16, #0x3e, #0xc17c                           
  0x0c178  brk      #0xc471                                       
