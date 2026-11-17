CG27GenieDriver updateGlassRim @0x4000  (291 insns)
types: v16@0:8
  0x04000  pacibsp                                                
  0x04004  stp      d15, d14, [sp, #-0xa0]!                       
  0x04008  stp      d13, d12, [sp, #0x10]                         
  0x0400c  stp      d11, d10, [sp, #0x20]                         
  0x04010  stp      d9, d8, [sp, #0x30]                           
  0x04014  stp      x28, x27, [sp, #0x40]                         
  0x04018  stp      x26, x25, [sp, #0x50]                         
  0x0401c  stp      x24, x23, [sp, #0x60]                         
  0x04020  stp      x22, x21, [sp, #0x70]                         
  0x04024  stp      x20, x19, [sp, #0x80]                         
  0x04028  stp      x29, x30, [sp, #0x90]                         
  0x0402c  add      x29, sp, #0x90                                
  0x04030  sub      sp, sp, #0x1e0                                
  0x04034  mov      x22, x0                                       
  0x04038  adrp     x8, #0x20000                                  
  0x0403c  ldr      x8, [x8, #0x320]                              
  0x04040  ldr      x8, [x8]                                      
  0x04044  stur     x8, [x29, #-0xa0]                             
  0x04048  bl       #0x17960                                        ; objc:glassRim
  0x0404c  mov      x29, x29                                      
  0x04050  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04054  mov      x19, x0                                       
  0x04058  bl       #0x16dc4                                        ; _objc_release
  0x0405c  cbz      x19, #0x4444                                  
  0x04060  mov      x0, x22                                       
  0x04064  bl       #0x17020                                        ; objc:accessory
  0x04068  mov      x29, x29                                      
  0x0406c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04070  cbnz     x0, #0x4088                                   
  0x04074  mov      x0, x22                                       
  0x04078  bl       #0x174a0                                        ; objc:container
  0x0407c  mov      x29, x29                                      
  0x04080  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04084  cbz      x0, #0x4444                                   
  0x04088  mov      x19, x0                                       
  0x0408c  mov      x0, x22                                       
  0x04090  bl       #0x17960                                        ; objc:glassRim
  0x04094  mov      x29, x29                                      
  0x04098  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0409c  mov      x20, x0                                       
  0x040a0  bl       #0x193a0                                        ; objc:superlayer
  0x040a4  mov      x29, x29                                      
  0x040a8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x040ac  mov      x21, x0                                       
  0x040b0  mov      x0, x19                                       
  0x040b4  bl       #0x17dc0                                        ; objc:layer
  0x040b8  mov      x29, x29                                      
  0x040bc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x040c0  mov      x23, x0                                       
  0x040c4  bl       #0x16dc4                                        ; _objc_release
  0x040c8  mov      x0, x21                                       
  0x040cc  bl       #0x16dc4                                        ; _objc_release
  0x040d0  cmp      x21, x23                                      
  0x040d4  b.eq     #0x40fc                                       
  0x040d8  mov      x0, x19                                       
  0x040dc  bl       #0x17dc0                                        ; objc:layer
  0x040e0  mov      x29, x29                                      
  0x040e4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x040e8  mov      x21, x0                                       
  0x040ec  mov      x2, x20                                       
  0x040f0  bl       #0x17100                                        ; objc:addSublayer:
  0x040f4  mov      x0, x21                                       
  0x040f8  bl       #0x16dc4                                        ; _objc_release
  0x040fc  mov      x0, x19                                       
  0x04100  bl       #0x17dc0                                        ; objc:layer
  0x04104  mov      x29, x29                                      
  0x04108  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0410c  mov      x23, x0                                       
  0x04110  bl       #0x18360                                        ; objc:presentationLayer
  0x04114  mov      x29, x29                                      
  0x04118  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0411c  cbz      x0, #0x4130                                   
  0x04120  mov      x21, x0                                       
  0x04124  mov      x0, x23                                       
  0x04128  bl       #0x16dc4                                        ; _objc_release
  0x0412c  b        #0x4150                                         ; sub_4150
  0x04130  mov      x0, x19                                       
  0x04134  bl       #0x17dc0                                        ; objc:layer
  0x04138  mov      x29, x29                                      
  0x0413c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04140  mov      x21, x0                                       
  0x04144  mov      x0, x23                                       
  0x04148  bl       #0x16dc4                                        ; _objc_release
  0x0414c  cbz      x21, #0x448c                                  
  0x04150  add      x8, sp, #0xd0                                 
  0x04154  mov      x0, x21                                       
  0x04158  bl       #0x19480                                        ; objc:transform
  0x0415c  ldr      d8, [sp, #0xd0]                               
  0x04160  add      x8, sp, #0x50                                 
  0x04164  mov      x0, x21                                       
  0x04168  bl       #0x19480                                        ; objc:transform
  0x0416c  ldr      d1, [sp, #0x58]                               
  0x04170  fmov     d0, d8                                        
  0x04174  bl       #0x16c74                                        ; _hypot
  0x04178  fmov     x8, d0                                        
  0x0417c  and      x8, x8, #0x7fffffffffffffff                   
  0x04180  mov      x9, #0x7fefffffffffffff                       
  0x04184  cmp      x8, x9                                        
  0x04188  adrp     x8, #0x19000                                  
  0x0418c  ldr      d1, [x8, #0xac0]                              
  0x04190  fccmp    d0, d1, #8, le                                
  0x04194  fmov     d10, #1.00000000                              
  0x04198  fcsel    d8, d10, d0, mi                               
  0x0419c  mov      x0, x21                                       
  0x041a0  bl       #0x17460                                        ; objc:bounds
  0x041a4  str      d2, [sp, #8]                                  
  0x041a8  fcmp     d2, d10                                       
  0x041ac  b.mi     #0x442c                                       
  0x041b0  fmov     d9, d3                                        
  0x041b4  fcmp     d3, d10                                       
  0x041b8  b.mi     #0x442c                                       
  0x041bc  ldr      d0, [sp, #8]                                  
  0x041c0  fmul     d12, d0, d8                                   
  0x041c4  mov      x0, x22                                       
  0x041c8  bl       #0x17ac0                                        ; objc:iconWidth
  0x041cc  fmov     d13, #1.00000000                              
  0x041d0  fcmp     d0, d13                                       
  0x041d4  b.le     #0x41e8                                       
  0x041d8  mov      x0, x22                                       
  0x041dc  bl       #0x17ac0                                        ; objc:iconWidth
  0x041e0  fmov     d10, d0                                       
  0x041e4  b        #0x41f0                                         ; sub_41f0
  0x041e8  mov      x8, #0x4050000000000000                       
  0x041ec  fmov     d10, x8                                       
  0x041f0  adrp     x8, #0x25000                                  
  0x041f4  ldr      x0, [x8, #0x5e8]                              
  0x041f8  bl       #0x17ec0                                        ; objc:mainScreen
  0x041fc  mov      x29, x29                                      
  0x04200  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04204  mov      x22, x0                                       
  0x04208  bl       #0x17460                                        ; objc:bounds
  0x0420c  fmov     d11, d2                                       
  0x04210  mov      x0, x22                                       
  0x04214  bl       #0x16dc4                                        ; _objc_release
  0x04218  fmov     d0, #-2.00000000                              
  0x0421c  fmadd    d1, d10, d0, d12                              
  0x04220  fmadd    d0, d10, d0, d11                              
  0x04224  fmaxnm   d0, d0, d13                                   
  0x04228  fdiv     d0, d1, d0                                    
  0x0422c  fcmp     d0, d13                                       
  0x04230  fcsel    d1, d13, d0, gt                               
  0x04234  fcmp     d0, #0.0                                      
  0x04238  movi     d0, #0000000000000000                         
  0x0423c  fcsel    d11, d0, d1, mi                               
  0x04240  ldr      d10, [sp, #8]                                 
  0x04244  fcmp     d10, d9                                       
  0x04248  fcsel    d12, d10, d9, mi                              
  0x0424c  adrp     x26, #0x25000                                 
  0x04250  ldr      x0, [x26, #0x5f0]                             
  0x04254  bl       #0x173e0                                        ; objc:begin
  0x04258  ldr      x0, [x26, #0x5f0]                             
  0x0425c  mov      w2, #1                                        
  0x04260  bl       #0x18980                                        ; objc:setDisableActions:
  0x04264  adrp     x8, #0x20000                                  
  0x04268  ldr      x8, [x8, #0x310]                              
  0x0426c  ldp      d0, d1, [x8]                                  
  0x04270  mov      x0, x20                                       
  0x04274  fmov     d2, d10                                       
  0x04278  fmov     d3, d9                                        
  0x0427c  bl       #0x18840                                        ; objc:setBounds:
  0x04280  mov      x0, x21                                       
  0x04284  bl       #0x17460                                        ; objc:bounds
  0x04288  bl       #0x16af4                                        ; _CGRectGetMidX
  0x0428c  fmov     d10, d0                                       
  0x04290  mov      x0, x21                                       
  0x04294  bl       #0x17460                                        ; objc:bounds
  0x04298  bl       #0x16b04                                        ; _CGRectGetMidY
  0x0429c  fmov     d1, d0                                        
  0x042a0  mov      x0, x20                                       
  0x042a4  fmov     d0, d10                                       
  0x042a8  bl       #0x18e40                                        ; objc:setPosition:
  0x042ac  movi     v0.2d, #0000000000000000                      
  0x042b0  stp      q0, q0, [sp, #0x30]                           
  0x042b4  stp      q0, q0, [sp, #0x10]                           
  0x042b8  mov      x0, x20                                       
  0x042bc  bl       #0x19320                                        ; objc:sublayers
  0x042c0  mov      x29, x29                                      
  0x042c4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x042c8  mov      x22, x0                                       
  0x042cc  add      x2, sp, #0x10                                 
  0x042d0  add      x3, sp, #0x150                                
  0x042d4  mov      w4, #0x10                                     
  0x042d8  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x042dc  cbz      x0, #0x441c                                   
  0x042e0  mov      x23, x0                                       
  0x042e4  adrp     x8, #0x19000                                  
  0x042e8  ldr      d0, [x8, #0xac8]                              
  0x042ec  adrp     x8, #0x19000                                  
  0x042f0  ldr      d1, [x8, #0xad0]                              
  0x042f4  fmadd    d0, d11, d1, d0                               
  0x042f8  fmul     d10, d12, d0                                  
  0x042fc  fmov     d0, #0.75000000                               
  0x04300  fdiv     d1, d0, d8                                    
  0x04304  fmaxnm   d0, d1, d0                                    
  0x04308  fmov     d1, #8.00000000                               
  0x0430c  fminnm   d11, d0, d1                                   
  0x04310  ldr      x8, [sp, #0x20]                               
  0x04314  ldr      x27, [x8]                                     
  0x04318  fmov     d0, #0.50000000                               
  0x0431c  fdiv     d0, d0, d8                                    
  0x04320  fneg     d12, d0                                       
  0x04324  fadd     d9, d9, d0                                    
  0x04328  mov      x28, #0                                       
  0x0432c  ldr      x8, [sp, #0x20]                               
  0x04330  ldr      x8, [x8]                                      
  0x04334  cmp      x8, x27                                       
  0x04338  b.eq     #0x4344                                       
  0x0433c  mov      x0, x22                                       
  0x04340  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x04344  ldr      x8, [sp, #0x18]                               
  0x04348  ldr      x24, [x8, x28, lsl #3]                        
  0x0434c  movi     d0, #0000000000000000                         
  0x04350  mov      x0, x24                                       
  0x04354  fmov     d1, d12                                       
  0x04358  ldr      d2, [sp, #8]                                  
  0x0435c  fmov     d3, d9                                        
  0x04360  bl       #0x18a20                                        ; objc:setFrame:
  0x04364  mov      x0, x24                                       
  0x04368  bl       #0x17460                                        ; objc:bounds
  0x0436c  fmov     d13, d0                                       
  0x04370  fmov     d14, d1                                       
  0x04374  fmov     d15, d2                                       
  0x04378  fmov     d8, d3                                        
  0x0437c  mov      x0, x24                                       
  0x04380  bl       #0x17f00                                        ; objc:mask
  0x04384  mov      x29, x29                                      
  0x04388  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0438c  mov      x25, x0                                       
  0x04390  fmov     d0, d13                                       
  0x04394  fmov     d1, d14                                       
  0x04398  fmov     d2, d15                                       
  0x0439c  fmov     d3, d8                                        
  0x043a0  bl       #0x18a20                                        ; objc:setFrame:
  0x043a4  mov      x0, x25                                       
  0x043a8  bl       #0x16dc4                                        ; _objc_release
  0x043ac  mov      x0, x24                                       
  0x043b0  bl       #0x17f00                                        ; objc:mask
  0x043b4  mov      x29, x29                                      
  0x043b8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x043bc  mov      x25, x0                                       
  0x043c0  fmov     d0, d10                                       
  0x043c4  bl       #0x188e0                                        ; objc:setCornerRadius:
  0x043c8  mov      x0, x25                                       
  0x043cc  bl       #0x16dc4                                        ; _objc_release
  0x043d0  mov      x0, x24                                       
  0x043d4  bl       #0x17f00                                        ; objc:mask
  0x043d8  mov      x29, x29                                      
  0x043dc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x043e0  mov      x24, x0                                       
  0x043e4  fmov     d0, d11                                       
  0x043e8  bl       #0x18820                                        ; objc:setBorderWidth:
  0x043ec  mov      x0, x24                                       
  0x043f0  bl       #0x16dc4                                        ; _objc_release
  0x043f4  add      x28, x28, #1                                  
  0x043f8  cmp      x23, x28                                      
  0x043fc  b.ne     #0x432c                                       
  0x04400  add      x2, sp, #0x10                                 
  0x04404  add      x3, sp, #0x150                                
  0x04408  mov      x0, x22                                       
  0x0440c  mov      w4, #0x10                                     
  0x04410  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x04414  mov      x23, x0                                       
  0x04418  cbnz     x0, #0x4328                                   
  0x0441c  mov      x0, x22                                       
  0x04420  bl       #0x16dc4                                        ; _objc_release
  0x04424  ldr      x0, [x26, #0x5f0]                             
  0x04428  bl       #0x17480                                        ; objc:commit
  0x0442c  mov      x0, x21                                       
  0x04430  bl       #0x16dc4                                        ; _objc_release
  0x04434  mov      x0, x20                                       
  0x04438  bl       #0x16dc4                                        ; _objc_release
  0x0443c  mov      x0, x19                                       
  0x04440  bl       #0x16dc4                                        ; _objc_release
  0x04444  ldur     x8, [x29, #-0xa0]                             
  0x04448  adrp     x9, #0x20000                                  
  0x0444c  ldr      x9, [x9, #0x320]                              
  0x04450  ldr      x9, [x9]                                      
  0x04454  cmp      x9, x8                                        
  0x04458  b.ne     #0x44bc                                       
  0x0445c  add      sp, sp, #0x1e0                                
  0x04460  ldp      x29, x30, [sp, #0x90]                         
  0x04464  ldp      x20, x19, [sp, #0x80]                         
  0x04468  ldp      x22, x21, [sp, #0x70]                         
  0x0446c  ldp      x24, x23, [sp, #0x60]                         
  0x04470  ldp      x26, x25, [sp, #0x50]                         
  0x04474  ldp      x28, x27, [sp, #0x40]                         
  0x04478  ldp      d9, d8, [sp, #0x30]                           
  0x0447c  ldp      d11, d10, [sp, #0x20]                         
  0x04480  ldp      d13, d12, [sp, #0x10]                         
  0x04484  ldp      d15, d14, [sp], #0xa0                         
  0x04488  retab                                                  
