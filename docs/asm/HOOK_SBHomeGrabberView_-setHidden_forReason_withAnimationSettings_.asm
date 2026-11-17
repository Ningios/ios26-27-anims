HOOK SBHomeGrabberView -setHidden:forReason:withAnimationSettings: @0xc180  (120 insns)
  0x0c180  pacibsp                                                
  0x0c184  sub      sp, sp, #0x70                                 
  0x0c188  stp      x28, x27, [sp, #0x10]                         
  0x0c18c  stp      x26, x25, [sp, #0x20]                         
  0x0c190  stp      x24, x23, [sp, #0x30]                         
  0x0c194  stp      x22, x21, [sp, #0x40]                         
  0x0c198  stp      x20, x19, [sp, #0x50]                         
  0x0c19c  stp      x29, x30, [sp, #0x60]                         
  0x0c1a0  add      x29, sp, #0x60                                
  0x0c1a4  mov      x23, x4                                       
  0x0c1a8  mov      x20, x2                                       
  0x0c1ac  mov      x21, x1                                       
  0x0c1b0  mov      x22, x0                                       
  0x0c1b4  mov      x0, x3                                        
  0x0c1b8  bl       #0x16dd4                                        ; _objc_retain
  0x0c1bc  mov      x19, x0                                       
  0x0c1c0  mov      x0, x23                                       
  0x0c1c4  bl       #0x16dd4                                        ; _objc_retain
  0x0c1c8  mov      x23, x0                                       
  0x0c1cc  adrp     x8, #0x25000                                  
  0x0c1d0  ldr      x0, [x8, #0x660]                              
  0x0c1d4  bl       #0x17ce0                                        ; objc:isMainThread
  0x0c1d8  adrp     x8, #0x25000                                  
  0x0c1dc  ldr      x8, [x8, #0xa18]                              
  0x0c1e0  cmp      w0, #0                                        
  0x0c1e4  ccmp     x8, #0, #0, ne                                
  0x0c1e8  b.ne     #0xc308                                       
  0x0c1ec  adrp     x2, #0x20000                                  
  0x0c1f0  add      x2, x2, #0x618                                
  0x0c1f4  mov      x0, x19                                       
  0x0c1f8  bl       #0x17c80                                        ; objc:isEqual:
  0x0c1fc  cbz      w0, #0xc308                                   
  0x0c200  mov      x0, x22                                       
  0x0c204  bl       #0x16dd4                                        ; _objc_retain
  0x0c208  cbz      x0, #0xc308                                   
  0x0c20c  mov      x28, #0                                       
  0x0c210  adrp     x24, #0x25000                                 
  0x0c214  str      x0, [sp, #8]                                  
  0x0c218  mov      x26, x0                                       
  0x0c21c  adrp     x25, #0x1a000                                 
  0x0c220  add      x25, x25, #0x526                              
  0x0c224  ldr      x27, [x24, #0xa78]                            
  0x0c228  cbnz     x27, #0xc23c                                  
  0x0c22c  mov      x0, x25                                       
  0x0c230  bl       #0x16d44                                        ; _objc_getClass
  0x0c234  mov      x27, x0                                       
  0x0c238  str      x0, [x24, #0xa78]                             
  0x0c23c  mov      x0, x27                                       
  0x0c240  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x0c244  mov      x0, x26                                       
  0x0c248  mov      x1, x27                                       
  0x0c24c  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0c250  tbnz     w0, #0, #0xc294                               
  0x0c254  mov      x0, x26                                       
  0x0c258  bl       #0x193c0                                        ; objc:superview
  0x0c25c  mov      x29, x29                                      
  0x0c260  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c264  mov      x27, x0                                       
  0x0c268  mov      x0, x26                                       
  0x0c26c  bl       #0x16dc4                                        ; _objc_release
  0x0c270  cbz      x27, #0xc288                                  
  0x0c274  add      x8, x28, #1                                   
  0x0c278  mov      x26, x27                                      
  0x0c27c  cmp      x28, #0xb                                     
  0x0c280  mov      x28, x8                                       
  0x0c284  b.lo     #0xc224                                       
  0x0c288  mov      x0, x27                                       
  0x0c28c  bl       #0x16dc4                                        ; _objc_release
  0x0c290  b        #0xc308                                         ; sub_c308
  0x0c294  mov      x0, x26                                       
  0x0c298  bl       #0x16dc4                                        ; _objc_release
  0x0c29c  adrp     x8, #0x25000                                  
  0x0c2a0  ldr      x25, [x8, #0x828]                             
  0x0c2a4  adrp     x8, #0x25000                                  
  0x0c2a8  ldr      x0, [x8, #0x628]                              
  0x0c2ac  mov      x2, x20                                       
  0x0c2b0  bl       #0x181a0                                        ; objc:numberWithBool:
  0x0c2b4  mov      x29, x29                                      
  0x0c2b8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c2bc  mov      x26, x0                                       
  0x0c2c0  ldr      x24, [sp, #8]                                 
  0x0c2c4  mov      x0, x24                                       
  0x0c2c8  mov      x1, x25                                       
  0x0c2cc  mov      x2, x26                                       
  0x0c2d0  mov      w3, #1                                        
  0x0c2d4  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0c2d8  mov      x0, x26                                       
  0x0c2dc  bl       #0x16dc4                                        ; _objc_release
  0x0c2e0  adrp     x8, #0x25000                                  
  0x0c2e4  ldr      x1, [x8, #0x820]                              
  0x0c2e8  mov      x0, x24                                       
  0x0c2ec  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0c2f0  mov      x29, x29                                      
  0x0c2f4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c2f8  mov      x24, x0                                       
  0x0c2fc  bl       #0x16dc4                                        ; _objc_release
  0x0c300  cmp      x24, #0                                       
  0x0c304  csel     w20, wzr, w20, ne                             
  0x0c308  adrp     x8, #0x25000                                  
  0x0c30c  ldr      x8, [x8, #0x8b0]                              
  0x0c310  mov      x0, x22                                       
  0x0c314  mov      x1, x21                                       
  0x0c318  mov      x2, x20                                       
  0x0c31c  mov      x3, x19                                       
  0x0c320  mov      x4, x23                                       
  0x0c324  blraaz   x8                                            
  0x0c328  mov      x0, x23                                       
  0x0c32c  bl       #0x16dc4                                        ; _objc_release
  0x0c330  mov      x0, x19                                       
  0x0c334  ldp      x29, x30, [sp, #0x60]                         
  0x0c338  ldp      x20, x19, [sp, #0x50]                         
  0x0c33c  ldp      x22, x21, [sp, #0x40]                         
  0x0c340  ldp      x24, x23, [sp, #0x30]                         
  0x0c344  ldp      x26, x25, [sp, #0x20]                         
  0x0c348  ldp      x28, x27, [sp, #0x10]                         
  0x0c34c  add      sp, sp, #0x70                                 
  0x0c350  autibsp                                                
  0x0c354  eor      x16, x30, x30, lsl #1                         
  0x0c358  tbz      x16, #0x3e, #0xc360                           
  0x0c35c  brk      #0xc471                                       
