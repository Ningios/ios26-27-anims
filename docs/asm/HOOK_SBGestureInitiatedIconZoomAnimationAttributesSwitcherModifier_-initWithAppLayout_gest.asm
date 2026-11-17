HOOK SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier -initWithAppLayout:gestureEdge:liftOffVelocity: @0xd7b8  (17 insns)
  0x0d7b8  pacibsp                                                
  0x0d7bc  stp      x20, x19, [sp, #-0x20]!                       
  0x0d7c0  stp      x29, x30, [sp, #0x10]                         
  0x0d7c4  add      x29, sp, #0x10                                
  0x0d7c8  adrp     x8, #0x25000                                  
  0x0d7cc  ldr      x8, [x8, #0x8f8]                              
  0x0d7d0  blraaz   x8                                            
  0x0d7d4  mov      x19, x0                                       
  0x0d7d8  cbz      x0, #0xd7ec                                   
  0x0d7dc  adrp     x0, #0x25000                                  
  0x0d7e0  add      x0, x0, #0x9f0                                
  0x0d7e4  mov      x1, x19                                       
  0x0d7e8  bl       #0x16e34                                        ; _objc_storeWeak
  0x0d7ec  mov      x0, x19                                       
  0x0d7f0  ldp      x29, x30, [sp, #0x10]                         
  0x0d7f4  ldp      x20, x19, [sp], #0x20                         
  0x0d7f8  retab                                                  
