HOOK SBCoverSheetPresentationManager -coverSheetSlidingViewController:committingToEndPresented: @0xe464  (64 insns)
  0x0e464  pacibsp                                                
  0x0e468  stp      d9, d8, [sp, #-0x40]!                         
  0x0e46c  stp      x22, x21, [sp, #0x10]                         
  0x0e470  stp      x20, x19, [sp, #0x20]                         
  0x0e474  stp      x29, x30, [sp, #0x30]                         
  0x0e478  add      x29, sp, #0x30                                
  0x0e47c  mov      x20, x3                                       
  0x0e480  mov      x21, x1                                       
  0x0e484  mov      x22, x0                                       
  0x0e488  mov      x0, x2                                        
  0x0e48c  bl       #0x16dd4                                        ; _objc_retain
  0x0e490  mov      x19, x0                                       
  0x0e494  adrp     x8, #0x25000                                  
  0x0e498  ldr      x8, [x8, #0x9a8]                              
  0x0e49c  mov      x0, x22                                       
  0x0e4a0  mov      x1, x21                                       
  0x0e4a4  mov      x2, x19                                       
  0x0e4a8  mov      x3, x20                                       
  0x0e4ac  blraaz   x8                                            
  0x0e4b0  adrp     x9, #0x25000                                  
  0x0e4b4  ldrb     w8, [x9, #0xada]                              
  0x0e4b8  strb     wzr, [x9, #0xada]                             
  0x0e4bc  tbz      w20, #0, #0xe4c8                              
  0x0e4c0  cbnz     w8, #0xe4d4                                   
  0x0e4c4  b        #0xe540                                         ; sub_e540
  0x0e4c8  adrp     x8, #0x25000                                  
  0x0e4cc  ldrb     w8, [x8, #0xad9]                              
  0x0e4d0  tbz      w8, #0, #0xe540                               
  0x0e4d4  adrp     x0, #0x20000                                  
  0x0e4d8  add      x0, x0, #0xb98                                
  0x0e4dc  bl       #0x16bb4                                        ; _NSSelectorFromString
  0x0e4e0  mov      x21, x0                                       
  0x0e4e4  mov      x0, x19                                       
  0x0e4e8  mov      x1, x21                                       
  0x0e4ec  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0e4f0  movi     d8, #0000000000000000                         
  0x0e4f4  tbz      w0, #0, #0xe508                               
  0x0e4f8  mov      x0, x19                                       
  0x0e4fc  mov      x1, x21                                       
  0x0e500  bl       #0x16d74                                        ; _objc_msgSend
  0x0e504  fmov     d8, d0                                        
  0x0e508  bl       #0x12234                                        ; sub_12234
  0x0e50c  cbz      w0, #0xe528                                   
  0x0e510  bl       #0x125cc                                        ; sub_125cc
  0x0e514  tbz      w0, #0, #0xe528                               
  0x0e518  eor      w0, w20, #1                                   
  0x0e51c  fmov     d0, d8                                        
  0x0e520  bl       #0x1343c                                        ; sub_1343c
  0x0e524  b        #0xe540                                         ; sub_e540
  0x0e528  adrp     x8, #0x25000                                  
  0x0e52c  ldrb     w8, [x8, #0xad9]                              
  0x0e530  cmp      w8, #1                                        
  0x0e534  b.ne     #0xe540                                       
  0x0e538  mov      w0, #0                                        
  0x0e53c  bl       #0x12654                                        ; sub_12654
  0x0e540  mov      x0, x19                                       
  0x0e544  ldp      x29, x30, [sp, #0x30]                         
  0x0e548  ldp      x20, x19, [sp, #0x20]                         
  0x0e54c  ldp      x22, x21, [sp, #0x10]                         
  0x0e550  ldp      d9, d8, [sp], #0x40                           
  0x0e554  autibsp                                                
  0x0e558  eor      x16, x30, x30, lsl #1                         
  0x0e55c  tbz      x16, #0x3e, #0xe564                           
  0x0e560  brk      #0xc471                                       
