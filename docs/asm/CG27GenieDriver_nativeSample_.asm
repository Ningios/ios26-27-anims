CG27GenieDriver nativeSample: @0xa8a0  (560 insns)
types: v24@0:8d16
  0x0a8a0  pacibsp                                                
  0x0a8a4  stp      d15, d14, [sp, #-0xa0]!                       
  0x0a8a8  stp      d13, d12, [sp, #0x10]                         
  0x0a8ac  stp      d11, d10, [sp, #0x20]                         
  0x0a8b0  stp      d9, d8, [sp, #0x30]                           
  0x0a8b4  stp      x28, x27, [sp, #0x40]                         
  0x0a8b8  stp      x26, x25, [sp, #0x50]                         
  0x0a8bc  stp      x24, x23, [sp, #0x60]                         
  0x0a8c0  stp      x22, x21, [sp, #0x70]                         
  0x0a8c4  stp      x20, x19, [sp, #0x80]                         
  0x0a8c8  stp      x29, x30, [sp, #0x90]                         
  0x0a8cc  add      x29, sp, #0x90                                
  0x0a8d0  sub      sp, sp, #0x1d0                                
  0x0a8d4  fmov     d10, d0                                       
  0x0a8d8  mov      x20, x0                                       
  0x0a8dc  adrp     x8, #0x20000                                  
  0x0a8e0  ldr      x8, [x8, #0x320]                              
  0x0a8e4  ldr      x8, [x8]                                      
  0x0a8e8  stur     x8, [x29, #-0xa0]                             
  0x0a8ec  ldr      x0, [x0, #0x2f0]                              
  0x0a8f0  bl       #0x16dd4                                        ; _objc_retain
  0x0a8f4  mov      x19, x0                                       
  0x0a8f8  bl       #0x17660                                        ; objc:count
  0x0a8fc  cmp      x0, #0x13                                     
  0x0a900  b.ne     #0xb110                                       
  0x0a904  mov      x22, #0                                       
  0x0a908  ldr      d0, [x20, #0x3b8]                             
  0x0a90c  fsub     d8, d10, d0                                   
  0x0a910  fcmp     d0, #0.0                                      
  0x0a914  cset     w8, eq                                        
  0x0a918  fcmp     d8, #0.0                                      
  0x0a91c  csinc    w24, w8, wzr, hi                              
  0x0a920  add      x21, x20, #8                                  
  0x0a924  add      x25, x20, #0x98                               
  0x0a928  mov      x0, x19                                       
  0x0a92c  mov      x2, x22                                       
  0x0a930  bl       #0x18200                                        ; objc:objectAtIndexedSubscript:
  0x0a934  mov      x29, x29                                      
  0x0a938  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0a93c  mov      x23, x0                                       
  0x0a940  bl       #0x18380                                        ; objc:presentationValue
  0x0a944  fmov     d9, d0                                        
  0x0a948  mov      x0, x23                                       
  0x0a94c  bl       #0x16dc4                                        ; _objc_release
  0x0a950  movi     d0, #0000000000000000                         
  0x0a954  add      x8, x20, x22, lsl #3                          
  0x0a958  tbnz     w24, #0, #0xa968                              
  0x0a95c  ldr      d0, [x8, #0x320]                              
  0x0a960  fsub     d0, d9, d0                                    
  0x0a964  fdiv     d0, d0, d8                                    
  0x0a968  str      d9, [x8, #0x320]                              
  0x0a96c  cmp      x22, #0x12                                    
  0x0a970  b.eq     #0xa994                                       
  0x0a974  ubfx     x8, x22, #1, #0x1f                            
  0x0a978  add      x9, x21, x8, lsl #4                           
  0x0a97c  ubfiz    x10, x22, #3, #1                              
  0x0a980  str      d9, [x9, x10]                                 
  0x0a984  add      x8, x25, x8, lsl #4                           
  0x0a988  add      x22, x22, #1                                  
  0x0a98c  str      d0, [x8, x10]                                 
  0x0a990  b        #0xa928                                         ; sub_a928
  0x0a994  str      d9, [x20, #0x200]                             
  0x0a998  str      d0, [x20, #0x208]                             
  0x0a99c  mov      x0, x19                                       
  0x0a9a0  mov      w2, #0x12                                     
  0x0a9a4  bl       #0x18200                                        ; objc:objectAtIndexedSubscript:
  0x0a9a8  mov      x29, x29                                      
  0x0a9ac  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0a9b0  mov      x22, x0                                       
  0x0a9b4  bl       #0x194e0                                        ; objc:value
  0x0a9b8  str      d0, [x20, #0x210]                             
  0x0a9bc  mov      x0, x22                                       
  0x0a9c0  bl       #0x16dc4                                        ; _objc_release
  0x0a9c4  str      d10, [x20, #0x3b8]                            
  0x0a9c8  add      x3, x20, #0x248                               
  0x0a9cc  mov      x0, x20                                       
  0x0a9d0  mov      x2, x21                                       
  0x0a9d4  bl       #0x17800                                        ; objc:engine:xy:
  0x0a9d8  mov      w8, #1                                        
  0x0a9dc  strb     w8, [x20, #0x2d8]                             
  0x0a9e0  ldr      d0, [x20, #0x200]                             
  0x0a9e4  mov      x0, x20                                       
  0x0a9e8  bl       #0x18ee0                                        ; objc:setRenderedB:
  0x0a9ec  mov      x0, x20                                       
  0x0a9f0  bl       #0x18020                                        ; objc:movingGrabbers
  0x0a9f4  mov      x29, x29                                      
  0x0a9f8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0a9fc  mov      x21, x0                                       
  0x0aa00  bl       #0x17660                                        ; objc:count
  0x0aa04  mov      x22, x0                                       
  0x0aa08  mov      x0, x21                                       
  0x0aa0c  bl       #0x16dc4                                        ; _objc_release
  0x0aa10  cbz      x22, #0xaec8                                  
  0x0aa14  str      d10, [sp]                                     
  0x0aa18  adrp     x8, #0x25000                                  
  0x0aa1c  ldr      x0, [x8, #0x620]                              
  0x0aa20  bl       #0x17300                                        ; objc:array
  0x0aa24  mov      x29, x29                                      
  0x0aa28  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0aa2c  mov      x21, x0                                       
  0x0aa30  mov      w23, #0                                       
  0x0aa34  ldr      d13, [x20, #0x200]                            
  0x0aa38  ldr      d11, [x20, #0x208]                            
  0x0aa3c  adrp     x24, #0x25000                                 
  0x0aa40  fmov     d10, #1.00000000                              
  0x0aa44  fmov     d15, #-0.25000000                             
  0x0aa48  adrp     x8, #0x19000                                  
  0x0aa4c  ldr      d9, [x8, #0xb70]                              
  0x0aa50  movi     d12, #0000000000000000                        
  0x0aa54  mov      x25, #0xfffffffffffff                         
  0x0aa58  mov      x26, #-0x10000000000000                       
  0x0aa5c  mov      x27, #0x7ff0000000000000                      
  0x0aa60  adrp     x8, #0x19000                                  
  0x0aa64  ldr      d0, [x8, #0xb10]                              
  0x0aa68  str      d0, [sp, #0x30]                               
  0x0aa6c  adrp     x8, #0x19000                                  
  0x0aa70  ldr      d0, [x8, #0xb18]                              
  0x0aa74  str      d0, [sp, #0x28]                               
  0x0aa78  adrp     x8, #0x19000                                  
  0x0aa7c  ldr      d0, [x8, #0xb88]                              
  0x0aa80  str      d0, [sp, #0x10]                               
  0x0aa84  adrp     x8, #0x19000                                  
  0x0aa88  ldr      d0, [x8, #0xb80]                              
  0x0aa8c  str      d0, [sp, #0x20]                               
  0x0aa90  fmov     d14, #0.50000000                              
  0x0aa94  fmov     d8, #0.75000000                               
  0x0aa98  adrp     x28, #0x19000                                 
  0x0aa9c  str      d9, [sp, #0x38]                               
  0x0aaa0  fsub     d0, d10, d13                                  
  0x0aaa4  fadd     d0, d0, d15                                   
  0x0aaa8  fdiv     d0, d0, d9                                    
  0x0aaac  fcmp     d0, d10                                       
  0x0aab0  fcsel    d1, d10, d0, gt                               
  0x0aab4  fcmp     d0, #0.0                                      
  0x0aab8  fcsel    d0, d12, d1, mi                               
  0x0aabc  fcmp     d0, #0.0                                      
  0x0aac0  fccmp    d0, d10, #0, hi                               
  0x0aac4  b.ge     #0xab4c                                       
  0x0aac8  fmov     d1, #1.00000000                               
  0x0aacc  movi     d2, #0000000000000000                         
  0x0aad0  mov      w8, #0x20                                     
  0x0aad4  fadd     d3, d2, d1                                    
  0x0aad8  fmul     d3, d3, d14                                   
  0x0aadc  fsub     d4, d10, d3                                   
  0x0aae0  fmul     d5, d4, d8                                    
  0x0aae4  fmul     d6, d4, d5                                    
  0x0aae8  fmul     d5, d3, d5                                    
  0x0aaec  fmul     d5, d3, d5                                    
  0x0aaf0  fmadd    d6, d6, d3, d5                                
  0x0aaf4  fmul     d5, d3, d3                                    
  0x0aaf8  fmadd    d6, d5, d3, d6                                
  0x0aafc  fcmp     d6, d0                                        
  0x0ab00  fcsel    d1, d1, d3, mi                                
  0x0ab04  fcsel    d2, d3, d2, mi                                
  0x0ab08  subs     w8, w8, #1                                    
  0x0ab0c  b.ne     #0xaad4                                       
  0x0ab10  ldr      d0, [x28, #0xb78]                             
  0x0ab14  fmul     d0, d4, d0                                    
  0x0ab18  fmul     d0, d4, d0                                    
  0x0ab1c  fmov     d1, #3.00000000                               
  0x0ab20  fmul     d1, d4, d1                                    
  0x0ab24  fmul     d1, d3, d1                                    
  0x0ab28  fmul     d1, d3, d1                                    
  0x0ab2c  fmadd    d0, d0, d3, d1                                
  0x0ab30  fmadd    d0, d5, d3, d0                                
  0x0ab34  fmov     d1, #10.00000000                              
  0x0ab38  fmul     d0, d0, d1                                    
  0x0ab3c  fcmp     d0, d10                                       
  0x0ab40  fcsel    d1, d10, d0, gt                               
  0x0ab44  fcmp     d0, #0.0                                      
  0x0ab48  fcsel    d0, d12, d1, mi                               
  0x0ab4c  ldr      x0, [x24, #0x628]                             
  0x0ab50  bl       #0x181c0                                        ; objc:numberWithDouble:
  0x0ab54  mov      x29, x29                                      
  0x0ab58  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0ab5c  mov      x22, x0                                       
  0x0ab60  mov      x0, x21                                       
  0x0ab64  mov      x2, x22                                       
  0x0ab68  bl       #0x170c0                                        ; objc:addObject:
  0x0ab6c  mov      x0, x22                                       
  0x0ab70  bl       #0x16dc4                                        ; _objc_release
  0x0ab74  ldr      d0, [x20, #0x218]                             
  0x0ab78  fmov     x8, d0                                        
  0x0ab7c  ands     x9, x8, #0x7fffffffffffffff                   
  0x0ab80  sub      x10, x9, #1                                   
  0x0ab84  cmp      x10, x25                                      
  0x0ab88  cset     w10, lo                                       
  0x0ab8c  add      x9, x9, x26                                   
  0x0ab90  lsr      x9, x9, #0x35                                 
  0x0ab94  cmp      x9, #0x3ff                                    
  0x0ab98  cset     w9, lo                                        
  0x0ab9c  cmp      x8, #0                                        
  0x0aba0  csel     w9, wzr, w9, ge                               
  0x0aba4  csel     w10, wzr, w10, ge                             
  0x0aba8  ands     x8, x8, #0x7fffffffffffffff                   
  0x0abac  csinc    w10, w10, wzr, ne                             
  0x0abb0  cmp      x8, x27                                       
  0x0abb4  csinc    w8, w10, wzr, ne                              
  0x0abb8  csinc    w8, w8, wzr, le                               
  0x0abbc  orr      w8, w8, w9                                    
  0x0abc0  tbnz     w8, #0, #0xad6c                               
  0x0abc4  ldr      d3, [x20, #0x210]                             
  0x0abc8  ldr      d1, [x20, #0x220]                             
  0x0abcc  fmov     x8, d1                                        
  0x0abd0  ands     x9, x8, #0x7fffffffffffffff                   
  0x0abd4  sub      x10, x9, #1                                   
  0x0abd8  cmp      x10, x25                                      
  0x0abdc  cset     w10, lo                                       
  0x0abe0  add      x9, x9, x26                                   
  0x0abe4  lsr      x9, x9, #0x35                                 
  0x0abe8  cmp      x9, #0x3ff                                    
  0x0abec  cset     w9, lo                                        
  0x0abf0  cmp      x8, #0                                        
  0x0abf4  csel     w9, wzr, w9, ge                               
  0x0abf8  csel     w10, wzr, w10, ge                             
  0x0abfc  ands     x8, x8, #0x7fffffffffffffff                   
  0x0ac00  ldp      d2, d4, [sp, #0x28]                           
  0x0ac04  fdiv     d9, d4, d0                                    
  0x0ac08  fsub     d12, d13, d3                                  
  0x0ac0c  csinc    w10, w10, wzr, ne                             
  0x0ac10  cmp      x8, x27                                       
  0x0ac14  csinc    w8, w10, wzr, ne                              
  0x0ac18  csinc    w8, w8, wzr, le                               
  0x0ac1c  orr      w8, w8, w9                                    
  0x0ac20  cmp      w8, #0                                        
  0x0ac24  fcsel    d0, d10, d1, ne                               
  0x0ac28  fmov     d1, #-1.00000000                              
  0x0ac2c  fadd     d1, d0, d1                                    
  0x0ac30  fabs     d1, d1                                        
  0x0ac34  fcmp     d1, d2                                        
  0x0ac38  b.pl     #0xac7c                                       
  0x0ac3c  fmadd    d15, d9, d12, d11                             
  0x0ac40  str      d11, [sp, #0x18]                              
  0x0ac44  ldr      d11, [sp, #0x10]                              
  0x0ac48  fmul     d0, d9, d11                                   
  0x0ac4c  fmov     d13, d3                                       
  0x0ac50  bl       #0x16c64                                        ; _exp
  0x0ac54  ldp      d3, d1, [sp, #0x18]                           
  0x0ac58  fmadd    d1, d15, d1, d12                              
  0x0ac5c  fmadd    d13, d1, d0, d13                              
  0x0ac60  fmul     d1, d15, d9                                   
  0x0ac64  fmov     d15, #-0.25000000                             
  0x0ac68  movi     d12, #0000000000000000                        
  0x0ac6c  ldr      d9, [sp, #0x38]                               
  0x0ac70  fmadd    d1, d1, d11, d3                               
  0x0ac74  fmul     d11, d0, d1                                   
  0x0ac78  b        #0xad6c                                         ; sub_ad6c
  0x0ac7c  str      d3, [sp, #0x18]                               
  0x0ac80  fcmp     d0, d10                                       
  0x0ac84  b.pl     #0xacf0                                       
  0x0ac88  fmsub    d1, d0, d0, d10                               
  0x0ac8c  fsqrt    d1, d1                                        
  0x0ac90  fmul     d15, d9, d1                                   
  0x0ac94  fmul     d9, d9, d0                                    
  0x0ac98  ldr      d0, [sp, #0x10]                               
  0x0ac9c  fmul     d0, d9, d0                                    
  0x0aca0  bl       #0x16c64                                        ; _exp
  0x0aca4  fmov     d13, d0                                       
  0x0aca8  fmadd    d0, d9, d12, d11                              
  0x0acac  fdiv     d11, d0, d15                                  
  0x0acb0  ldr      d0, [sp, #0x20]                               
  0x0acb4  fmul     d0, d15, d0                                   
  0x0acb8  bl       #0x16c04                                        ; ___sincos_stret
  0x0acbc  fmul     d2, d11, d0                                   
  0x0acc0  fmadd    d2, d12, d1, d2                               
  0x0acc4  fmov     d4, d13                                       
  0x0acc8  ldr      d3, [sp, #0x18]                               
  0x0accc  fmadd    d13, d13, d2, d3                              
  0x0acd0  fnmul    d2, d9, d12                                   
  0x0acd4  fmadd    d2, d11, d15, d2                              
  0x0acd8  fmul     d3, d9, d11                                   
  0x0acdc  fmadd    d3, d12, d15, d3                              
  0x0ace0  fnmul    d0, d3, d0                                    
  0x0ace4  fmadd    d0, d2, d1, d0                                
  0x0ace8  fmul     d11, d4, d0                                   
  0x0acec  b        #0xad60                                         ; sub_ad60
  0x0acf0  fmov     d1, #-1.00000000                              
  0x0acf4  fmadd    d1, d0, d0, d1                                
  0x0acf8  fsqrt    d1, d1                                        
  0x0acfc  fsub     d2, d0, d1                                    
  0x0ad00  fmov     d3, d11                                       
  0x0ad04  fnmul    d11, d9, d2                                   
  0x0ad08  fadd     d0, d0, d1                                    
  0x0ad0c  fnmul    d15, d9, d0                                   
  0x0ad10  fmsub    d0, d11, d12, d3                              
  0x0ad14  fsub     d1, d15, d11                                  
  0x0ad18  fdiv     d9, d0, d1                                    
  0x0ad1c  fsub     d0, d12, d9                                   
  0x0ad20  str      d0, [sp, #8]                                  
  0x0ad24  ldr      d12, [sp, #0x20]                              
  0x0ad28  fmul     d0, d11, d12                                  
  0x0ad2c  bl       #0x16c64                                        ; _exp
  0x0ad30  fmov     d13, d0                                       
  0x0ad34  fmul     d0, d15, d12                                  
  0x0ad38  bl       #0x16c64                                        ; _exp
  0x0ad3c  ldr      d1, [sp, #0x18]                               
  0x0ad40  ldr      d2, [sp, #8]                                  
  0x0ad44  fmov     d3, d13                                       
  0x0ad48  fmadd    d1, d2, d13, d1                               
  0x0ad4c  fmadd    d13, d9, d0, d1                               
  0x0ad50  fmul     d1, d11, d2                                   
  0x0ad54  fmul     d2, d15, d9                                   
  0x0ad58  fmul     d0, d0, d2                                    
  0x0ad5c  fmadd    d11, d1, d3, d0                               
  0x0ad60  fmov     d15, #-0.25000000                             
  0x0ad64  ldr      d9, [sp, #0x38]                               
  0x0ad68  movi     d12, #0000000000000000                        
  0x0ad6c  add      w23, w23, #1                                  
  0x0ad70  cmp      w23, #5                                       
  0x0ad74  b.ne     #0xaaa0                                       
  0x0ad78  adrp     x8, #0x25000                                  
  0x0ad7c  ldr      x0, [x8, #0x630]                              
  0x0ad80  adrp     x2, #0x20000                                  
  0x0ad84  add      x2, x2, #0x718                                
  0x0ad88  bl       #0x17220                                        ; objc:animationWithKeyPath:
  0x0ad8c  mov      x29, x29                                      
  0x0ad90  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0ad94  mov      x22, x0                                       
  0x0ad98  mov      x2, x21                                       
  0x0ad9c  bl       #0x19100                                        ; objc:setValues:
  0x0ada0  adrp     x8, #0x19000                                  
  0x0ada4  ldr      d0, [x8, #0xb90]                              
  0x0ada8  mov      x0, x22                                       
  0x0adac  bl       #0x189c0                                        ; objc:setDuration:
  0x0adb0  mov      x0, x22                                       
  0x0adb4  ldr      d0, [sp]                                      
  0x0adb8  bl       #0x18800                                        ; objc:setBeginTime:
  0x0adbc  adrp     x8, #0x20000                                  
  0x0adc0  ldr      x8, [x8, #0x300]                              
  0x0adc4  ldr      x2, [x8]                                      
  0x0adc8  mov      x0, x22                                       
  0x0adcc  bl       #0x189e0                                        ; objc:setFillMode:
  0x0add0  mov      x0, x22                                       
  0x0add4  mov      w2, #0                                        
  0x0add8  bl       #0x18ec0                                        ; objc:setRemovedOnCompletion:
  0x0addc  movi     v0.2d, #0000000000000000                      
  0x0ade0  stp      q0, q0, [sp, #0xa0]                           
  0x0ade4  stp      q0, q0, [sp, #0x80]                           
  0x0ade8  mov      x0, x20                                       
  0x0adec  bl       #0x18020                                        ; objc:movingGrabbers
  0x0adf0  mov      x29, x29                                      
  0x0adf4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0adf8  mov      x24, x0                                       
  0x0adfc  bl       #0x17180                                        ; objc:allObjects
  0x0ae00  mov      x29, x29                                      
  0x0ae04  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0ae08  mov      x23, x0                                       
  0x0ae0c  mov      x0, x24                                       
  0x0ae10  bl       #0x16dc4                                        ; _objc_release
  0x0ae14  add      x2, sp, #0x80                                 
  0x0ae18  add      x3, sp, #0x140                                
  0x0ae1c  mov      x0, x23                                       
  0x0ae20  mov      w4, #0x10                                     
  0x0ae24  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0ae28  cbz      x0, #0xaeb0                                   
  0x0ae2c  mov      x25, x0                                       
  0x0ae30  ldr      x8, [sp, #0x90]                               
  0x0ae34  ldr      x27, [x8]                                     
  0x0ae38  adrp     x24, #0x20000                                 
  0x0ae3c  add      x24, x24, #0x638                              
  0x0ae40  mov      x28, #0                                       
  0x0ae44  ldr      x8, [sp, #0x90]                               
  0x0ae48  ldr      x8, [x8]                                      
  0x0ae4c  cmp      x8, x27                                       
  0x0ae50  b.eq     #0xae5c                                       
  0x0ae54  mov      x0, x23                                       
  0x0ae58  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x0ae5c  ldr      x8, [sp, #0x88]                               
  0x0ae60  ldr      x0, [x8, x28, lsl #3]                         
  0x0ae64  bl       #0x17dc0                                        ; objc:layer
  0x0ae68  mov      x29, x29                                      
  0x0ae6c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0ae70  mov      x26, x0                                       
  0x0ae74  mov      x2, x22                                       
  0x0ae78  mov      x3, x24                                       
  0x0ae7c  bl       #0x17080                                        ; objc:addAnimation:forKey:
  0x0ae80  mov      x0, x26                                       
  0x0ae84  bl       #0x16dc4                                        ; _objc_release
  0x0ae88  add      x28, x28, #1                                  
  0x0ae8c  cmp      x25, x28                                      
  0x0ae90  b.ne     #0xae44                                       
  0x0ae94  add      x2, sp, #0x80                                 
  0x0ae98  add      x3, sp, #0x140                                
  0x0ae9c  mov      x0, x23                                       
  0x0aea0  mov      w4, #0x10                                     
  0x0aea4  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0aea8  mov      x25, x0                                       
  0x0aeac  cbnz     x0, #0xae40                                   
  0x0aeb0  mov      x0, x23                                       
  0x0aeb4  bl       #0x16dc4                                        ; _objc_release
  0x0aeb8  mov      x0, x22                                       
  0x0aebc  bl       #0x16dc4                                        ; _objc_release
  0x0aec0  mov      x0, x21                                       
  0x0aec4  bl       #0x16dc4                                        ; _objc_release
  0x0aec8  mov      x0, x20                                       
  0x0aecc  bl       #0x17020                                        ; objc:accessory
  0x0aed0  mov      x29, x29                                      
  0x0aed4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0aed8  mov      x21, x0                                       
  0x0aedc  cbz      x0, #0xaf60                                   
  0x0aee0  mov      x0, x20                                       
  0x0aee4  bl       #0x17040                                        ; objc:accessoryOverflows
  0x0aee8  tbnz     w0, #0, #0xaf60                               
  0x0aeec  mov      x0, x21                                       
  0x0aef0  bl       #0x17dc0                                        ; objc:layer
  0x0aef4  mov      x29, x29                                      
  0x0aef8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0aefc  mov      x22, x0                                       
  0x0af00  mov      x0, x20                                       
  0x0af04  bl       #0x174a0                                        ; objc:container
  0x0af08  mov      x29, x29                                      
  0x0af0c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0af10  mov      x23, x0                                       
  0x0af14  bl       #0x17dc0                                        ; objc:layer
  0x0af18  mov      x29, x29                                      
  0x0af1c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0af20  mov      x24, x0                                       
  0x0af24  mov      x0, x22                                       
  0x0af28  mov      x1, x24                                       
  0x0af2c  bl       #0x62ec                                         ; sub_62ec
  0x0af30  mov      x25, x0                                       
  0x0af34  mov      x0, x24                                       
  0x0af38  bl       #0x16dc4                                        ; _objc_release
  0x0af3c  mov      x0, x23                                       
  0x0af40  bl       #0x16dc4                                        ; _objc_release
  0x0af44  mov      x0, x22                                       
  0x0af48  bl       #0x16dc4                                        ; _objc_release
  0x0af4c  cbz      w25, #0xaf60                                  
  0x0af50  mov      x0, x21                                       
  0x0af54  bl       #0x16dd4                                        ; _objc_retain
  0x0af58  mov      x22, x0                                       
  0x0af5c  b        #0xaf64                                         ; sub_af64
  0x0af60  mov      x22, #0                                       
  0x0af64  add      x0, x20, #0x2dc                               
  0x0af68  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x0af6c  ldr      x0, [x20, #0x2e8]                             
  0x0af70  cmp      x0, x22                                       
  0x0af74  b.eq     #0xaf90                                       
  0x0af78  bl       #0x16dd4                                        ; _objc_retain
  0x0af7c  mov      x23, x0                                       
  0x0af80  add      x0, x20, #0x2e8                               
  0x0af84  mov      x1, x22                                       
  0x0af88  bl       #0x16e24                                        ; _objc_storeStrong
  0x0af8c  b        #0xaf94                                         ; sub_af94
  0x0af90  mov      x23, #0                                       
  0x0af94  add      x0, x20, #0x2dc                               
  0x0af98  bl       #0x16e84                                        ; _os_unfair_lock_unlock
  0x0af9c  adrp     x24, #0x25000                                 
  0x0afa0  ldr      x0, [x24, #0x5f0]                             
  0x0afa4  bl       #0x173e0                                        ; objc:begin
  0x0afa8  ldr      x0, [x24, #0x5f0]                             
  0x0afac  mov      w2, #1                                        
  0x0afb0  bl       #0x18980                                        ; objc:setDisableActions:
  0x0afb4  cbz      x23, #0xafc0                                  
  0x0afb8  mov      x0, x23                                       
  0x0afbc  bl       #0xb164                                         ; sub_b164
  0x0afc0  cbz      x21, #0xb0f0                                  
  0x0afc4  mov      x0, x20                                       
  0x0afc8  bl       #0x17040                                        ; objc:accessoryOverflows
  0x0afcc  cbz      w0, #0xb0f0                                   
  0x0afd0  stp      x22, x21, [sp, #0x30]                         
  0x0afd4  movi     v0.2d, #0000000000000000                      
  0x0afd8  stp      q0, q0, [sp, #0x60]                           
  0x0afdc  stp      q0, q0, [sp, #0x40]                           
  0x0afe0  mov      x0, x20                                       
  0x0afe4  bl       #0x17a80                                        ; objc:iconMeshViews
  0x0afe8  mov      x29, x29                                      
  0x0afec  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0aff0  mov      x25, x0                                       
  0x0aff4  bl       #0x17180                                        ; objc:allObjects
  0x0aff8  mov      x29, x29                                      
  0x0affc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0b000  mov      x24, x0                                       
  0x0b004  mov      x0, x25                                       
  0x0b008  bl       #0x16dc4                                        ; _objc_release
  0x0b00c  add      x2, sp, #0x40                                 
  0x0b010  add      x3, sp, #0xc0                                 
  0x0b014  mov      x0, x24                                       
  0x0b018  mov      w4, #0x10                                     
  0x0b01c  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0b020  cbz      x0, #0xb0e0                                   
  0x0b024  mov      x25, x0                                       
  0x0b028  ldr      x8, [sp, #0x50]                               
  0x0b02c  ldr      x21, [x8]                                     
  0x0b030  mov      x22, #0                                       
  0x0b034  ldr      x8, [sp, #0x50]                               
  0x0b038  ldr      x8, [x8]                                      
  0x0b03c  cmp      x8, x21                                       
  0x0b040  b.eq     #0xb04c                                       
  0x0b044  mov      x0, x24                                       
  0x0b048  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x0b04c  ldr      x8, [sp, #0x48]                               
  0x0b050  ldr      x26, [x8, x22, lsl #3]                        
  0x0b054  mov      x0, x20                                       
  0x0b058  mov      x2, x26                                       
  0x0b05c  bl       #0x17f60                                        ; objc:meshForIcon:
  0x0b060  mov      x29, x29                                      
  0x0b064  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0b068  mov      x27, x0                                       
  0x0b06c  mov      x0, x26                                       
  0x0b070  bl       #0x17dc0                                        ; objc:layer
  0x0b074  mov      x29, x29                                      
  0x0b078  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0b07c  mov      x28, x0                                       
  0x0b080  mov      x2, x27                                       
  0x0b084  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x0b088  mov      x0, x28                                       
  0x0b08c  bl       #0x16dc4                                        ; _objc_release
  0x0b090  mov      x0, x27                                       
  0x0b094  bl       #0x16dc4                                        ; _objc_release
  0x0b098  mov      x0, x26                                       
  0x0b09c  bl       #0x17dc0                                        ; objc:layer
  0x0b0a0  mov      x29, x29                                      
  0x0b0a4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0b0a8  mov      x26, x0                                       
  0x0b0ac  bl       #0x608c                                         ; sub_608c
  0x0b0b0  mov      x0, x26                                       
  0x0b0b4  bl       #0x16dc4                                        ; _objc_release
  0x0b0b8  add      x22, x22, #1                                  
  0x0b0bc  cmp      x25, x22                                      
  0x0b0c0  b.ne     #0xb034                                       
  0x0b0c4  add      x2, sp, #0x40                                 
  0x0b0c8  add      x3, sp, #0xc0                                 
  0x0b0cc  mov      x0, x24                                       
  0x0b0d0  mov      w4, #0x10                                     
  0x0b0d4  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0b0d8  mov      x25, x0                                       
  0x0b0dc  cbnz     x0, #0xb030                                   
  0x0b0e0  mov      x0, x24                                       
  0x0b0e4  bl       #0x16dc4                                        ; _objc_release
  0x0b0e8  ldp      x22, x21, [sp, #0x30]                         
  0x0b0ec  adrp     x24, #0x25000                                 
  0x0b0f0  ldr      x0, [x24, #0x5f0]                             
  0x0b0f4  bl       #0x17480                                        ; objc:commit
  0x0b0f8  mov      x0, x23                                       
  0x0b0fc  bl       #0x16dc4                                        ; _objc_release
  0x0b100  mov      x0, x22                                       
  0x0b104  bl       #0x16dc4                                        ; _objc_release
  0x0b108  mov      x0, x21                                       
  0x0b10c  bl       #0x16dc4                                        ; _objc_release
  0x0b110  mov      x0, x19                                       
  0x0b114  bl       #0x16dc4                                        ; _objc_release
  0x0b118  ldur     x8, [x29, #-0xa0]                             
  0x0b11c  adrp     x9, #0x20000                                  
  0x0b120  ldr      x9, [x9, #0x320]                              
  0x0b124  ldr      x9, [x9]                                      
  0x0b128  cmp      x9, x8                                        
  0x0b12c  b.ne     #0xb160                                       
  0x0b130  add      sp, sp, #0x1d0                                
  0x0b134  ldp      x29, x30, [sp, #0x90]                         
  0x0b138  ldp      x20, x19, [sp, #0x80]                         
  0x0b13c  ldp      x22, x21, [sp, #0x70]                         
  0x0b140  ldp      x24, x23, [sp, #0x60]                         
  0x0b144  ldp      x26, x25, [sp, #0x50]                         
  0x0b148  ldp      x28, x27, [sp, #0x40]                         
  0x0b14c  ldp      d9, d8, [sp, #0x30]                           
  0x0b150  ldp      d11, d10, [sp, #0x20]                         
  0x0b154  ldp      d13, d12, [sp, #0x10]                         
  0x0b158  ldp      d15, d14, [sp], #0xa0                         
  0x0b15c  retab                                                  
