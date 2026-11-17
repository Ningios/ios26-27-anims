HOOK SBCoverSheetPresentationManager -coverSheetSlidingViewControllerDidEndTransition: @0xe568  (42 insns)
  0x0e568  pacibsp                                                
  0x0e56c  stp      x20, x19, [sp, #-0x20]!                       
  0x0e570  stp      x29, x30, [sp, #0x10]                         
  0x0e574  add      x29, sp, #0x10                                
  0x0e578  mov      x19, x0                                       
  0x0e57c  adrp     x8, #0x25000                                  
  0x0e580  ldr      x8, [x8, #0x9b0]                              
  0x0e584  blraaz   x8                                            
  0x0e588  mov      x0, x19                                       
  0x0e58c  bl       #0x16dd4                                        ; _objc_retain
  0x0e590  mov      x19, x0                                       
  0x0e594  adrp     x8, #0x24000                                  
  0x0e598  ldr      x20, [x8, #0xbf0]                             
  0x0e59c  mov      x1, x20                                       
  0x0e5a0  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0e5a4  tbz      w0, #0, #0xe5d8                               
  0x0e5a8  mov      x0, x19                                       
  0x0e5ac  mov      x1, x20                                       
  0x0e5b0  bl       #0x16d74                                        ; _objc_msgSend
  0x0e5b4  adrp     x8, #0x25000                                  
  0x0e5b8  strb     w0, [x8, #0x880]                              
  0x0e5bc  adrp     x8, #0x25000                                  
  0x0e5c0  ldrb     w8, [x8, #0xad9]                              
  0x0e5c4  tbz      w8, #0, #0xe5f4                               
  0x0e5c8  cbz      w0, #0xe5ec                                   
  0x0e5cc  bl       #0x125cc                                        ; sub_125cc
  0x0e5d0  tbz      w0, #0, #0xe5ec                               
  0x0e5d4  b        #0xe5f4                                         ; sub_e5f4
  0x0e5d8  adrp     x8, #0x25000                                  
  0x0e5dc  strb     wzr, [x8, #0x880]                             
  0x0e5e0  adrp     x8, #0x25000                                  
  0x0e5e4  ldrb     w8, [x8, #0xad9]                              
  0x0e5e8  tbz      w8, #0, #0xe5f4                               
  0x0e5ec  mov      w0, #0                                        
  0x0e5f0  bl       #0x12654                                        ; sub_12654
  0x0e5f4  mov      x0, x19                                       
  0x0e5f8  ldp      x29, x30, [sp, #0x10]                         
  0x0e5fc  ldp      x20, x19, [sp], #0x20                         
  0x0e600  autibsp                                                
  0x0e604  eor      x16, x30, x30, lsl #1                         
  0x0e608  tbz      x16, #0x3e, #0xe610                           
  0x0e60c  brk      #0xc471                                       
