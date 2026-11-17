HOOK SBCoverSheetSlidingViewController -_presentGestureBeganWithGestureRecognizer: @0xdce8  (57 insns)
  0x0dce8  pacibsp                                                
  0x0dcec  stp      x26, x25, [sp, #-0x50]!                       
  0x0dcf0  stp      x24, x23, [sp, #0x10]                         
  0x0dcf4  stp      x22, x21, [sp, #0x20]                         
  0x0dcf8  stp      x20, x19, [sp, #0x30]                         
  0x0dcfc  stp      x29, x30, [sp, #0x40]                         
  0x0dd00  add      x29, sp, #0x40                                
  0x0dd04  mov      x22, x1                                       
  0x0dd08  mov      x21, x0                                       
  0x0dd0c  mov      x0, x2                                        
  0x0dd10  bl       #0x16dd4                                        ; _objc_retain
  0x0dd14  mov      x19, x0                                       
  0x0dd18  adrp     x25, #0x25000                                 
  0x0dd1c  ldr      x1, [x25, #0x870]                             
  0x0dd20  mov      x0, x21                                       
  0x0dd24  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0dd28  mov      x29, x29                                      
  0x0dd2c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0dd30  mov      x20, x0                                       
  0x0dd34  ldr      x23, [x25, #0x870]                            
  0x0dd38  mov      x0, x21                                       
  0x0dd3c  bl       #0x120bc                                        ; sub_120bc
  0x0dd40  mov      x29, x29                                      
  0x0dd44  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0dd48  mov      x24, x0                                       
  0x0dd4c  mov      x0, x21                                       
  0x0dd50  mov      x1, x23                                       
  0x0dd54  mov      x2, x24                                       
  0x0dd58  mov      w3, #1                                        
  0x0dd5c  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0dd60  mov      x0, x24                                       
  0x0dd64  bl       #0x16dc4                                        ; _objc_release
  0x0dd68  adrp     x8, #0x25000                                  
  0x0dd6c  ldr      x8, [x8, #0x938]                              
  0x0dd70  mov      x0, x21                                       
  0x0dd74  mov      x1, x22                                       
  0x0dd78  mov      x2, x19                                       
  0x0dd7c  blraaz   x8                                            
  0x0dd80  mov      w22, #0                                       
  0x0dd84  ldr      x1, [x25, #0x870]                             
  0x0dd88  mov      x0, x21                                       
  0x0dd8c  mov      x2, x20                                       
  0x0dd90  mov      w3, #1                                        
  0x0dd94  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0dd98  cbnz     w22, #0xddd0                                  
  0x0dd9c  mov      x0, x20                                       
  0x0dda0  bl       #0x16dc4                                        ; _objc_release
  0x0dda4  mov      x0, x19                                       
  0x0dda8  ldp      x29, x30, [sp, #0x40]                         
  0x0ddac  ldp      x20, x19, [sp, #0x30]                         
  0x0ddb0  ldp      x22, x21, [sp, #0x20]                         
  0x0ddb4  ldp      x24, x23, [sp, #0x10]                         
  0x0ddb8  ldp      x26, x25, [sp], #0x50                         
  0x0ddbc  autibsp                                                
  0x0ddc0  eor      x16, x30, x30, lsl #1                         
  0x0ddc4  tbz      x16, #0x3e, #0xddcc                           
  0x0ddc8  brk      #0xc471                                       
