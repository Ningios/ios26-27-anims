CG27GenieDriver nativeLoadEngine: @0x9728  (150 insns)
types: v20@0:8B16
  0x09728  pacibsp                                                
  0x0972c  sub      sp, sp, #0x70                                 
  0x09730  stp      d13, d12, [sp, #0x10]                         
  0x09734  stp      d11, d10, [sp, #0x20]                         
  0x09738  stp      d9, d8, [sp, #0x30]                           
  0x0973c  stp      x22, x21, [sp, #0x40]                         
  0x09740  stp      x20, x19, [sp, #0x50]                         
  0x09744  stp      x29, x30, [sp, #0x60]                         
  0x09748  add      x29, sp, #0x60                                
  0x0974c  mov      x20, x2                                       
  0x09750  mov      x19, x0                                       
  0x09754  add      x22, x0, #0x228                               
  0x09758  adrp     x8, #0x25000                                  
  0x0975c  ldr      x0, [x8, #0x5e8]                              
  0x09760  bl       #0x17ec0                                        ; objc:mainScreen
  0x09764  mov      x29, x29                                      
  0x09768  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0976c  mov      x21, x0                                       
  0x09770  bl       #0x17460                                        ; objc:bounds
  0x09774  str      q2, [sp]                                      
  0x09778  fmov     d10, d3                                       
  0x0977c  mov      x0, x21                                       
  0x09780  bl       #0x16dc4                                        ; _objc_release
  0x09784  mov      x0, x19                                       
  0x09788  bl       #0x17a00                                        ; objc:icon
  0x0978c  fmov     d8, d0                                        
  0x09790  fmov     d9, d1                                        
  0x09794  fmov     d11, d2                                       
  0x09798  fmov     d12, d3                                       
  0x0979c  bl       #0x16af4                                        ; _CGRectGetMidX
  0x097a0  fmov     d13, d0                                       
  0x097a4  fmov     d0, d8                                        
  0x097a8  fmov     d1, d9                                        
  0x097ac  fmov     d2, d11                                       
  0x097b0  fmov     d3, d12                                       
  0x097b4  bl       #0x16b04                                        ; _CGRectGetMidY
  0x097b8  fmov     d12, d0                                       
  0x097bc  mov      x0, x19                                       
  0x097c0  bl       #0x18560                                        ; objc:response
  0x097c4  fmov     d8, d0                                        
  0x097c8  mov      x0, x19                                       
  0x097cc  bl       #0x195e0                                        ; objc:zeta
  0x097d0  fmov     d9, d0                                        
  0x097d4  mov      x0, x19                                       
  0x097d8  bl       #0x17940                                        ; objc:genieScale
  0x097dc  mov      x8, #0                                        
  0x097e0  fmov     d1, #0.50000000                               
  0x097e4  fmul     d2, d11, d1                                   
  0x097e8  fsub     d5, d13, d2                                   
  0x097ec  fadd     d2, d12, d12                                  
  0x097f0  fdiv     d2, d2, d10                                   
  0x097f4  fmov     d3, #-1.00000000                              
  0x097f8  fadd     d4, d2, d3                                    
  0x097fc  fmov     d2, #1.00000000                               
  0x09800  fcmp     d4, d2                                        
  0x09804  fcsel    d6, d2, d4, gt                                
  0x09808  fcmp     d4, d3                                        
  0x0980c  fcsel    d3, d3, d6, mi                                
  0x09810  fmov     d4, #0.75000000                               
  0x09814  fmul     d4, d3, d4                                    
  0x09818  fcmp     d3, #0.0                                      
  0x0981c  fcsel    d3, d3, d4, ge                                
  0x09820  fneg     d4, d3                                        
  0x09824  cmp      w20, #0                                       
  0x09828  fcsel    d6, d3, d4, ne                                
  0x0982c  fneg     d4, d6                                        
  0x09830  fcsel    d3, d3, d4, ne                                
  0x09834  fsub     d4, d2, d0                                    
  0x09838  movi     d7, #0000000000000000                         
  0x0983c  fcsel    d4, d4, d7, ne                                
  0x09840  ldr      q16, [sp]                                     
  0x09844  fdiv     d7, d11, d16                                  
  0x09848  mov      v5.d[1], v7.d[0]                              
  0x0984c  str      d0, [x19, #0x238]                             
  0x09850  mov      v16.d[1], v0.d[0]                             
  0x09854  fdiv     v5.2d, v5.2d, v16.2d                          
  0x09858  adrp     x9, #0x19000                                  
  0x0985c  ldr      q7, [x9, #0xd10]                              
  0x09860  fcmgt    v16.2d, v7.2d, v5.2d                          
  0x09864  adrp     x9, #0x19000                                  
  0x09868  ldr      q17, [x9, #0xd20]                             
  0x0986c  fcmgt    v18.2d, v5.2d, v17.2d                         
  0x09870  bit      v5.16b, v17.16b, v18.16b                      
  0x09874  bif      v7.16b, v5.16b, v16.16b                       
  0x09878  fcsel    d5, d7, d1, ne                                
  0x0987c  str      q7, [x22]                                     
  0x09880  strb     w20, [x19, #0x240]                            
  0x09884  adrp     x9, #0x19000                                  
  0x09888  ldr      d7, [x9, #0xb68]                              
  0x0988c  fcmp     d0, d7                                        
  0x09890  fmov     d0, #0.25000000                               
  0x09894  fcsel    d0, d0, d1, eq                                
  0x09898  fmul     d0, d0, d6                                    
  0x0989c  add      x9, x19, #0x1b8                               
  0x098a0  mov      w10, #0x128                                   
  0x098a4  fmov     d6, #-2.00000000                              
  0x098a8  mov      x11, #0                                       
  0x098ac  ucvtf    d16, w8, #1                                   
  0x098b0  fsqrt    d7, d16                                       
  0x098b4  fsub     d17, d2, d16                                  
  0x098b8  fsqrt    d17, d17                                      
  0x098bc  fsub     d17, d2, d17                                  
  0x098c0  fcmp     d3, #0.0                                      
  0x098c4  fcsel    d7, d17, d7, lt                               
  0x098c8  fmadd    d7, d7, d6, d2                                
  0x098cc  fmadd    d7, d0, d7, d2                                
  0x098d0  fmul     d7, d8, d7                                    
  0x098d4  fsub     d17, d1, d16                                  
  0x098d8  fmadd    d16, d4, d17, d16                             
  0x098dc  mov      x12, x10                                      
  0x098e0  ucvtf    d17, w11, #1                                  
  0x098e4  fsub     d18, d5, d17                                  
  0x098e8  fmadd    d17, d4, d18, d17                             
  0x098ec  add      x13, x19, x12                                 
  0x098f0  stp      d17, d16, [x13]                               
  0x098f4  str      d7, [x9, x11, lsl #3]                         
  0x098f8  add      x11, x11, #1                                  
  0x098fc  add      x12, x12, #0x10                               
  0x09900  cmp      x11, #3                                       
  0x09904  b.ne     #0x98e0                                       
  0x09908  add      x8, x8, #1                                    
  0x0990c  add      x9, x9, #0x18                                 
  0x09910  add      x10, x10, #0x30                               
  0x09914  cmp      x8, #3                                        
  0x09918  b.ne     #0x98a8                                       
  0x0991c  ucvtf    d0, w20                                       
  0x09920  str      d0, [x19, #0x210]                             
  0x09924  str      d8, [x19, #0x218]                             
  0x09928  str      d9, [x19, #0x220]                             
  0x0992c  add      x0, x19, #0x2dc                               
  0x09930  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x09934  ldr      q0, [x22]                                     
  0x09938  str      q0, [x22, #0xd0]                              
  0x0993c  ldr      d0, [x19, #0x238]                             
  0x09940  str      d0, [x19, #0x308]                             
  0x09944  mov      x0, x19                                       
  0x09948  bl       #0x17c20                                        ; objc:intensity
  0x0994c  str      d0, [x19, #0x310]                             
  0x09950  add      x0, x19, #0x2dc                               
  0x09954  ldp      x29, x30, [sp, #0x60]                         
  0x09958  ldp      x20, x19, [sp, #0x50]                         
  0x0995c  ldp      x22, x21, [sp, #0x40]                         
  0x09960  ldp      d9, d8, [sp, #0x30]                           
  0x09964  ldp      d11, d10, [sp, #0x20]                         
  0x09968  ldp      d13, d12, [sp, #0x10]                         
  0x0996c  add      sp, sp, #0x70                                 
  0x09970  autibsp                                                
  0x09974  eor      x16, x30, x30, lsl #1                         
  0x09978  tbz      x16, #0x3e, #0x9980                           
  0x0997c  brk      #0xc471                                       
