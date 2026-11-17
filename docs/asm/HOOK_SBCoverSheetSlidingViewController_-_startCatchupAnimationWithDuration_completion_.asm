HOOK SBCoverSheetSlidingViewController -_startCatchupAnimationWithDuration:completion: @0xdf20  (69 insns)
  0x0df20  pacibsp                                                
  0x0df24  stp      d11, d10, [sp, #-0x60]!                       
  0x0df28  stp      d9, d8, [sp, #0x10]                           
  0x0df2c  stp      x24, x23, [sp, #0x20]                         
  0x0df30  stp      x22, x21, [sp, #0x30]                         
  0x0df34  stp      x20, x19, [sp, #0x40]                         
  0x0df38  stp      x29, x30, [sp, #0x50]                         
  0x0df3c  add      x29, sp, #0x50                                
  0x0df40  fmov     d8, d0                                        
  0x0df44  mov      x20, x1                                       
  0x0df48  mov      x21, x0                                       
  0x0df4c  mov      x0, x2                                        
  0x0df50  bl       #0x16dd4                                        ; _objc_retain
  0x0df54  mov      x19, x0                                       
  0x0df58  adrp     x8, #0x25000                                  
  0x0df5c  ldr      x1, [x8, #0x870]                              
  0x0df60  mov      x0, x21                                       
  0x0df64  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0df68  mov      x29, x29                                      
  0x0df6c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0df70  mov      x22, x0                                       
  0x0df74  cbz      x0, #0xdfe4                                   
  0x0df78  mov      x0, x21                                       
  0x0df7c  bl       #0x19560                                        ; objc:view
  0x0df80  mov      x29, x29                                      
  0x0df84  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0df88  mov      x23, x0                                       
  0x0df8c  bl       #0x17460                                        ; objc:bounds
  0x0df90  fmov     d9, d3                                        
  0x0df94  fmov     x24, d9                                       
  0x0df98  mov      x0, x23                                       
  0x0df9c  bl       #0x16dc4                                        ; _objc_release
  0x0dfa0  and      x8, x24, #0x7fffffffffffffff                  
  0x0dfa4  mov      x9, #0x7fefffffffffffff                       
  0x0dfa8  cmp      x8, x9                                        
  0x0dfac  b.gt     #0xdfe4                                       
  0x0dfb0  fmov     d11, #1.00000000                              
  0x0dfb4  fcmp     d9, d11                                       
  0x0dfb8  b.le     #0xdfe4                                       
  0x0dfbc  mov      x0, x21                                       
  0x0dfc0  bl       #0x17da0                                        ; objc:lastTouchLocation
  0x0dfc4  fmov     d10, d0                                       
  0x0dfc8  mov      x0, x22                                       
  0x0dfcc  bl       #0x177c0                                        ; objc:doubleValue
  0x0dfd0  fsub     d0, d11, d0                                   
  0x0dfd4  fmul     d1, d9, d0                                    
  0x0dfd8  mov      x0, x21                                       
  0x0dfdc  fmov     d0, d10                                       
  0x0dfe0  bl       #0x18c40                                        ; objc:setLastTouchLocation:
  0x0dfe4  adrp     x8, #0x25000                                  
  0x0dfe8  ldr      x8, [x8, #0x948]                              
  0x0dfec  mov      x0, x21                                       
  0x0dff0  mov      x1, x20                                       
  0x0dff4  fmov     d0, d8                                        
  0x0dff8  mov      x2, x19                                       
  0x0dffc  blraaz   x8                                            
  0x0e000  mov      x0, x22                                       
  0x0e004  bl       #0x16dc4                                        ; _objc_release
  0x0e008  mov      x0, x19                                       
  0x0e00c  ldp      x29, x30, [sp, #0x50]                         
  0x0e010  ldp      x20, x19, [sp, #0x40]                         
  0x0e014  ldp      x22, x21, [sp, #0x30]                         
  0x0e018  ldp      x24, x23, [sp, #0x20]                         
  0x0e01c  ldp      d9, d8, [sp, #0x10]                           
  0x0e020  ldp      d11, d10, [sp], #0x60                         
  0x0e024  autibsp                                                
  0x0e028  eor      x16, x30, x30, lsl #1                         
  0x0e02c  tbz      x16, #0x3e, #0xe034                           
  0x0e030  brk      #0xc471                                       
