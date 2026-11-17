HOOK SBCoverSheetSlidingViewController -_dismissGestureBeganWithGestureRecognizer: @0xde04  (57 insns)
  0x0de04  pacibsp                                                
  0x0de08  stp      x26, x25, [sp, #-0x50]!                       
  0x0de0c  stp      x24, x23, [sp, #0x10]                         
  0x0de10  stp      x22, x21, [sp, #0x20]                         
  0x0de14  stp      x20, x19, [sp, #0x30]                         
  0x0de18  stp      x29, x30, [sp, #0x40]                         
  0x0de1c  add      x29, sp, #0x40                                
  0x0de20  mov      x22, x1                                       
  0x0de24  mov      x21, x0                                       
  0x0de28  mov      x0, x2                                        
  0x0de2c  bl       #0x16dd4                                        ; _objc_retain
  0x0de30  mov      x19, x0                                       
  0x0de34  adrp     x25, #0x25000                                 
  0x0de38  ldr      x1, [x25, #0x870]                             
  0x0de3c  mov      x0, x21                                       
  0x0de40  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0de44  mov      x29, x29                                      
  0x0de48  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0de4c  mov      x20, x0                                       
  0x0de50  ldr      x23, [x25, #0x870]                            
  0x0de54  mov      x0, x21                                       
  0x0de58  bl       #0x120bc                                        ; sub_120bc
  0x0de5c  mov      x29, x29                                      
  0x0de60  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0de64  mov      x24, x0                                       
  0x0de68  mov      x0, x21                                       
  0x0de6c  mov      x1, x23                                       
  0x0de70  mov      x2, x24                                       
  0x0de74  mov      w3, #1                                        
  0x0de78  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0de7c  mov      x0, x24                                       
  0x0de80  bl       #0x16dc4                                        ; _objc_release
  0x0de84  adrp     x8, #0x25000                                  
  0x0de88  ldr      x8, [x8, #0x940]                              
  0x0de8c  mov      x0, x21                                       
  0x0de90  mov      x1, x22                                       
  0x0de94  mov      x2, x19                                       
  0x0de98  blraaz   x8                                            
  0x0de9c  mov      w22, #0                                       
  0x0dea0  ldr      x1, [x25, #0x870]                             
  0x0dea4  mov      x0, x21                                       
  0x0dea8  mov      x2, x20                                       
  0x0deac  mov      w3, #1                                        
  0x0deb0  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0deb4  cbnz     w22, #0xdeec                                  
  0x0deb8  mov      x0, x20                                       
  0x0debc  bl       #0x16dc4                                        ; _objc_release
  0x0dec0  mov      x0, x19                                       
  0x0dec4  ldp      x29, x30, [sp, #0x40]                         
  0x0dec8  ldp      x20, x19, [sp, #0x30]                         
  0x0decc  ldp      x22, x21, [sp, #0x20]                         
  0x0ded0  ldp      x24, x23, [sp, #0x10]                         
  0x0ded4  ldp      x26, x25, [sp], #0x50                         
  0x0ded8  autibsp                                                
  0x0dedc  eor      x16, x30, x30, lsl #1                         
  0x0dee0  tbz      x16, #0x3e, #0xdee8                           
  0x0dee4  brk      #0xc471                                       
