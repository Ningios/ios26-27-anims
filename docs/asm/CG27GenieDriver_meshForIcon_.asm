CG27GenieDriver meshForIcon: @0x83b0  (204 insns)
types: @24@0:8@16
  0x083b0  pacibsp                                                
  0x083b4  sub      sp, sp, #0x110                                
  0x083b8  stp      d15, d14, [sp, #0x70]                         
  0x083bc  stp      d13, d12, [sp, #0x80]                         
  0x083c0  stp      d11, d10, [sp, #0x90]                         
  0x083c4  stp      d9, d8, [sp, #0xa0]                           
  0x083c8  stp      x28, x27, [sp, #0xb0]                         
  0x083cc  stp      x26, x25, [sp, #0xc0]                         
  0x083d0  stp      x24, x23, [sp, #0xd0]                         
  0x083d4  stp      x22, x21, [sp, #0xe0]                         
  0x083d8  stp      x20, x19, [sp, #0xf0]                         
  0x083dc  stp      x29, x30, [sp, #0x100]                        
  0x083e0  add      x29, sp, #0x100                               
  0x083e4  mov      x22, x0                                       
  0x083e8  mov      x0, x2                                        
  0x083ec  bl       #0x16dd4                                        ; _objc_retain
  0x083f0  mov      x19, x0                                       
  0x083f4  mov      x0, x22                                       
  0x083f8  bl       #0x17020                                        ; objc:accessory
  0x083fc  mov      x29, x29                                      
  0x08400  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08404  mov      x20, x0                                       
  0x08408  bl       #0x17dc0                                        ; objc:layer
  0x0840c  mov      x29, x29                                      
  0x08410  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08414  mov      x23, x0                                       
  0x08418  bl       #0x18360                                        ; objc:presentationLayer
  0x0841c  mov      x29, x29                                      
  0x08420  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08424  mov      x24, x0                                       
  0x08428  cbz      x0, #0x8438                                   
  0x0842c  mov      x0, x24                                       
  0x08430  bl       #0x16dd4                                        ; _objc_retain
  0x08434  b        #0x8448                                         ; sub_8448
  0x08438  mov      x0, x20                                       
  0x0843c  bl       #0x17dc0                                        ; objc:layer
  0x08440  mov      x29, x29                                      
  0x08444  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08448  mov      x21, x0                                       
  0x0844c  mov      x0, x24                                       
  0x08450  bl       #0x16dc4                                        ; _objc_release
  0x08454  mov      x0, x23                                       
  0x08458  bl       #0x16dc4                                        ; _objc_release
  0x0845c  mov      x0, x19                                       
  0x08460  bl       #0x17dc0                                        ; objc:layer
  0x08464  mov      x29, x29                                      
  0x08468  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0846c  mov      x24, x0                                       
  0x08470  bl       #0x18360                                        ; objc:presentationLayer
  0x08474  mov      x29, x29                                      
  0x08478  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0847c  mov      x25, x0                                       
  0x08480  cbz      x0, #0x8490                                   
  0x08484  mov      x0, x25                                       
  0x08488  bl       #0x16dd4                                        ; _objc_retain
  0x0848c  b        #0x84a0                                         ; sub_84a0
  0x08490  mov      x0, x19                                       
  0x08494  bl       #0x17dc0                                        ; objc:layer
  0x08498  mov      x29, x29                                      
  0x0849c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x084a0  mov      x23, x0                                       
  0x084a4  mov      x0, x25                                       
  0x084a8  bl       #0x16dc4                                        ; _objc_release
  0x084ac  mov      x0, x24                                       
  0x084b0  bl       #0x16dc4                                        ; _objc_release
  0x084b4  mov      x0, x21                                       
  0x084b8  bl       #0x17460                                        ; objc:bounds
  0x084bc  fmov     d8, d0                                        
  0x084c0  fmov     d9, d1                                        
  0x084c4  fmov     d10, d2                                       
  0x084c8  fmov     d11, d3                                       
  0x084cc  mov      x0, x23                                       
  0x084d0  bl       #0x17460                                        ; objc:bounds
  0x084d4  fmov     d12, d0                                       
  0x084d8  mov      x24, #0                                       
  0x084dc  fmov     d0, #1.00000000                               
  0x084e0  fcmp     d10, d0                                       
  0x084e4  b.mi     #0x8680                                       
  0x084e8  fcmp     d11, d0                                       
  0x084ec  b.mi     #0x8680                                       
  0x084f0  fmov     d14, d2                                       
  0x084f4  fcmp     d2, d0                                        
  0x084f8  b.mi     #0x8680                                       
  0x084fc  fmov     d15, d3                                       
  0x08500  fcmp     d3, d0                                        
  0x08504  b.mi     #0x8680                                       
  0x08508  fmov     d13, d1                                       
  0x0850c  stp      d10, d9, [sp]                                 
  0x08510  str      d8, [sp, #0x10]                               
  0x08514  adrp     x24, #0x25000                                 
  0x08518  ldr      x0, [x24, #0xa60]                             
  0x0851c  cbnz     x0, #0x8530                                   
  0x08520  adrp     x0, #0x1a000                                  
  0x08524  add      x0, x0, #0x56a                                
  0x08528  bl       #0x16d44                                        ; _objc_getClass
  0x0852c  str      x0, [x24, #0xa60]                             
  0x08530  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x08534  bl       #0x17fa0                                        ; objc:meshTransform
  0x08538  mov      x29, x29                                      
  0x0853c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08540  mov      x24, x0                                       
  0x08544  mov      x2, #-1                                       
  0x08548  bl       #0x19000                                        ; objc:setSubdivisionSteps:
  0x0854c  mov      w25, #0                                       
  0x08550  movi     d0, #0000000000000000                         
  0x08554  fmov     d1, #0.25000000                               
  0x08558  stp      d13, d15, [sp, #0x30]                         
  0x0855c  str      d0, [sp, #0x18]                               
  0x08560  fmul     d0, d0, d1                                    
  0x08564  str      d0, [sp, #0x28]                               
  0x08568  fmadd    d0, d0, d15, d13                              
  0x0856c  str      d0, [sp, #0x20]                               
  0x08570  mov      w26, #5                                       
  0x08574  movi     d8, #0000000000000000                         
  0x08578  ldp      d15, d9, [sp, #8]                             
  0x0857c  ldr      d10, [sp]                                     
  0x08580  fmul     d13, d8, d1                                   
  0x08584  fmadd    d0, d13, d14, d12                             
  0x08588  mov      x0, x23                                       
  0x0858c  ldr      d1, [sp, #0x20]                               
  0x08590  mov      x2, x21                                       
  0x08594  bl       #0x17540                                        ; objc:convertPoint:toLayer:
  0x08598  fsub     d0, d0, d9                                    
  0x0859c  fdiv     d0, d0, d10                                   
  0x085a0  fsub     d1, d1, d15                                   
  0x085a4  fdiv     d1, d1, d11                                   
  0x085a8  mov      x0, x22                                       
  0x085ac  bl       #0x17720                                        ; objc:deformAccessoryPoint:
  0x085b0  fmadd    d0, d0, d10, d9                               
  0x085b4  fmadd    d1, d1, d11, d15                              
  0x085b8  mov      x0, x21                                       
  0x085bc  mov      x2, x23                                       
  0x085c0  bl       #0x17540                                        ; objc:convertPoint:toLayer:
  0x085c4  fsub     d0, d0, d12                                   
  0x085c8  fdiv     d0, d0, d14                                   
  0x085cc  ldp      d2, d3, [sp, #0x28]                           
  0x085d0  fsub     d1, d1, d3                                    
  0x085d4  stp      d13, d2, [sp, #0x40]                          
  0x085d8  ldr      d2, [sp, #0x38]                               
  0x085dc  fdiv     d1, d1, d2                                    
  0x085e0  stp      d0, d1, [sp, #0x50]                           
  0x085e4  str      xzr, [sp, #0x60]                              
  0x085e8  add      x2, sp, #0x40                                 
  0x085ec  mov      x0, x24                                       
  0x085f0  bl       #0x17140                                        ; objc:addVertex:
  0x085f4  fmov     d2, #1.00000000                               
  0x085f8  fmov     d1, #0.25000000                               
  0x085fc  fadd     d8, d8, d2                                    
  0x08600  subs     w26, w26, #1                                  
  0x08604  b.ne     #0x8580                                       
  0x08608  ldr      d0, [sp, #0x18]                               
  0x0860c  fadd     d0, d0, d2                                    
  0x08610  add      w25, w25, #1                                  
  0x08614  cmp      w25, #5                                       
  0x08618  ldp      d13, d15, [sp, #0x30]                         
  0x0861c  b.ne     #0x855c                                       
  0x08620  mov      w22, #0                                       
  0x08624  add      x25, sp, #0x40                                
  0x08628  mov      w26, #1                                       
  0x0862c  adrp     x8, #0x19000                                  
  0x08630  ldr      d8, [x8, #0xb38]                              
  0x08634  mov      w27, #4                                       
  0x08638  mov      x28, x22                                      
  0x0863c  add      w8, w28, #5                                   
  0x08640  dup      v0.2s, w28                                    
  0x08644  str      w28, [sp, #0x40]                              
  0x08648  add      v0.2s, v0.2s, v8.2s                           
  0x0864c  stur     d0, [sp, #0x44]                               
  0x08650  str      w8, [sp, #0x4c]                               
  0x08654  stp      xzr, xzr, [x25, #0x10]                        
  0x08658  add      x2, sp, #0x40                                 
  0x0865c  mov      x0, x24                                       
  0x08660  bl       #0x170a0                                        ; objc:addFace:
  0x08664  add      w28, w28, #1                                  
  0x08668  subs     w27, w27, #1                                  
  0x0866c  b.ne     #0x863c                                       
  0x08670  add      w26, w26, #1                                  
  0x08674  add      w22, w22, #5                                  
  0x08678  cmp      w26, #5                                       
  0x0867c  b.ne     #0x8634                                       
  0x08680  mov      x0, x23                                       
  0x08684  bl       #0x16dc4                                        ; _objc_release
  0x08688  mov      x0, x21                                       
  0x0868c  bl       #0x16dc4                                        ; _objc_release
  0x08690  mov      x0, x20                                       
  0x08694  bl       #0x16dc4                                        ; _objc_release
  0x08698  mov      x0, x19                                       
  0x0869c  bl       #0x16dc4                                        ; _objc_release
  0x086a0  mov      x0, x24                                       
  0x086a4  ldp      x29, x30, [sp, #0x100]                        
  0x086a8  ldp      x20, x19, [sp, #0xf0]                         
  0x086ac  ldp      x22, x21, [sp, #0xe0]                         
  0x086b0  ldp      x24, x23, [sp, #0xd0]                         
  0x086b4  ldp      x26, x25, [sp, #0xc0]                         
  0x086b8  ldp      x28, x27, [sp, #0xb0]                         
  0x086bc  ldp      d9, d8, [sp, #0xa0]                           
  0x086c0  ldp      d11, d10, [sp, #0x90]                         
  0x086c4  ldp      d13, d12, [sp, #0x80]                         
  0x086c8  ldp      d15, d14, [sp, #0x70]                         
  0x086cc  add      sp, sp, #0x110                                
  0x086d0  autibsp                                                
  0x086d4  eor      x16, x30, x30, lsl #1                         
  0x086d8  tbz      x16, #0x3e, #0x86e0                           
  0x086dc  brk      #0xc471                                       
