CG27GenieDriver ensureGlassRimAt: @0x44c0  (22 insns)
types: v24@0:8d16
  0x044c0  pacibsp                                                
  0x044c4  stp      x20, x19, [sp, #-0x20]!                       
  0x044c8  stp      x29, x30, [sp, #0x10]                         
  0x044cc  add      x29, sp, #0x10                                
  0x044d0  mov      x19, x0                                       
  0x044d4  bl       #0x182a0                                        ; objc:opening
  0x044d8  mov      x0, x19                                       
  0x044dc  bl       #0x17960                                        ; objc:glassRim
  0x044e0  mov      x29, x29                                      
  0x044e4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x044e8  mov      x20, x0                                       
  0x044ec  bl       #0x18480                                        ; objc:removeFromSuperlayer
  0x044f0  mov      x0, x20                                       
  0x044f4  bl       #0x16dc4                                        ; _objc_release
  0x044f8  mov      x0, x19                                       
  0x044fc  mov      x2, #0                                        
  0x04500  ldp      x29, x30, [sp, #0x10]                         
  0x04504  ldp      x20, x19, [sp], #0x20                         
  0x04508  autibsp                                                
  0x0450c  eor      x16, x30, x30, lsl #1                         
  0x04510  tbz      x16, #0x3e, #0x4518                           
  0x04514  brk      #0xc471                                       
