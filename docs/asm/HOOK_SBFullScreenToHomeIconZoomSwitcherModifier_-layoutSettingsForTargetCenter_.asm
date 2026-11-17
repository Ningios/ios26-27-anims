HOOK SBFullScreenToHomeIconZoomSwitcherModifier -layoutSettingsForTargetCenter: @0xc490  (45 insns)
  0x0c490  pacibsp                                                
  0x0c494  stp      d11, d10, [sp, #-0x40]!                       
  0x0c498  stp      d9, d8, [sp, #0x10]                           
  0x0c49c  stp      x20, x19, [sp, #0x20]                         
  0x0c4a0  stp      x29, x30, [sp, #0x30]                         
  0x0c4a4  add      x29, sp, #0x30                                
  0x0c4a8  fmov     d8, d1                                        
  0x0c4ac  fmov     d9, d0                                        
  0x0c4b0  mov      x19, x1                                       
  0x0c4b4  mov      x20, x0                                       
  0x0c4b8  bl       #0x1022c                                        ; sub_1022c
  0x0c4bc  adrp     x8, #0x25000                                  
  0x0c4c0  ldr      x8, [x8, #0x8c8]                              
  0x0c4c4  mov      x0, x20                                       
  0x0c4c8  mov      x1, x19                                       
  0x0c4cc  fmov     d0, d9                                        
  0x0c4d0  fmov     d1, d8                                        
  0x0c4d4  blraaz   x8                                            
  0x0c4d8  mov      x29, x29                                      
  0x0c4dc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c4e0  mov      x19, x0                                       
  0x0c4e4  cbz      x0, #0xc50c                                   
  0x0c4e8  bl       #0x73d4                                         ; sub_73d4
  0x0c4ec  tbz      w0, #0, #0xc50c                               
  0x0c4f0  adrp     x1, #0x1a000                                  
  0x0c4f4  add      x1, x1, #0x5b8                                
  0x0c4f8  mov      x0, x20                                       
  0x0c4fc  bl       #0x801c                                         ; sub_801c
  0x0c500  cmp      x0, #2                                        
  0x0c504  b.hs     #0xc50c                                       
  0x0c508  cbz      x0, #0xc548                                   
  0x0c50c  mov      x0, x19                                       
  0x0c510  bl       #0x16dd4                                        ; _objc_retain
  0x0c514  mov      x20, x0                                       
  0x0c518  mov      x0, x19                                       
  0x0c51c  bl       #0x16dc4                                        ; _objc_release
  0x0c520  mov      x0, x20                                       
  0x0c524  ldp      x29, x30, [sp, #0x30]                         
  0x0c528  ldp      x20, x19, [sp, #0x20]                         
  0x0c52c  ldp      d9, d8, [sp, #0x10]                           
  0x0c530  ldp      d11, d10, [sp], #0x40                         
  0x0c534  autibsp                                                
  0x0c538  eor      x16, x30, x30, lsl #1                         
  0x0c53c  tbz      x16, #0x3e, #0xc544                           
  0x0c540  brk      #0xc471                                       
