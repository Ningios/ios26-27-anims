HOOK SBFullScreenToHomeIconZoomSwitcherModifier -transitionWillBegin @0xc604  (46 insns)
  0x0c604  pacibsp                                                
  0x0c608  stp      x22, x21, [sp, #-0x30]!                       
  0x0c60c  stp      x20, x19, [sp, #0x10]                         
  0x0c610  stp      x29, x30, [sp, #0x20]                         
  0x0c614  add      x29, sp, #0x20                                
  0x0c618  mov      x19, x1                                       
  0x0c61c  mov      x20, x0                                       
  0x0c620  adrp     x8, #0x25000                                  
  0x0c624  ldr      x1, [x8, #0x858]                              
  0x0c628  mov      x2, #0                                        
  0x0c62c  mov      w3, #1                                        
  0x0c630  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0c634  adrp     x8, #0x25000                                  
  0x0c638  ldr      x1, [x8, #0x860]                              
  0x0c63c  mov      x0, x20                                       
  0x0c640  mov      x2, #0                                        
  0x0c644  mov      w3, #1                                        
  0x0c648  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0c64c  adrp     x8, #0x25000                                  
  0x0c650  ldr      x21, [x8, #0x868]                             
  0x0c654  adrp     x8, #0x25000                                  
  0x0c658  ldr      x22, [x8, #0x628]                             
  0x0c65c  bl       #0x16974                                        ; _CACurrentMediaTime
  0x0c660  mov      x0, x22                                       
  0x0c664  bl       #0x181c0                                        ; objc:numberWithDouble:
  0x0c668  mov      x29, x29                                      
  0x0c66c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c670  mov      x22, x0                                       
  0x0c674  mov      x0, x20                                       
  0x0c678  mov      x1, x21                                       
  0x0c67c  mov      x2, x22                                       
  0x0c680  mov      w3, #1                                        
  0x0c684  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0c688  mov      x0, x22                                       
  0x0c68c  bl       #0x16dc4                                        ; _objc_release
  0x0c690  adrp     x8, #0x25000                                  
  0x0c694  ldr      x2, [x8, #0x8d0]                              
  0x0c698  mov      x0, x20                                       
  0x0c69c  mov      x1, x19                                       
  0x0c6a0  ldp      x29, x30, [sp, #0x20]                         
  0x0c6a4  ldp      x20, x19, [sp, #0x10]                         
  0x0c6a8  ldp      x22, x21, [sp], #0x30                         
  0x0c6ac  autibsp                                                
  0x0c6b0  eor      x16, x30, x30, lsl #1                         
  0x0c6b4  tbz      x16, #0x3e, #0xc6bc                           
  0x0c6b8  brk      #0xc471                                       
