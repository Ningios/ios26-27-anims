HOOK SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier -_layoutSettings @0xd898  (31 insns)
  0x0d898  pacibsp                                                
  0x0d89c  stp      x20, x19, [sp, #-0x20]!                       
  0x0d8a0  stp      x29, x30, [sp, #0x10]                         
  0x0d8a4  add      x29, sp, #0x10                                
  0x0d8a8  mov      x19, x1                                       
  0x0d8ac  mov      x20, x0                                       
  0x0d8b0  bl       #0x1022c                                        ; sub_1022c
  0x0d8b4  adrp     x8, #0x25000                                  
  0x0d8b8  ldr      x8, [x8, #0x908]                              
  0x0d8bc  mov      x0, x20                                       
  0x0d8c0  mov      x1, x19                                       
  0x0d8c4  blraaz   x8                                            
  0x0d8c8  mov      x29, x29                                      
  0x0d8cc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d8d0  mov      x19, x0                                       
  0x0d8d4  mov      x0, x20                                       
  0x0d8d8  mov      x1, x19                                       
  0x0d8dc  mov      w2, #0                                        
  0x0d8e0  bl       #0x11d78                                        ; sub_11d78
  0x0d8e4  mov      x29, x29                                      
  0x0d8e8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d8ec  mov      x20, x0                                       
  0x0d8f0  mov      x0, x19                                       
  0x0d8f4  bl       #0x16dc4                                        ; _objc_release
  0x0d8f8  mov      x0, x20                                       
  0x0d8fc  ldp      x29, x30, [sp, #0x10]                         
  0x0d900  ldp      x20, x19, [sp], #0x20                         
  0x0d904  autibsp                                                
  0x0d908  eor      x16, x30, x30, lsl #1                         
  0x0d90c  tbz      x16, #0x3e, #0xd914                           
  0x0d910  brk      #0xc471                                       
