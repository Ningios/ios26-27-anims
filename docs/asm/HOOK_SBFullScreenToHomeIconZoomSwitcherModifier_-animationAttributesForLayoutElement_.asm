HOOK SBFullScreenToHomeIconZoomSwitcherModifier -animationAttributesForLayoutElement: @0xd0fc  (47 insns)
  0x0d0fc  pacibsp                                                
  0x0d100  stp      x22, x21, [sp, #-0x30]!                       
  0x0d104  stp      x20, x19, [sp, #0x10]                         
  0x0d108  stp      x29, x30, [sp, #0x20]                         
  0x0d10c  add      x29, sp, #0x20                                
  0x0d110  mov      x20, x1                                       
  0x0d114  mov      x21, x0                                       
  0x0d118  mov      x0, x2                                        
  0x0d11c  bl       #0x16dd4                                        ; _objc_retain
  0x0d120  mov      x19, x0                                       
  0x0d124  adrp     x8, #0x25000                                  
  0x0d128  ldr      x8, [x8, #0x8e8]                              
  0x0d12c  mov      x0, x21                                       
  0x0d130  mov      x1, x20                                       
  0x0d134  mov      x2, x19                                       
  0x0d138  blraaz   x8                                            
  0x0d13c  mov      x29, x29                                      
  0x0d140  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d144  mov      x20, x0                                       
  0x0d148  adrp     x1, #0x1a000                                  
  0x0d14c  add      x1, x1, #0x5b8                                
  0x0d150  mov      x0, x21                                       
  0x0d154  bl       #0x801c                                         ; sub_801c
  0x0d158  cmp      x0, #2                                        
  0x0d15c  b.lo     #0xd16c                                       
  0x0d160  mov      x0, x20                                       
  0x0d164  bl       #0x16dd4                                        ; _objc_retain
  0x0d168  b        #0xd184                                         ; sub_d184
  0x0d16c  mov      x0, x21                                       
  0x0d170  mov      x1, x19                                       
  0x0d174  mov      x2, x20                                       
  0x0d178  bl       #0x10bc8                                        ; sub_10bc8
  0x0d17c  mov      x29, x29                                      
  0x0d180  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d184  mov      x21, x0                                       
  0x0d188  mov      x0, x20                                       
  0x0d18c  bl       #0x16dc4                                        ; _objc_release
  0x0d190  mov      x0, x19                                       
  0x0d194  bl       #0x16dc4                                        ; _objc_release
  0x0d198  mov      x0, x21                                       
  0x0d19c  ldp      x29, x30, [sp, #0x20]                         
  0x0d1a0  ldp      x20, x19, [sp, #0x10]                         
  0x0d1a4  ldp      x22, x21, [sp], #0x30                         
  0x0d1a8  autibsp                                                
  0x0d1ac  eor      x16, x30, x30, lsl #1                         
  0x0d1b0  tbz      x16, #0x3e, #0xd1b8                           
  0x0d1b4  brk      #0xc471                                       
