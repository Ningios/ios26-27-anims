HOOK SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier -_positionSettings @0xd918  (37 insns)
  0x0d918  pacibsp                                                
  0x0d91c  stp      x22, x21, [sp, #-0x30]!                       
  0x0d920  stp      x20, x19, [sp, #0x10]                         
  0x0d924  stp      x29, x30, [sp, #0x20]                         
  0x0d928  add      x29, sp, #0x20                                
  0x0d92c  mov      x19, x1                                       
  0x0d930  mov      x20, x0                                       
  0x0d934  bl       #0x1022c                                        ; sub_1022c
  0x0d938  adrp     x21, #0x25000                                 
  0x0d93c  mov      w8, #1                                        
  0x0d940  str      w8, [x21, #0xac8]                             
  0x0d944  adrp     x8, #0x25000                                  
  0x0d948  ldr      x8, [x8, #0x910]                              
  0x0d94c  mov      x0, x20                                       
  0x0d950  mov      x1, x19                                       
  0x0d954  blraaz   x8                                            
  0x0d958  mov      x29, x29                                      
  0x0d95c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d960  mov      x19, x0                                       
  0x0d964  str      wzr, [x21, #0xac8]                            
  0x0d968  mov      x0, x20                                       
  0x0d96c  mov      x1, x19                                       
  0x0d970  mov      w2, #1                                        
  0x0d974  bl       #0x11d78                                        ; sub_11d78
  0x0d978  mov      x29, x29                                      
  0x0d97c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d980  mov      x20, x0                                       
  0x0d984  mov      x0, x19                                       
  0x0d988  bl       #0x16dc4                                        ; _objc_release
  0x0d98c  mov      x0, x20                                       
  0x0d990  ldp      x29, x30, [sp, #0x20]                         
  0x0d994  ldp      x20, x19, [sp, #0x10]                         
  0x0d998  ldp      x22, x21, [sp], #0x30                         
  0x0d99c  autibsp                                                
  0x0d9a0  eor      x16, x30, x30, lsl #1                         
  0x0d9a4  tbz      x16, #0x3e, #0xd9ac                           
  0x0d9a8  brk      #0xc471                                       
