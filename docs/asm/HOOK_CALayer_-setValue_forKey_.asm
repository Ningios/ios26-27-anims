HOOK CALayer -setValue:forKey: @0xc364  (46 insns)
  0x0c364  pacibsp                                                
  0x0c368  stp      x24, x23, [sp, #-0x40]!                       
  0x0c36c  stp      x22, x21, [sp, #0x10]                         
  0x0c370  stp      x20, x19, [sp, #0x20]                         
  0x0c374  stp      x29, x30, [sp, #0x30]                         
  0x0c378  add      x29, sp, #0x30                                
  0x0c37c  mov      x22, x3                                       
  0x0c380  mov      x20, x1                                       
  0x0c384  mov      x21, x0                                       
  0x0c388  mov      x0, x2                                        
  0x0c38c  bl       #0x16dd4                                        ; _objc_retain
  0x0c390  mov      x19, x0                                       
  0x0c394  mov      x0, x22                                       
  0x0c398  bl       #0x16dd4                                        ; _objc_retain
  0x0c39c  mov      x22, x0                                       
  0x0c3a0  adrp     x2, #0x20000                                  
  0x0c3a4  add      x2, x2, #0x678                                
  0x0c3a8  bl       #0x17ca0                                        ; objc:isEqualToString:
  0x0c3ac  cbz      w0, #0xc3d4                                   
  0x0c3b0  adrp     x8, #0x25000                                  
  0x0c3b4  ldr      x1, [x8, #0x838]                              
  0x0c3b8  mov      x0, x21                                       
  0x0c3bc  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0c3c0  mov      x29, x29                                      
  0x0c3c4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c3c8  mov      x23, x0                                       
  0x0c3cc  bl       #0x16dc4                                        ; _objc_release
  0x0c3d0  cbnz     x23, #0xc3f0                                  
  0x0c3d4  adrp     x8, #0x25000                                  
  0x0c3d8  ldr      x8, [x8, #0x8b8]                              
  0x0c3dc  mov      x0, x21                                       
  0x0c3e0  mov      x1, x20                                       
  0x0c3e4  mov      x2, x19                                       
  0x0c3e8  mov      x3, x22                                       
  0x0c3ec  blraaz   x8                                            
  0x0c3f0  mov      x0, x22                                       
  0x0c3f4  bl       #0x16dc4                                        ; _objc_release
  0x0c3f8  mov      x0, x19                                       
  0x0c3fc  ldp      x29, x30, [sp, #0x30]                         
  0x0c400  ldp      x20, x19, [sp, #0x20]                         
  0x0c404  ldp      x22, x21, [sp, #0x10]                         
  0x0c408  ldp      x24, x23, [sp], #0x40                         
  0x0c40c  autibsp                                                
  0x0c410  eor      x16, x30, x30, lsl #1                         
  0x0c414  tbz      x16, #0x3e, #0xc41c                           
  0x0c418  brk      #0xc471                                       
