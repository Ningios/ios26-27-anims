HOOK SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier -_scaleSettings @0xd9b0  (37 insns)
  0x0d9b0  pacibsp                                                
  0x0d9b4  stp      x22, x21, [sp, #-0x30]!                       
  0x0d9b8  stp      x20, x19, [sp, #0x10]                         
  0x0d9bc  stp      x29, x30, [sp, #0x20]                         
  0x0d9c0  add      x29, sp, #0x20                                
  0x0d9c4  mov      x19, x1                                       
  0x0d9c8  mov      x20, x0                                       
  0x0d9cc  bl       #0x1022c                                        ; sub_1022c
  0x0d9d0  adrp     x21, #0x25000                                 
  0x0d9d4  mov      w8, #2                                        
  0x0d9d8  str      w8, [x21, #0xac8]                             
  0x0d9dc  adrp     x8, #0x25000                                  
  0x0d9e0  ldr      x8, [x8, #0x918]                              
  0x0d9e4  mov      x0, x20                                       
  0x0d9e8  mov      x1, x19                                       
  0x0d9ec  blraaz   x8                                            
  0x0d9f0  mov      x29, x29                                      
  0x0d9f4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d9f8  mov      x19, x0                                       
  0x0d9fc  str      wzr, [x21, #0xac8]                            
  0x0da00  mov      x0, x20                                       
  0x0da04  mov      x1, x19                                       
  0x0da08  mov      w2, #2                                        
  0x0da0c  bl       #0x11d78                                        ; sub_11d78
  0x0da10  mov      x29, x29                                      
  0x0da14  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0da18  mov      x20, x0                                       
  0x0da1c  mov      x0, x19                                       
  0x0da20  bl       #0x16dc4                                        ; _objc_release
  0x0da24  mov      x0, x20                                       
  0x0da28  ldp      x29, x30, [sp, #0x20]                         
  0x0da2c  ldp      x20, x19, [sp, #0x10]                         
  0x0da30  ldp      x22, x21, [sp], #0x30                         
  0x0da34  autibsp                                                
  0x0da38  eor      x16, x30, x30, lsl #1                         
  0x0da3c  tbz      x16, #0x3e, #0xda44                           
  0x0da40  brk      #0xc471                                       
