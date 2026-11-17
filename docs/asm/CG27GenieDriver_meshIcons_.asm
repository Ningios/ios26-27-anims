CG27GenieDriver meshIcons: @0x809c  (159 insns)
types: v24@0:8@16
  0x0809c  pacibsp                                                
  0x080a0  sub      sp, sp, #0x130                                
  0x080a4  stp      x28, x27, [sp, #0xd0]                         
  0x080a8  stp      x26, x25, [sp, #0xe0]                         
  0x080ac  stp      x24, x23, [sp, #0xf0]                         
  0x080b0  stp      x22, x21, [sp, #0x100]                        
  0x080b4  stp      x20, x19, [sp, #0x110]                        
  0x080b8  stp      x29, x30, [sp, #0x120]                        
  0x080bc  add      x29, sp, #0x120                               
  0x080c0  mov      x19, x0                                       
  0x080c4  adrp     x8, #0x20000                                  
  0x080c8  ldr      x8, [x8, #0x320]                              
  0x080cc  ldr      x8, [x8]                                      
  0x080d0  stur     x8, [x29, #-0x60]                             
  0x080d4  mov      x0, x2                                        
  0x080d8  bl       #0x16dd4                                        ; _objc_retain
  0x080dc  mov      x20, x0                                       
  0x080e0  mov      x0, x19                                       
  0x080e4  bl       #0x17040                                        ; objc:accessoryOverflows
  0x080e8  tbnz     w0, #0, #0x81c0                               
  0x080ec  mov      x0, x19                                       
  0x080f0  mov      w2, #1                                        
  0x080f4  bl       #0x186e0                                        ; objc:setAccessoryOverflows:
  0x080f8  adrp     x8, #0x25000                                  
  0x080fc  ldr      x0, [x8, #0x638]                              
  0x08100  bl       #0x19580                                        ; objc:weakObjectsHashTable
  0x08104  mov      x29, x29                                      
  0x08108  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0810c  mov      x21, x0                                       
  0x08110  mov      x0, x19                                       
  0x08114  mov      x2, x21                                       
  0x08118  bl       #0x18b80                                        ; objc:setIconMeshViews:
  0x0811c  mov      x0, x21                                       
  0x08120  bl       #0x16dc4                                        ; _objc_release
  0x08124  adrp     x23, #0x25000                                 
  0x08128  ldr      x0, [x23, #0x5f0]                             
  0x0812c  bl       #0x173e0                                        ; objc:begin
  0x08130  ldr      x0, [x23, #0x5f0]                             
  0x08134  mov      w2, #1                                        
  0x08138  bl       #0x18980                                        ; objc:setDisableActions:
  0x0813c  mov      x0, x19                                       
  0x08140  bl       #0x17020                                        ; objc:accessory
  0x08144  mov      x29, x29                                      
  0x08148  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0814c  mov      x21, x0                                       
  0x08150  bl       #0x17dc0                                        ; objc:layer
  0x08154  mov      x29, x29                                      
  0x08158  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0815c  mov      x22, x0                                       
  0x08160  adrp     x2, #0x20000                                  
  0x08164  add      x2, x2, #0x658                                
  0x08168  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x0816c  mov      x0, x22                                       
  0x08170  bl       #0x16dc4                                        ; _objc_release
  0x08174  mov      x0, x21                                       
  0x08178  bl       #0x16dc4                                        ; _objc_release
  0x0817c  mov      x0, x19                                       
  0x08180  bl       #0x17020                                        ; objc:accessory
  0x08184  mov      x29, x29                                      
  0x08188  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0818c  mov      x21, x0                                       
  0x08190  bl       #0x17dc0                                        ; objc:layer
  0x08194  mov      x29, x29                                      
  0x08198  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0819c  mov      x22, x0                                       
  0x081a0  mov      x2, #0                                        
  0x081a4  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x081a8  mov      x0, x22                                       
  0x081ac  bl       #0x16dc4                                        ; _objc_release
  0x081b0  mov      x0, x21                                       
  0x081b4  bl       #0x16dc4                                        ; _objc_release
  0x081b8  ldr      x0, [x23, #0x5f0]                             
  0x081bc  bl       #0x17480                                        ; objc:commit
  0x081c0  movi     v0.2d, #0000000000000000                      
  0x081c4  stp      q0, q0, [sp, #0x20]                           
  0x081c8  stp      q0, q0, [sp]                                  
  0x081cc  mov      x0, x20                                       
  0x081d0  bl       #0x16dd4                                        ; _objc_retain
  0x081d4  mov      x20, x0                                       
  0x081d8  mov      x2, sp                                        
  0x081dc  add      x3, sp, #0x40                                 
  0x081e0  mov      w4, #0x10                                     
  0x081e4  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x081e8  cbz      x0, #0x82d0                                   
  0x081ec  mov      x21, x0                                       
  0x081f0  ldr      x8, [sp, #0x10]                               
  0x081f4  ldr      x27, [x8]                                     
  0x081f8  adrp     x22, #0x20000                                 
  0x081fc  add      x22, x22, #0x678                              
  0x08200  mov      x28, #0                                       
  0x08204  ldr      x8, [sp, #0x10]                               
  0x08208  ldr      x8, [x8]                                      
  0x0820c  cmp      x8, x27                                       
  0x08210  b.eq     #0x821c                                       
  0x08214  mov      x0, x20                                       
  0x08218  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x0821c  ldr      x8, [sp, #8]                                  
  0x08220  ldr      x23, [x8, x28, lsl #3]                        
  0x08224  mov      x0, x19                                       
  0x08228  bl       #0x17a80                                        ; objc:iconMeshViews
  0x0822c  mov      x29, x29                                      
  0x08230  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08234  mov      x24, x0                                       
  0x08238  mov      x2, x23                                       
  0x0823c  bl       #0x174c0                                        ; objc:containsObject:
  0x08240  tbnz     w0, #0, #0x82a0                               
  0x08244  mov      x0, x23                                       
  0x08248  bl       #0x17dc0                                        ; objc:layer
  0x0824c  mov      x29, x29                                      
  0x08250  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08254  mov      x25, x0                                       
  0x08258  mov      x2, x22                                       
  0x0825c  bl       #0x19500                                        ; objc:valueForKey:
  0x08260  mov      x29, x29                                      
  0x08264  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08268  mov      x26, x0                                       
  0x0826c  bl       #0x16dc4                                        ; _objc_release
  0x08270  mov      x0, x25                                       
  0x08274  bl       #0x16dc4                                        ; _objc_release
  0x08278  mov      x0, x24                                       
  0x0827c  bl       #0x16dc4                                        ; _objc_release
  0x08280  cbnz     x26, #0x82a8                                  
  0x08284  mov      x0, x19                                       
  0x08288  bl       #0x17a80                                        ; objc:iconMeshViews
  0x0828c  mov      x29, x29                                      
  0x08290  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08294  mov      x24, x0                                       
  0x08298  mov      x2, x23                                       
  0x0829c  bl       #0x170c0                                        ; objc:addObject:
  0x082a0  mov      x0, x24                                       
  0x082a4  bl       #0x16dc4                                        ; _objc_release
  0x082a8  add      x28, x28, #1                                  
  0x082ac  cmp      x21, x28                                      
  0x082b0  b.ne     #0x8204                                       
  0x082b4  mov      x2, sp                                        
  0x082b8  add      x3, sp, #0x40                                 
  0x082bc  mov      x0, x20                                       
  0x082c0  mov      w4, #0x10                                     
  0x082c4  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x082c8  mov      x21, x0                                       
  0x082cc  cbnz     x0, #0x8200                                   
  0x082d0  mov      x0, x20                                       
  0x082d4  bl       #0x16dc4                                        ; _objc_release
  0x082d8  mov      x0, x20                                       
  0x082dc  bl       #0x16dc4                                        ; _objc_release
  0x082e0  ldur     x8, [x29, #-0x60]                             
  0x082e4  adrp     x9, #0x20000                                  
  0x082e8  ldr      x9, [x9, #0x320]                              
  0x082ec  ldr      x9, [x9]                                      
  0x082f0  cmp      x9, x8                                        
  0x082f4  b.ne     #0x8318                                       
  0x082f8  ldp      x29, x30, [sp, #0x120]                        
  0x082fc  ldp      x20, x19, [sp, #0x110]                        
  0x08300  ldp      x22, x21, [sp, #0x100]                        
  0x08304  ldp      x24, x23, [sp, #0xf0]                         
  0x08308  ldp      x26, x25, [sp, #0xe0]                         
  0x0830c  ldp      x28, x27, [sp, #0xd0]                         
  0x08310  add      sp, sp, #0x130                                
  0x08314  retab                                                  
