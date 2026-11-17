HOOK SBTransitionSwitcherModifier -transitionWillUpdate @0xd1bc  (69 insns)
  0x0d1bc  pacibsp                                                
  0x0d1c0  sub      sp, sp, #0xc0                                 
  0x0d1c4  stp      d13, d12, [sp, #0x40]                         
  0x0d1c8  stp      d11, d10, [sp, #0x50]                         
  0x0d1cc  stp      d9, d8, [sp, #0x60]                           
  0x0d1d0  stp      x26, x25, [sp, #0x70]                         
  0x0d1d4  stp      x24, x23, [sp, #0x80]                         
  0x0d1d8  stp      x22, x21, [sp, #0x90]                         
  0x0d1dc  stp      x20, x19, [sp, #0xa0]                         
  0x0d1e0  stp      x29, x30, [sp, #0xb0]                         
  0x0d1e4  add      x29, sp, #0xb0                                
  0x0d1e8  mov      x19, x0                                       
  0x0d1ec  adrp     x8, #0x25000                                  
  0x0d1f0  ldr      x8, [x8, #0x8f0]                              
  0x0d1f4  blraaz   x8                                            
  0x0d1f8  mov      x29, x29                                      
  0x0d1fc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d200  mov      x23, x0                                       
  0x0d204  bl       #0x73d4                                         ; sub_73d4
  0x0d208  cbz      w0, #0xd284                                   
  0x0d20c  adrp     x21, #0x25000                                 
  0x0d210  ldr      x20, [x21, #0xab8]                            
  0x0d214  cbnz     x20, #0xd22c                                  
  0x0d218  adrp     x0, #0x1a000                                  
  0x0d21c  add      x0, x0, #0x308                                
  0x0d220  bl       #0x16d44                                        ; _objc_getClass
  0x0d224  mov      x20, x0                                       
  0x0d228  str      x0, [x21, #0xab8]                             
  0x0d22c  mov      x0, x20                                       
  0x0d230  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x0d234  mov      x0, x19                                       
  0x0d238  mov      x1, x20                                       
  0x0d23c  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0d240  tbz      w0, #0, #0xd284                               
  0x0d244  adrp     x1, #0x1a000                                  
  0x0d248  add      x1, x1, #0x5b8                                
  0x0d24c  mov      x0, x19                                       
  0x0d250  bl       #0x801c                                         ; sub_801c
  0x0d254  cmp      x0, #1                                        
  0x0d258  b.hi     #0xd284                                       
  0x0d25c  mov      x20, x0                                       
  0x0d260  adrp     x22, #0x25000                                 
  0x0d264  ldr      x1, [x22, #0x858]                             
  0x0d268  mov      x0, x19                                       
  0x0d26c  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0d270  mov      x29, x29                                      
  0x0d274  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d278  mov      x21, x0                                       
  0x0d27c  bl       #0x16dc4                                        ; _objc_release
  0x0d280  cbz      x21, #0xd2d4                                  
  0x0d284  mov      x0, x23                                       
  0x0d288  bl       #0x16dd4                                        ; _objc_retain
  0x0d28c  mov      x19, x0                                       
  0x0d290  mov      x0, x19                                       
  0x0d294  bl       #0x16dc4                                        ; _objc_release
  0x0d298  mov      x0, x19                                       
  0x0d29c  ldp      x29, x30, [sp, #0xb0]                         
  0x0d2a0  ldp      x20, x19, [sp, #0xa0]                         
  0x0d2a4  ldp      x22, x21, [sp, #0x90]                         
  0x0d2a8  ldp      x24, x23, [sp, #0x80]                         
  0x0d2ac  ldp      x26, x25, [sp, #0x70]                         
  0x0d2b0  ldp      d9, d8, [sp, #0x60]                           
  0x0d2b4  ldp      d11, d10, [sp, #0x50]                         
  0x0d2b8  ldp      d13, d12, [sp, #0x40]                         
  0x0d2bc  add      sp, sp, #0xc0                                 
  0x0d2c0  autibsp                                                
  0x0d2c4  eor      x16, x30, x30, lsl #1                         
  0x0d2c8  tbz      x16, #0x3e, #0xd2d0                           
  0x0d2cc  brk      #0xc471                                       
