HOOK SBIconBadgeView -setAccessoryBrightness: @0xc420  (27 insns)
  0x0c420  pacibsp                                                
  0x0c424  sub      sp, sp, #0x40                                 
  0x0c428  stp      d9, d8, [sp, #0x10]                           
  0x0c42c  stp      x20, x19, [sp, #0x20]                         
  0x0c430  stp      x29, x30, [sp, #0x30]                         
  0x0c434  add      x29, sp, #0x30                                
  0x0c438  fmov     d8, d0                                        
  0x0c43c  mov      x19, x1                                       
  0x0c440  mov      x20, x0                                       
  0x0c444  adrp     x8, #0x25000                                  
  0x0c448  ldr      x0, [x8, #0x8c0]                              
  0x0c44c  str      x0, [sp, #8]                                  
  0x0c450  bl       #0x73d4                                         ; sub_73d4
  0x0c454  cmp      w0, #0                                        
  0x0c458  fmov     d0, #1.00000000                               
  0x0c45c  fcsel    d0, d0, d8, ne                                
  0x0c460  mov      x0, x20                                       
  0x0c464  mov      x1, x19                                       
  0x0c468  ldr      x2, [sp, #8]                                  
  0x0c46c  ldp      x29, x30, [sp, #0x30]                         
  0x0c470  ldp      x20, x19, [sp, #0x20]                         
  0x0c474  ldp      d9, d8, [sp, #0x10]                           
  0x0c478  add      sp, sp, #0x40                                 
  0x0c47c  autibsp                                                
  0x0c480  eor      x16, x30, x30, lsl #1                         
  0x0c484  tbz      x16, #0x3e, #0xc48c                           
  0x0c488  brk      #0xc471                                       
