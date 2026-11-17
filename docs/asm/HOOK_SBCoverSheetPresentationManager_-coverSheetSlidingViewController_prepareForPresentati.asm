HOOK SBCoverSheetPresentationManager -coverSheetSlidingViewController:prepareForPresentationTransitionForUserGesture: @0xe368  (18 insns)
  0x0e368  pacibsp                                                
  0x0e36c  stp      x20, x19, [sp, #-0x20]!                       
  0x0e370  stp      x29, x30, [sp, #0x10]                         
  0x0e374  add      x29, sp, #0x10                                
  0x0e378  mov      x19, x3                                       
  0x0e37c  adrp     x8, #0x25000                                  
  0x0e380  ldr      x8, [x8, #0x998]                              
  0x0e384  blraaz   x8                                            
  0x0e388  cbz      w19, #0xe398                                  
  0x0e38c  adrp     x8, #0x25000                                  
  0x0e390  ldrb     w8, [x8, #0xad9]                              
  0x0e394  tbz      w8, #0, #0xe3b0                               
  0x0e398  mov      w0, #0                                        
  0x0e39c  adrp     x8, #0x25000                                  
  0x0e3a0  strb     w0, [x8, #0xada]                              
  0x0e3a4  ldp      x29, x30, [sp, #0x10]                         
  0x0e3a8  ldp      x20, x19, [sp], #0x20                         
  0x0e3ac  retab                                                  
