HOOK SBFullScreenToHomeIconZoomSwitcherModifier -cornerRadiiForIndex: @0xcea4  (150 insns)
  0x0cea4  pacibsp                                                
  0x0cea8  sub      sp, sp, #0x90                                 
  0x0ceac  stp      d15, d14, [sp, #0x10]                         
  0x0ceb0  stp      d13, d12, [sp, #0x20]                         
  0x0ceb4  stp      d11, d10, [sp, #0x30]                         
  0x0ceb8  stp      d9, d8, [sp, #0x40]                           
  0x0cebc  stp      x24, x23, [sp, #0x50]                         
  0x0cec0  stp      x22, x21, [sp, #0x60]                         
  0x0cec4  stp      x20, x19, [sp, #0x70]                         
  0x0cec8  stp      x29, x30, [sp, #0x80]                         
  0x0cecc  add      x29, sp, #0x80                                
  0x0ced0  mov      x19, x2                                       
  0x0ced4  mov      x20, x0                                       
  0x0ced8  adrp     x8, #0x25000                                  
  0x0cedc  ldr      x8, [x8, #0x8e0]                              
  0x0cee0  blraaz   x8                                            
  0x0cee4  fmov     d8, d0                                        
  0x0cee8  fmov     d9, d1                                        
  0x0ceec  fmov     d10, d2                                       
  0x0cef0  fmov     d11, d3                                       
  0x0cef4  bl       #0x73d4                                         ; sub_73d4
  0x0cef8  cbz      w0, #0xd0c4                                   
  0x0cefc  mov      x0, x20                                       
  0x0cf00  mov      x2, x19                                       
  0x0cf04  bl       #0x16f80                                        ; objc:_isIndexZoomAppLayout:
  0x0cf08  cbz      w0, #0xd0c4                                   
  0x0cf0c  mov      x0, x20                                       
  0x0cf10  bl       #0x109c0                                        ; sub_109c0
  0x0cf14  tbnz     w0, #0, #0xd0c4                               
  0x0cf18  adrp     x1, #0x1a000                                  
  0x0cf1c  add      x1, x1, #0x155                                
  0x0cf20  mov      x0, x20                                       
  0x0cf24  bl       #0x801c                                         ; sub_801c
  0x0cf28  cmp      x0, #2                                        
  0x0cf2c  b.ne     #0xd0c4                                       
  0x0cf30  adrp     x8, #0x25000                                  
  0x0cf34  ldr      x1, [x8, #0x860]                              
  0x0cf38  mov      x0, x20                                       
  0x0cf3c  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0cf40  mov      x29, x29                                      
  0x0cf44  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0cf48  mov      x21, x0                                       
  0x0cf4c  bl       #0x16dc4                                        ; _objc_release
  0x0cf50  cbnz     x21, #0xd0c4                                  
  0x0cf54  adrp     x8, #0x25000                                  
  0x0cf58  ldr      x1, [x8, #0x858]                              
  0x0cf5c  mov      x0, x20                                       
  0x0cf60  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0cf64  mov      x29, x29                                      
  0x0cf68  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0cf6c  mov      x21, x0                                       
  0x0cf70  adrp     x1, #0x1a000                                  
  0x0cf74  add      x1, x1, #0x5b8                                
  0x0cf78  mov      x0, x20                                       
  0x0cf7c  bl       #0x801c                                         ; sub_801c
  0x0cf80  cmp      x0, #1                                        
  0x0cf84  cset     w23, eq                                       
  0x0cf88  bl       #0x16be4                                        ; _UIAnimationDragCoefficient
  0x0cf8c  fcvt     d1, s0                                        
  0x0cf90  fmov     x8, d1                                        
  0x0cf94  and      x8, x8, #0x7fffffffffffffff                   
  0x0cf98  fcmp     s0, #0.0                                      
  0x0cf9c  mov      x22, #0x7ff0000000000000                      
  0x0cfa0  ccmp     x8, x22, #0, gt                               
  0x0cfa4  fmov     d13, #1.00000000                              
  0x0cfa8  fcsel    d12, d1, d13, lt                              
  0x0cfac  adrp     x8, #0x25000                                  
  0x0cfb0  ldr      x0, [x8, #0x628]                              
  0x0cfb4  bl       #0x16d84                                        ; _objc_opt_class
  0x0cfb8  mov      x1, x0                                        
  0x0cfbc  mov      x0, x21                                       
  0x0cfc0  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0cfc4  tbz      w0, #0, #0xd010                               
  0x0cfc8  mov      x0, x21                                       
  0x0cfcc  bl       #0x177c0                                        ; objc:doubleValue
  0x0cfd0  fcmp     d0, d13                                       
  0x0cfd4  b.le     #0xd010                                       
  0x0cfd8  adrp     x8, #0x19000                                  
  0x0cfdc  add      x8, x8, #0xd30                                
  0x0cfe0  ldr      d0, [x8, w23, uxtw #3]                        
  0x0cfe4  fmul     d13, d0, d12                                  
  0x0cfe8  bl       #0x16974                                        ; _CACurrentMediaTime
  0x0cfec  fmov     d12, d0                                       
  0x0cff0  mov      x0, x21                                       
  0x0cff4  bl       #0x177c0                                        ; objc:doubleValue
  0x0cff8  fsub     d0, d12, d0                                   
  0x0cffc  adrp     x8, #0x19000                                  
  0x0d000  ldr      d1, [x8, #0xac0]                              
  0x0d004  fadd     d1, d13, d1                                   
  0x0d008  fcmp     d0, d1                                        
  0x0d00c  b.gt     #0xd0bc                                       
  0x0d010  mov      x0, x20                                       
  0x0d014  mov      x2, x19                                       
  0x0d018  bl       #0x178c0                                        ; objc:frameForIndex:
  0x0d01c  str      d0, [sp, #8]                                  
  0x0d020  fmov     d13, d1                                       
  0x0d024  fmov     d14, d2                                       
  0x0d028  fmov     d15, d3                                       
  0x0d02c  bl       #0x16b34                                        ; _CGRectGetWidth
  0x0d030  fmov     d12, d0                                       
  0x0d034  ldr      d0, [sp, #8]                                  
  0x0d038  fmov     d1, d13                                       
  0x0d03c  fmov     d2, d14                                       
  0x0d040  fmov     d3, d15                                       
  0x0d044  bl       #0x16ad4                                        ; _CGRectGetHeight
  0x0d048  fcmp     d12, d0                                       
  0x0d04c  fcsel    d0, d12, d0, mi                               
  0x0d050  fmov     d1, #0.50000000                               
  0x0d054  fmul     d0, d0, d1                                    
  0x0d058  fmov     x8, d0                                        
  0x0d05c  ands     x9, x8, #0x7fffffffffffffff                   
  0x0d060  sub      x10, x9, #1                                   
  0x0d064  mov      x11, #0xfffffffffffff                         
  0x0d068  cmp      x10, x11                                      
  0x0d06c  cset     w10, lo                                       
  0x0d070  mov      x11, #-0x10000000000000                       
  0x0d074  add      x9, x9, x11                                   
  0x0d078  lsr      x9, x9, #0x35                                 
  0x0d07c  cmp      x9, #0x3ff                                    
  0x0d080  cset     w9, lo                                        
  0x0d084  cmp      x8, #0                                        
  0x0d088  csel     w9, wzr, w9, ge                               
  0x0d08c  csel     w10, wzr, w10, ge                             
  0x0d090  ands     x8, x8, #0x7fffffffffffffff                   
  0x0d094  csinc    w10, w10, wzr, ne                             
  0x0d098  cmp      x8, x22                                       
  0x0d09c  csinc    w8, w10, wzr, ne                              
  0x0d0a0  csinc    w8, w8, wzr, le                               
  0x0d0a4  orr      w8, w8, w9                                    
  0x0d0a8  cmp      w8, #0                                        
  0x0d0ac  fcsel    d8, d8, d0, ne                                
  0x0d0b0  fcsel    d9, d9, d0, ne                                
  0x0d0b4  fcsel    d10, d10, d0, ne                              
  0x0d0b8  fcsel    d11, d11, d0, ne                              
  0x0d0bc  mov      x0, x21                                       
  0x0d0c0  bl       #0x16dc4                                        ; _objc_release
  0x0d0c4  fmov     d0, d8                                        
  0x0d0c8  fmov     d1, d9                                        
  0x0d0cc  fmov     d2, d10                                       
  0x0d0d0  fmov     d3, d11                                       
  0x0d0d4  ldp      x29, x30, [sp, #0x80]                         
  0x0d0d8  ldp      x20, x19, [sp, #0x70]                         
  0x0d0dc  ldp      x22, x21, [sp, #0x60]                         
  0x0d0e0  ldp      x24, x23, [sp, #0x50]                         
  0x0d0e4  ldp      d9, d8, [sp, #0x40]                           
  0x0d0e8  ldp      d11, d10, [sp, #0x30]                         
  0x0d0ec  ldp      d13, d12, [sp, #0x20]                         
  0x0d0f0  ldp      d15, d14, [sp, #0x10]                         
  0x0d0f4  add      sp, sp, #0x90                                 
  0x0d0f8  retab                                                  
