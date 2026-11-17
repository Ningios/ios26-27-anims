HOOK SBFluidSwitcherViewController -_itemContainerForAppLayoutIfExists: @0xe7fc  (33 insns)
  0x0e7fc  pacibsp                                                
  0x0e800  stp      x22, x21, [sp, #-0x30]!                       
  0x0e804  stp      x20, x19, [sp, #0x10]                         
  0x0e808  stp      x29, x30, [sp, #0x20]                         
  0x0e80c  add      x29, sp, #0x20                                
  0x0e810  mov      x19, x1                                       
  0x0e814  mov      x20, x0                                       
  0x0e818  mov      x0, x2                                        
  0x0e81c  bl       #0x16dd4                                        ; _objc_retain
  0x0e820  mov      x21, x0                                       
  0x0e824  adrp     x0, #0x25000                                  
  0x0e828  add      x0, x0, #0x9e8                                
  0x0e82c  mov      x1, x20                                       
  0x0e830  bl       #0x16e34                                        ; _objc_storeWeak
  0x0e834  adrp     x8, #0x25000                                  
  0x0e838  ldr      x8, [x8, #0x9c0]                              
  0x0e83c  mov      x0, x20                                       
  0x0e840  mov      x1, x19                                       
  0x0e844  mov      x2, x21                                       
  0x0e848  blraaz   x8                                            
  0x0e84c  mov      x29, x29                                      
  0x0e850  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e854  mov      x19, x0                                       
  0x0e858  mov      x0, x21                                       
  0x0e85c  bl       #0x16dc4                                        ; _objc_release
  0x0e860  mov      x0, x19                                       
  0x0e864  ldp      x29, x30, [sp, #0x20]                         
  0x0e868  ldp      x20, x19, [sp, #0x10]                         
  0x0e86c  ldp      x22, x21, [sp], #0x30                         
  0x0e870  autibsp                                                
  0x0e874  eor      x16, x30, x30, lsl #1                         
  0x0e878  tbz      x16, #0x3e, #0xe880                           
  0x0e87c  brk      #0xc471                                       
