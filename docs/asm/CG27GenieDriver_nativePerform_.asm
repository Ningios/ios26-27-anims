CG27GenieDriver nativePerform: @0x9f04  (122 insns)
types: v20@0:8B16
  0x09f04  pacibsp                                                
  0x09f08  sub      sp, sp, #0xc0                                 
  0x09f0c  stp      d9, d8, [sp, #0x50]                           
  0x09f10  stp      x28, x27, [sp, #0x60]                         
  0x09f14  stp      x26, x25, [sp, #0x70]                         
  0x09f18  stp      x24, x23, [sp, #0x80]                         
  0x09f1c  stp      x22, x21, [sp, #0x90]                         
  0x09f20  stp      x20, x19, [sp, #0xa0]                         
  0x09f24  stp      x29, x30, [sp, #0xb0]                         
  0x09f28  add      x29, sp, #0xb0                                
  0x09f2c  mov      x20, x2                                       
  0x09f30  mov      x19, x0                                       
  0x09f34  bl       #0x18d40                                        ; objc:setNativeActive:
  0x09f38  mov      x0, x19                                       
  0x09f3c  mov      x2, x20                                       
  0x09f40  bl       #0x180c0                                        ; objc:nativeLoadEngine:
  0x09f44  ldr      x0, [x19, #0x2f0]                             
  0x09f48  bl       #0x16dd4                                        ; _objc_retain
  0x09f4c  mov      x20, x0                                       
  0x09f50  bl       #0x17660                                        ; objc:count
  0x09f54  cmp      x0, #0x13                                     
  0x09f58  b.ne     #0xa0c0                                       
  0x09f5c  add      x28, x19, #0x1b8                              
  0x09f60  adrp     x8, #0x25000                                  
  0x09f64  ldr      x8, [x8, #0x410]                              
  0x09f68  str      x8, [sp, #8]                                  
  0x09f6c  add      x23, x19, #0x128                              
  0x09f70  add      x8, sp, #0x10                                 
  0x09f74  add      x21, x8, #0x10                                
  0x09f78  mov      w22, #1                                       
  0x09f7c  adrp     x8, #0x19000                                  
  0x09f80  ldr      d8, [x8, #0xb40]                              
  0x09f84  adrp     x8, #0x25000                                  
  0x09f88  ldr      x0, [x8, #0xa70]                              
  0x09f8c  cbnz     x0, #0x9fa4                                   
  0x09f90  adrp     x0, #0x1a000                                  
  0x09f94  add      x0, x0, #0x59f                                
  0x09f98  bl       #0x16d44                                        ; _objc_getClass
  0x09f9c  adrp     x8, #0x25000                                  
  0x09fa0  str      x0, [x8, #0xa70]                              
  0x09fa4  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x09fa8  bl       #0x16cb4                                        ; _objc_alloc
  0x09fac  bl       #0x17b40                                        ; objc:initWithDefaultValues
  0x09fb0  mov      x24, x0                                       
  0x09fb4  ldr      d0, [x19, #0x220]                             
  0x09fb8  bl       #0x18960                                        ; objc:setDampingRatio:
  0x09fbc  ldr      d0, [x28]                                     
  0x09fc0  mov      x0, x24                                       
  0x09fc4  bl       #0x18f00                                        ; objc:setResponse:
  0x09fc8  mov      x0, x24                                       
  0x09fcc  ldr      x1, [sp, #8]                                  
  0x09fd0  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x09fd4  tbz      w0, #0, #0x9fe4                               
  0x09fd8  movi     d0, #0000000000000000                         
  0x09fdc  mov      x0, x24                                       
  0x09fe0  bl       #0x18f20                                        ; objc:setRetargetImpulse:
  0x09fe4  sub      x2, x22, #1                                   
  0x09fe8  mov      x0, x20                                       
  0x09fec  bl       #0x18200                                        ; objc:objectAtIndexedSubscript:
  0x09ff0  mov      x29, x29                                      
  0x09ff4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x09ff8  mov      x25, x0                                       
  0x09ffc  mov      x0, x20                                       
  0x0a000  mov      x2, x22                                       
  0x0a004  bl       #0x18200                                        ; objc:objectAtIndexedSubscript:
  0x0a008  mov      x29, x29                                      
  0x0a00c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0a010  adrp     x8, #0x25000                                  
  0x0a014  ldr      x26, [x8, #0x658]                             
  0x0a018  add      x8, sp, #0x10                                 
  0x0a01c  adrp     x16, #0x20000                                 
  0x0a020  ldr      x16, [x16, #0x318]                            
  0x0a024  mov      x17, x8                                       
  0x0a028  movk     x17, #0x6ae1, lsl #48                         
  0x0a02c  pacda    x16, x17                                      
  0x0a030  str      x16, [sp, #0x10]                              
  0x0a034  str      d8, [sp, #0x18]                               
  0x0a038  adrp     x16, #0xa000                                  
  0x0a03c  add      x16, x16, #0xec                               
  0x0a040  pacia    x16, x21                                      
  0x0a044  adrp     x8, #0x20000                                  
  0x0a048  add      x8, x8, #0x3c0                                
  0x0a04c  stp      x16, x8, [sp, #0x20]                          
  0x0a050  stp      x25, x0, [sp, #0x30]                          
  0x0a054  ldr      q0, [x23], #0x10                              
  0x0a058  str      q0, [sp, #0x40]                               
  0x0a05c  bl       #0x16dd4                                        ; _objc_retain
  0x0a060  mov      x27, x0                                       
  0x0a064  mov      x0, x25                                       
  0x0a068  bl       #0x16dd4                                        ; _objc_retain
  0x0a06c  mov      x25, x0                                       
  0x0a070  add      x4, sp, #0x10                                 
  0x0a074  mov      x0, x26                                       
  0x0a078  mov      x2, x24                                       
  0x0a07c  mov      w3, #3                                        
  0x0a080  mov      x5, #0                                        
  0x0a084  bl       #0x18660                                        ; objc:sb_animateWithSettings:mode:animations:completion:
  0x0a088  ldr      x0, [sp, #0x38]                               
  0x0a08c  bl       #0x16dc4                                        ; _objc_release
  0x0a090  ldr      x0, [sp, #0x30]                               
  0x0a094  bl       #0x16dc4                                        ; _objc_release
  0x0a098  mov      x0, x27                                       
  0x0a09c  bl       #0x16dc4                                        ; _objc_release
  0x0a0a0  mov      x0, x25                                       
  0x0a0a4  bl       #0x16dc4                                        ; _objc_release
  0x0a0a8  mov      x0, x24                                       
  0x0a0ac  bl       #0x16dc4                                        ; _objc_release
  0x0a0b0  add      x28, x28, #8                                  
  0x0a0b4  add      x22, x22, #2                                  
  0x0a0b8  cmp      x22, #0x13                                    
  0x0a0bc  b.ne     #0x9f84                                       
  0x0a0c0  mov      x0, x20                                       
  0x0a0c4  bl       #0x16dc4                                        ; _objc_release
  0x0a0c8  ldp      x29, x30, [sp, #0xb0]                         
  0x0a0cc  ldp      x20, x19, [sp, #0xa0]                         
  0x0a0d0  ldp      x22, x21, [sp, #0x90]                         
  0x0a0d4  ldp      x24, x23, [sp, #0x80]                         
  0x0a0d8  ldp      x26, x25, [sp, #0x70]                         
  0x0a0dc  ldp      x28, x27, [sp, #0x60]                         
  0x0a0e0  ldp      d9, d8, [sp, #0x50]                           
  0x0a0e4  add      sp, sp, #0xc0                                 
  0x0a0e8  retab                                                  
