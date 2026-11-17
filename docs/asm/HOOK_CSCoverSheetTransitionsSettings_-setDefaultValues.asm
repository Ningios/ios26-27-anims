HOOK CSCoverSheetTransitionsSettings -setDefaultValues @0xe038  (14 insns)
  0x0e038  pacibsp                                                
  0x0e03c  stp      x20, x19, [sp, #-0x20]!                       
  0x0e040  stp      x29, x30, [sp, #0x10]                         
  0x0e044  add      x29, sp, #0x10                                
  0x0e048  mov      x19, x0                                       
  0x0e04c  adrp     x8, #0x25000                                  
  0x0e050  ldr      x8, [x8, #0x950]                              
  0x0e054  blraaz   x8                                            
  0x0e058  adrp     x8, #0x25000                                  
  0x0e05c  ldrb     w8, [x8, #0xad8]                              
  0x0e060  tbz      w8, #0, #0xe070                               
  0x0e064  ldp      x29, x30, [sp, #0x10]                         
  0x0e068  ldp      x20, x19, [sp], #0x20                         
  0x0e06c  retab                                                  
