HOOK CSCoverSheetTransitionSettings -iconsFlyIn @0xe30c  (12 insns)
  0x0e30c  pacibsp                                                
  0x0e310  stp      x20, x19, [sp, #-0x20]!                       
  0x0e314  stp      x29, x30, [sp, #0x10]                         
  0x0e318  add      x29, sp, #0x10                                
  0x0e31c  mov      x19, x1                                       
  0x0e320  mov      x20, x0                                       
  0x0e324  bl       #0x12234                                        ; sub_12234
  0x0e328  tbz      w0, #0, #0xe33c                               
  0x0e32c  mov      w0, #0                                        
  0x0e330  ldp      x29, x30, [sp, #0x10]                         
  0x0e334  ldp      x20, x19, [sp], #0x20                         
  0x0e338  retab                                                  
