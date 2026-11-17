HOOK SBFluidSwitcherViewController -_iconForWorkspaceEntity: @0xe884  (98 insns)
  0x0e884  pacibsp                                                
  0x0e888  sub      sp, sp, #0x190                                
  0x0e88c  stp      d11, d10, [sp, #0x110]                        
  0x0e890  stp      d9, d8, [sp, #0x120]                          
  0x0e894  stp      x28, x27, [sp, #0x130]                        
  0x0e898  stp      x26, x25, [sp, #0x140]                        
  0x0e89c  stp      x24, x23, [sp, #0x150]                        
  0x0e8a0  stp      x22, x21, [sp, #0x160]                        
  0x0e8a4  stp      x20, x19, [sp, #0x170]                        
  0x0e8a8  stp      x29, x30, [sp, #0x180]                        
  0x0e8ac  add      x29, sp, #0x180                               
  0x0e8b0  mov      x20, x1                                       
  0x0e8b4  mov      x21, x0                                       
  0x0e8b8  adrp     x8, #0x20000                                  
  0x0e8bc  ldr      x8, [x8, #0x320]                              
  0x0e8c0  ldr      x8, [x8]                                      
  0x0e8c4  stur     x8, [x29, #-0x80]                             
  0x0e8c8  mov      x0, x2                                        
  0x0e8cc  bl       #0x16dd4                                        ; _objc_retain
  0x0e8d0  mov      x19, x0                                       
  0x0e8d4  adrp     x8, #0x25000                                  
  0x0e8d8  ldr      x8, [x8, #0x9c8]                              
  0x0e8dc  mov      x0, x21                                       
  0x0e8e0  mov      x1, x20                                       
  0x0e8e4  mov      x2, x19                                       
  0x0e8e8  blraaz   x8                                            
  0x0e8ec  mov      x29, x29                                      
  0x0e8f0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e8f4  mov      x20, x0                                       
  0x0e8f8  cbnz     x0, #0xe9a0                                   
  0x0e8fc  bl       #0x73d4                                         ; sub_73d4
  0x0e900  cbz      w0, #0xe9a0                                   
  0x0e904  adrp     x8, #0x25000                                  
  0x0e908  ldr      x0, [x8, #0x660]                              
  0x0e90c  bl       #0x17ce0                                        ; objc:isMainThread
  0x0e910  cbz      w0, #0xe9a0                                   
  0x0e914  adrp     x8, #0x25000                                  
  0x0e918  ldr      x1, [x8, #0xd0]                               
  0x0e91c  mov      x0, x19                                       
  0x0e920  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0e924  tbz      w0, #0, #0xe9a0                               
  0x0e928  mov      x0, x19                                       
  0x0e92c  mov      w2, #0x2a                                     
  0x0e930  bl       #0x18220                                        ; objc:objectForActivationSetting:
  0x0e934  mov      x29, x29                                      
  0x0e938  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e93c  mov      x25, x0                                       
  0x0e940  cbnz     x0, #0xea5c                                   
  0x0e944  adrp     x8, #0x24000                                  
  0x0e948  ldr      x1, [x8, #0xf60]                              
  0x0e94c  mov      x0, x19                                       
  0x0e950  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0e954  tbz      w0, #0, #0xea10                               
  0x0e958  mov      x0, x19                                       
  0x0e95c  bl       #0x17c60                                        ; objc:isDeviceApplicationSceneEntity
  0x0e960  cbz      w0, #0xea10                                   
  0x0e964  mov      x0, x19                                       
  0x0e968  bl       #0x17740                                        ; objc:deviceApplicationSceneEntity
  0x0e96c  mov      x29, x29                                      
  0x0e970  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e974  mov      x21, x0                                       
  0x0e978  adrp     x8, #0x25000                                  
  0x0e97c  ldr      x1, [x8, #0x1f0]                              
  0x0e980  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0e984  tbz      w0, #0, #0xea18                               
  0x0e988  mov      x0, x21                                       
  0x0e98c  bl       #0x186a0                                        ; objc:sceneHandle
  0x0e990  mov      x29, x29                                      
  0x0e994  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e998  mov      x22, x0                                       
  0x0e99c  b        #0xea1c                                         ; sub_ea1c
  0x0e9a0  mov      x0, x20                                       
  0x0e9a4  bl       #0x16dd4                                        ; _objc_retain
  0x0e9a8  mov      x21, x0                                       
  0x0e9ac  mov      x0, x20                                       
  0x0e9b0  bl       #0x16dc4                                        ; _objc_release
  0x0e9b4  mov      x0, x19                                       
  0x0e9b8  bl       #0x16dc4                                        ; _objc_release
  0x0e9bc  ldur     x8, [x29, #-0x80]                             
  0x0e9c0  adrp     x9, #0x20000                                  
  0x0e9c4  ldr      x9, [x9, #0x320]                              
  0x0e9c8  ldr      x9, [x9]                                      
  0x0e9cc  cmp      x9, x8                                        
  0x0e9d0  b.ne     #0xed08                                       
  0x0e9d4  mov      x0, x21                                       
  0x0e9d8  ldp      x29, x30, [sp, #0x180]                        
  0x0e9dc  ldp      x20, x19, [sp, #0x170]                        
  0x0e9e0  ldp      x22, x21, [sp, #0x160]                        
  0x0e9e4  ldp      x24, x23, [sp, #0x150]                        
  0x0e9e8  ldp      x26, x25, [sp, #0x140]                        
  0x0e9ec  ldp      x28, x27, [sp, #0x130]                        
  0x0e9f0  ldp      d9, d8, [sp, #0x120]                          
  0x0e9f4  ldp      d11, d10, [sp, #0x110]                        
  0x0e9f8  add      sp, sp, #0x190                                
  0x0e9fc  autibsp                                                
  0x0ea00  eor      x16, x30, x30, lsl #1                         
  0x0ea04  tbz      x16, #0x3e, #0xea0c                           
  0x0ea08  brk      #0xc471                                       
