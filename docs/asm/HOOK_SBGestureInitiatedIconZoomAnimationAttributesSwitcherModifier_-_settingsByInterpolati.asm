HOOK SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier -_settingsByInterpolatingBetween:and:progress: @0xda48  (133 insns)
  0x0da48  pacibsp                                                
  0x0da4c  stp      d9, d8, [sp, #-0x50]!                         
  0x0da50  stp      x24, x23, [sp, #0x10]                         
  0x0da54  stp      x22, x21, [sp, #0x20]                         
  0x0da58  stp      x20, x19, [sp, #0x30]                         
  0x0da5c  stp      x29, x30, [sp, #0x40]                         
  0x0da60  add      x29, sp, #0x40                                
  0x0da64  fmov     d8, d0                                        
  0x0da68  mov      x19, x2                                       
  0x0da6c  mov      x20, x1                                       
  0x0da70  mov      x21, x0                                       
  0x0da74  mov      x0, x3                                        
  0x0da78  bl       #0x16dd4                                        ; _objc_retain
  0x0da7c  mov      x22, x0                                       
  0x0da80  mov      x0, x19                                       
  0x0da84  bl       #0x16dd4                                        ; _objc_retain
  0x0da88  mov      x23, x0                                       
  0x0da8c  mov      x0, x21                                       
  0x0da90  bl       #0x1022c                                        ; sub_1022c
  0x0da94  adrp     x8, #0x25000                                  
  0x0da98  ldr      w24, [x8, #0xac8]                             
  0x0da9c  adrp     x8, #0x25000                                  
  0x0daa0  ldr      x8, [x8, #0x920]                              
  0x0daa4  mov      x0, x21                                       
  0x0daa8  mov      x1, x20                                       
  0x0daac  mov      x2, x23                                       
  0x0dab0  mov      x3, x22                                       
  0x0dab4  fmov     d0, d8                                        
  0x0dab8  blraaz   x8                                            
  0x0dabc  mov      x29, x29                                      
  0x0dac0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0dac4  mov      x19, x0                                       
  0x0dac8  mov      x0, x22                                       
  0x0dacc  bl       #0x16dc4                                        ; _objc_release
  0x0dad0  mov      x0, x23                                       
  0x0dad4  bl       #0x16dc4                                        ; _objc_release
  0x0dad8  bl       #0x73d4                                         ; sub_73d4
  0x0dadc  cbz      w0, #0xdc34                                   
  0x0dae0  adrp     x8, #0x25000                                  
  0x0dae4  ldr      x0, [x8, #0x698]                              
  0x0dae8  bl       #0x176a0                                        ; objc:currentDevice
  0x0daec  mov      x29, x29                                      
  0x0daf0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0daf4  mov      x20, x0                                       
  0x0daf8  bl       #0x194c0                                        ; objc:userInterfaceIdiom
  0x0dafc  cbnz     x0, #0xdc2c                                   
  0x0db00  adrp     x22, #0x25000                                 
  0x0db04  ldr      x21, [x22, #0xa70]                            
  0x0db08  cbnz     x21, #0xdb20                                  
  0x0db0c  adrp     x0, #0x1a000                                  
  0x0db10  add      x0, x0, #0x59f                                
  0x0db14  bl       #0x16d44                                        ; _objc_getClass
  0x0db18  mov      x21, x0                                       
  0x0db1c  str      x0, [x22, #0xa70]                             
  0x0db20  mov      x0, x21                                       
  0x0db24  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x0db28  mov      x0, x19                                       
  0x0db2c  mov      x1, x21                                       
  0x0db30  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0db34  tbz      w0, #0, #0xdc2c                               
  0x0db38  mov      x0, x19                                       
  0x0db3c  bl       #0x18560                                        ; objc:response
  0x0db40  fmov     d9, d0                                        
  0x0db44  mov      x0, x20                                       
  0x0db48  bl       #0x16dc4                                        ; _objc_release
  0x0db4c  adrp     x8, #0x19000                                  
  0x0db50  ldr      d0, [x8, #0xac0]                              
  0x0db54  fcmp     d9, d0                                        
  0x0db58  b.ls     #0xdc34                                       
  0x0db5c  fmov     x8, d8                                        
  0x0db60  and      x8, x8, #0x7fffffffffffffff                   
  0x0db64  mov      x9, #0x7fefffffffffffff                       
  0x0db68  cmp      x8, x9                                        
  0x0db6c  b.gt     #0xdc0c                                       
  0x0db70  cbz      w24, #0xdc0c                                  
  0x0db74  movi     d0, #0000000000000000                         
  0x0db78  fmaxnm   d1, d8, d0                                    
  0x0db7c  fmov     d2, #1.00000000                               
  0x0db80  fminnm   d1, d1, d2                                    
  0x0db84  cmp      w24, #1                                       
  0x0db88  cset     w8, eq                                        
  0x0db8c  adrp     x9, #0x19000                                  
  0x0db90  add      x9, x9, #0xd50                                
  0x0db94  ldr      d2, [x9, w8, uxtw #3]                         
  0x0db98  adrp     x9, #0x19000                                  
  0x0db9c  add      x9, x9, #0xd60                                
  0x0dba0  ldr      d3, [x9, w8, uxtw #3]                         
  0x0dba4  adrp     x8, #0x19000                                  
  0x0dba8  ldr      d4, [x8, #0xba0]                              
  0x0dbac  fcsel    d0, d4, d0, eq                                
  0x0dbb0  fmadd    d9, d0, d1, d2                                
  0x0dbb4  adrp     x8, #0x19000                                  
  0x0dbb8  ldr      d0, [x8, #0xba8]                              
  0x0dbbc  fsub     d0, d0, d3                                    
  0x0dbc0  fmadd    d8, d0, d1, d3                                
  0x0dbc4  mov      x0, x19                                       
  0x0dbc8  bl       #0x17700                                        ; objc:dampingRatio
  0x0dbcc  fabd     d0, d0, d9                                    
  0x0dbd0  adrp     x8, #0x19000                                  
  0x0dbd4  ldr      d1, [x8, #0xbb0]                              
  0x0dbd8  fcmp     d0, d1                                        
  0x0dbdc  b.gt     #0xdbe8                                       
  0x0dbe0  mov      x0, x19                                       
  0x0dbe4  bl       #0x18560                                        ; objc:response
  0x0dbe8  mov      x0, x19                                       
  0x0dbec  fmov     d0, d9                                        
  0x0dbf0  bl       #0x18960                                        ; objc:setDampingRatio:
  0x0dbf4  mov      x0, x19                                       
  0x0dbf8  fmov     d0, d8                                        
  0x0dbfc  bl       #0x18f00                                        ; objc:setResponse:
  0x0dc00  movi     d0, #0000000000000000                         
  0x0dc04  mov      x0, x19                                       
  0x0dc08  bl       #0x18f20                                        ; objc:setRetargetImpulse:
  0x0dc0c  mov      x0, x19                                       
  0x0dc10  bl       #0x18560                                        ; objc:response
  0x0dc14  adrp     x8, #0x19000                                  
  0x0dc18  ldr      d1, [x8, #0xb68]                              
  0x0dc1c  fmul     d0, d0, d1                                    
  0x0dc20  mov      x0, x19                                       
  0x0dc24  bl       #0x18f00                                        ; objc:setResponse:
  0x0dc28  b        #0xdc34                                         ; sub_dc34
  0x0dc2c  mov      x0, x20                                       
  0x0dc30  bl       #0x16dc4                                        ; _objc_release
  0x0dc34  mov      x0, x19                                       
  0x0dc38  ldp      x29, x30, [sp, #0x40]                         
  0x0dc3c  ldp      x20, x19, [sp, #0x30]                         
  0x0dc40  ldp      x22, x21, [sp, #0x20]                         
  0x0dc44  ldp      x24, x23, [sp, #0x10]                         
  0x0dc48  ldp      d9, d8, [sp], #0x50                           
  0x0dc4c  autibsp                                                
  0x0dc50  eor      x16, x30, x30, lsl #1                         
  0x0dc54  tbz      x16, #0x3e, #0xdc5c                           
  0x0dc58  brk      #0xc471                                       
