HOOK SBCoverSheetPresentationManager -coverSheetSlidingViewController:prepareForDismissalTransitionForReversingTransition:forUserGesture: @0xe3c0  (37 insns)
  0x0e3c0  pacibsp                                                
  0x0e3c4  stp      x20, x19, [sp, #-0x20]!                       
  0x0e3c8  stp      x29, x30, [sp, #0x10]                         
  0x0e3cc  add      x29, sp, #0x10                                
  0x0e3d0  mov      x19, x3                                       
  0x0e3d4  adrp     x8, #0x25000                                  
  0x0e3d8  ldr      x8, [x8, #0x9a0]                              
  0x0e3dc  blraaz   x8                                            
  0x0e3e0  adrp     x8, #0x25000                                  
  0x0e3e4  strb     wzr, [x8, #0xada]                             
  0x0e3e8  bl       #0x12234                                        ; sub_12234
  0x0e3ec  adrp     x20, #0x25000                                 
  0x0e3f0  ldrb     w8, [x20, #0xad9]                             
  0x0e3f4  tbz      w0, #0, #0xe414                               
  0x0e3f8  tbz      w8, #0, #0xe41c                               
  0x0e3fc  bl       #0x125cc                                        ; sub_125cc
  0x0e400  ldrb     w8, [x20, #0xad9]                             
  0x0e404  cbz      w0, #0xe434                                   
  0x0e408  tbnz     w8, #0, #0xe458                               
  0x0e40c  mov      w0, #1                                        
  0x0e410  b        #0xe43c                                         ; sub_e43c
  0x0e414  tbnz     w8, #0, #0xe438                               
  0x0e418  b        #0xe458                                         ; sub_e458
  0x0e41c  tbnz     w19, #0, #0xe458                              
  0x0e420  adrp     x8, #0x25000                                  
  0x0e424  ldrb     w8, [x8, #0x880]                              
  0x0e428  cmp      w8, #1                                        
  0x0e42c  b.eq     #0xe3fc                                       
  0x0e430  b        #0xe458                                         ; sub_e458
  0x0e434  cbz      w8, #0xe458                                   
  0x0e438  mov      w0, #0                                        
  0x0e43c  ldp      x29, x30, [sp, #0x10]                         
  0x0e440  ldp      x20, x19, [sp], #0x20                         
  0x0e444  autibsp                                                
  0x0e448  eor      x16, x30, x30, lsl #1                         
  0x0e44c  tbz      x16, #0x3e, #0xe454                           
  0x0e450  brk      #0xc471                                       
