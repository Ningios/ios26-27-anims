HOOK CSCombinedListViewController -horizontalInsetMargin @0xe23c  (45 insns)
  0x0e23c  pacibsp                                                
  0x0e240  stp      d9, d8, [sp, #-0x40]!                         
  0x0e244  stp      x22, x21, [sp, #0x10]                         
  0x0e248  stp      x20, x19, [sp, #0x20]                         
  0x0e24c  stp      x29, x30, [sp, #0x30]                         
  0x0e250  add      x29, sp, #0x30                                
  0x0e254  mov      x19, x1                                       
  0x0e258  mov      x20, x0                                       
  0x0e25c  bl       #0x121dc                                        ; sub_121dc
  0x0e260  cbz      w0, #0xe2c0                                   
  0x0e264  adrp     x8, #0x25000                                  
  0x0e268  ldr      x0, [x8, #0x5e8]                              
  0x0e26c  bl       #0x17ec0                                        ; objc:mainScreen
  0x0e270  mov      x29, x29                                      
  0x0e274  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e278  mov      x21, x0                                       
  0x0e27c  bl       #0x17460                                        ; objc:bounds
  0x0e280  fmov     d8, d2                                        
  0x0e284  fmov     d9, d3                                        
  0x0e288  mov      x0, x21                                       
  0x0e28c  bl       #0x16dc4                                        ; _objc_release
  0x0e290  adrp     x8, #0x19000                                  
  0x0e294  ldr      d0, [x8, #0xbb8]                              
  0x0e298  fadd     d0, d8, d0                                    
  0x0e29c  fabs     d0, d0                                        
  0x0e2a0  adrp     x8, #0x19000                                  
  0x0e2a4  ldr      d1, [x8, #0xbc0]                              
  0x0e2a8  fadd     d1, d9, d1                                    
  0x0e2ac  fabs     d1, d1                                        
  0x0e2b0  fmov     d2, #0.50000000                               
  0x0e2b4  fcmp     d0, d2                                        
  0x0e2b8  fccmp    d1, d2, #0, mi                                
  0x0e2bc  b.mi     #0xe2f4                                       
  0x0e2c0  adrp     x8, #0x25000                                  
  0x0e2c4  ldr      x2, [x8, #0x988]                              
  0x0e2c8  mov      x0, x20                                       
  0x0e2cc  mov      x1, x19                                       
  0x0e2d0  ldp      x29, x30, [sp, #0x30]                         
  0x0e2d4  ldp      x20, x19, [sp, #0x20]                         
  0x0e2d8  ldp      x22, x21, [sp, #0x10]                         
  0x0e2dc  ldp      d9, d8, [sp], #0x40                           
  0x0e2e0  autibsp                                                
  0x0e2e4  eor      x16, x30, x30, lsl #1                         
  0x0e2e8  tbz      x16, #0x3e, #0xe2f0                           
  0x0e2ec  brk      #0xc471                                       
