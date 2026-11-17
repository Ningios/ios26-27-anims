HOOK SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier -animationAttributesForLayoutElement: @0xd7fc  (38 insns)
  0x0d7fc  pacibsp                                                
  0x0d800  stp      x22, x21, [sp, #-0x30]!                       
  0x0d804  stp      x20, x19, [sp, #0x10]                         
  0x0d808  stp      x29, x30, [sp, #0x20]                         
  0x0d80c  add      x29, sp, #0x20                                
  0x0d810  mov      x19, x1                                       
  0x0d814  mov      x20, x0                                       
  0x0d818  adrp     x8, #0x25000                                  
  0x0d81c  ldr      x22, [x8, #0x900]                             
  0x0d820  mov      x0, x2                                        
  0x0d824  bl       #0x16dd4                                        ; _objc_retain
  0x0d828  mov      x21, x0                                       
  0x0d82c  mov      x0, x20                                       
  0x0d830  mov      x1, x19                                       
  0x0d834  mov      x2, x21                                       
  0x0d838  blraaz   x22                                           
  0x0d83c  mov      x29, x29                                      
  0x0d840  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d844  mov      x19, x0                                       
  0x0d848  mov      x0, x20                                       
  0x0d84c  mov      x1, x21                                       
  0x0d850  mov      x2, x19                                       
  0x0d854  bl       #0x10bc8                                        ; sub_10bc8
  0x0d858  mov      x29, x29                                      
  0x0d85c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0d860  mov      x20, x0                                       
  0x0d864  mov      x0, x21                                       
  0x0d868  bl       #0x16dc4                                        ; _objc_release
  0x0d86c  mov      x0, x19                                       
  0x0d870  bl       #0x16dc4                                        ; _objc_release
  0x0d874  mov      x0, x20                                       
  0x0d878  ldp      x29, x30, [sp, #0x20]                         
  0x0d87c  ldp      x20, x19, [sp, #0x10]                         
  0x0d880  ldp      x22, x21, [sp], #0x30                         
  0x0d884  autibsp                                                
  0x0d888  eor      x16, x30, x30, lsl #1                         
  0x0d88c  tbz      x16, #0x3e, #0xd894                           
  0x0d890  brk      #0xc471                                       
