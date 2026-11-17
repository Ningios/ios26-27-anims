CG27GenieDriver nativeStop @0xb1e8  (173 insns)
types: v16@0:8
  0x0b1e8  pacibsp                                                
  0x0b1ec  sub      sp, sp, #0x160                                
  0x0b1f0  stp      x28, x27, [sp, #0x100]                        
  0x0b1f4  stp      x26, x25, [sp, #0x110]                        
  0x0b1f8  stp      x24, x23, [sp, #0x120]                        
  0x0b1fc  stp      x22, x21, [sp, #0x130]                        
  0x0b200  stp      x20, x19, [sp, #0x140]                        
  0x0b204  stp      x29, x30, [sp, #0x150]                        
  0x0b208  add      x29, sp, #0x150                               
  0x0b20c  mov      x21, x0                                       
  0x0b210  adrp     x8, #0x20000                                  
  0x0b214  ldr      x8, [x8, #0x320]                              
  0x0b218  ldr      x8, [x8]                                      
  0x0b21c  stur     x8, [x29, #-0x58]                             
  0x0b220  add      x0, x0, #0x2dc                                
  0x0b224  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x0b228  strb     wzr, [x21, #0x318]                            
  0x0b22c  ldr      x0, [x21, #0x2e0]                             
  0x0b230  bl       #0x16dd4                                        ; _objc_retain
  0x0b234  mov      x19, x0                                       
  0x0b238  ldr      x0, [x21, #0x2e8]                             
  0x0b23c  bl       #0x16dd4                                        ; _objc_retain
  0x0b240  mov      x20, x0                                       
  0x0b244  ldr      x0, [x21, #0x2f0]                             
  0x0b248  bl       #0x16dd4                                        ; _objc_retain
  0x0b24c  mov      x22, x0                                       
  0x0b250  ldr      x0, [x21, #0x2e8]                             
  0x0b254  str      xzr, [x21, #0x2e8]                            
  0x0b258  bl       #0x16dc4                                        ; _objc_release
  0x0b25c  ldr      x0, [x21, #0x2e0]                             
  0x0b260  str      xzr, [x21, #0x2e0]                            
  0x0b264  bl       #0x16dc4                                        ; _objc_release
  0x0b268  ldr      x0, [x21, #0x2f0]                             
  0x0b26c  str      xzr, [x21, #0x2f0]                            
  0x0b270  bl       #0x16dc4                                        ; _objc_release
  0x0b274  add      x0, x21, #0x2dc                               
  0x0b278  bl       #0x16e84                                        ; _os_unfair_lock_unlock
  0x0b27c  cbz      x19, #0xb308                                  
  0x0b280  mov      x0, x19                                       
  0x0b284  bl       #0x17dc0                                        ; objc:layer
  0x0b288  mov      x29, x29                                      
  0x0b28c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0b290  mov      x23, x0                                       
  0x0b294  adrp     x26, #0x25000                                 
  0x0b298  ldr      x1, [x26, #0x838]                             
  0x0b29c  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0b2a0  mov      x29, x29                                      
  0x0b2a4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0b2a8  mov      x24, x0                                       
  0x0b2ac  mov      x0, x21                                       
  0x0b2b0  bl       #0x180e0                                        ; objc:nativeMeshToken
  0x0b2b4  mov      x29, x29                                      
  0x0b2b8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0b2bc  mov      x25, x0                                       
  0x0b2c0  bl       #0x16dc4                                        ; _objc_release
  0x0b2c4  mov      x0, x24                                       
  0x0b2c8  bl       #0x16dc4                                        ; _objc_release
  0x0b2cc  mov      x0, x23                                       
  0x0b2d0  bl       #0x16dc4                                        ; _objc_release
  0x0b2d4  cmp      x24, x25                                      
  0x0b2d8  b.ne     #0xb308                                       
  0x0b2dc  mov      x0, x19                                       
  0x0b2e0  bl       #0x17dc0                                        ; objc:layer
  0x0b2e4  mov      x29, x29                                      
  0x0b2e8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0b2ec  mov      x23, x0                                       
  0x0b2f0  ldr      x1, [x26, #0x838]                             
  0x0b2f4  mov      x2, #0                                        
  0x0b2f8  mov      w3, #0x301                                    
  0x0b2fc  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0b300  mov      x0, x23                                       
  0x0b304  bl       #0x16dc4                                        ; _objc_release
  0x0b308  mov      x0, x21                                       
  0x0b30c  mov      x2, #0                                        
  0x0b310  bl       #0x18d60                                        ; objc:setNativeMeshToken:
  0x0b314  movi     v0.2d, #0000000000000000                      
  0x0b318  stp      q0, q0, [sp, #0x50]                           
  0x0b31c  stp      q0, q0, [sp, #0x30]                           
  0x0b320  mov      x0, x22                                       
  0x0b324  bl       #0x16dd4                                        ; _objc_retain
  0x0b328  mov      x22, x0                                       
  0x0b32c  add      x2, sp, #0x30                                 
  0x0b330  add      x3, sp, #0x78                                 
  0x0b334  mov      w4, #0x10                                     
  0x0b338  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0b33c  cbz      x0, #0xb39c                                   
  0x0b340  mov      x23, x0                                       
  0x0b344  ldr      x8, [sp, #0x40]                               
  0x0b348  ldr      x24, [x8]                                     
  0x0b34c  mov      x25, #0                                       
  0x0b350  ldr      x8, [sp, #0x40]                               
  0x0b354  ldr      x8, [x8]                                      
  0x0b358  cmp      x8, x24                                       
  0x0b35c  b.eq     #0xb368                                       
  0x0b360  mov      x0, x22                                       
  0x0b364  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x0b368  ldr      x8, [sp, #0x38]                               
  0x0b36c  ldr      x0, [x8, x25, lsl #3]                         
  0x0b370  bl       #0x17c40                                        ; objc:invalidate
  0x0b374  add      x25, x25, #1                                  
  0x0b378  cmp      x23, x25                                      
  0x0b37c  b.ne     #0xb350                                       
  0x0b380  add      x2, sp, #0x30                                 
  0x0b384  add      x3, sp, #0x78                                 
  0x0b388  mov      x0, x22                                       
  0x0b38c  mov      w4, #0x10                                     
  0x0b390  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0b394  mov      x23, x0                                       
  0x0b398  cbnz     x0, #0xb34c                                   
  0x0b39c  mov      x0, x22                                       
  0x0b3a0  bl       #0x16dc4                                        ; _objc_release
  0x0b3a4  mov      x0, x19                                       
  0x0b3a8  bl       #0xb164                                         ; sub_b164
  0x0b3ac  mov      x0, x20                                       
  0x0b3b0  bl       #0xb164                                         ; sub_b164
  0x0b3b4  mov      x0, x21                                       
  0x0b3b8  bl       #0x16dd4                                        ; _objc_retain
  0x0b3bc  mov      x21, x0                                       
  0x0b3c0  mov      x0, #0                                        
  0x0b3c4  mov      w1, #0xca00                                   
  0x0b3c8  movk     w1, #0x3b9a, lsl #16                          
  0x0b3cc  bl       #0x16c54                                        ; _dispatch_time
  0x0b3d0  mov      x23, x0                                       
  0x0b3d4  add      x8, sp, #8                                    
  0x0b3d8  adrp     x16, #0x20000                                 
  0x0b3dc  ldr      x16, [x16, #0x318]                            
  0x0b3e0  mov      x17, x8                                       
  0x0b3e4  movk     x17, #0x6ae1, lsl #48                         
  0x0b3e8  pacda    x16, x17                                      
  0x0b3ec  str      x16, [sp, #8]                                 
  0x0b3f0  adrp     x9, #0x19000                                  
  0x0b3f4  ldr      d0, [x9, #0xb40]                              
  0x0b3f8  str      d0, [sp, #0x10]                               
  0x0b3fc  add      x8, x8, #0x10                                 
  0x0b400  adrp     x16, #0xb000                                  
  0x0b404  add      x16, x16, #0x4a0                              
  0x0b408  pacia    x16, x8                                       
  0x0b40c  adrp     x8, #0x20000                                  
  0x0b410  add      x8, x8, #0x3f0                                
  0x0b414  stp      x16, x8, [sp, #0x18]                          
  0x0b418  str      x21, [sp, #0x28]                              
  0x0b41c  mov      x0, x21                                       
  0x0b420  bl       #0x16dd4                                        ; _objc_retain
  0x0b424  mov      x21, x0                                       
  0x0b428  adrp     x1, #0x20000                                  
  0x0b42c  ldr      x1, [x1, #0x328]                              
  0x0b430  add      x2, sp, #8                                    
  0x0b434  mov      x0, x23                                       
  0x0b438  bl       #0x16c34                                        ; _dispatch_after
  0x0b43c  ldr      x0, [sp, #0x28]                               
  0x0b440  bl       #0x16dc4                                        ; _objc_release
  0x0b444  mov      x0, x21                                       
  0x0b448  bl       #0x16dc4                                        ; _objc_release
  0x0b44c  mov      x0, x22                                       
  0x0b450  bl       #0x16dc4                                        ; _objc_release
  0x0b454  mov      x0, x20                                       
  0x0b458  bl       #0x16dc4                                        ; _objc_release
  0x0b45c  mov      x0, x19                                       
  0x0b460  bl       #0x16dc4                                        ; _objc_release
  0x0b464  ldur     x8, [x29, #-0x58]                             
  0x0b468  adrp     x9, #0x20000                                  
  0x0b46c  ldr      x9, [x9, #0x320]                              
  0x0b470  ldr      x9, [x9]                                      
  0x0b474  cmp      x9, x8                                        
  0x0b478  b.ne     #0xb49c                                       
  0x0b47c  ldp      x29, x30, [sp, #0x150]                        
  0x0b480  ldp      x20, x19, [sp, #0x140]                        
  0x0b484  ldp      x22, x21, [sp, #0x130]                        
  0x0b488  ldp      x24, x23, [sp, #0x120]                        
  0x0b48c  ldp      x26, x25, [sp, #0x110]                        
  0x0b490  ldp      x28, x27, [sp, #0x100]                        
  0x0b494  add      sp, sp, #0x160                                
  0x0b498  retab                                                  
