HOOK SBFluidSwitcherViewController -homeScreenIconCornerRadiusForAppLayout: @0xed0c  (84 insns)
  0x0ed0c  pacibsp                                                
  0x0ed10  stp      d13, d12, [sp, #-0x60]!                       
  0x0ed14  stp      d11, d10, [sp, #0x10]                         
  0x0ed18  stp      d9, d8, [sp, #0x20]                           
  0x0ed1c  stp      x22, x21, [sp, #0x30]                         
  0x0ed20  stp      x20, x19, [sp, #0x40]                         
  0x0ed24  stp      x29, x30, [sp, #0x50]                         
  0x0ed28  add      x29, sp, #0x50                                
  0x0ed2c  mov      x20, x1                                       
  0x0ed30  mov      x21, x0                                       
  0x0ed34  mov      x0, x2                                        
  0x0ed38  bl       #0x16dd4                                        ; _objc_retain
  0x0ed3c  mov      x19, x0                                       
  0x0ed40  adrp     x8, #0x25000                                  
  0x0ed44  ldr      x8, [x8, #0x9d0]                              
  0x0ed48  mov      x0, x21                                       
  0x0ed4c  mov      x1, x20                                       
  0x0ed50  mov      x2, x19                                       
  0x0ed54  blraaz   x8                                            
  0x0ed58  fmov     d8, d0                                        
  0x0ed5c  bl       #0x73d4                                         ; sub_73d4
  0x0ed60  cbz      w0, #0xee34                                   
  0x0ed64  adrp     x22, #0x25000                                 
  0x0ed68  ldr      w8, [x22, #0xb08]                             
  0x0ed6c  cmp      w8, #0                                        
  0x0ed70  b.gt     #0xee34                                       
  0x0ed74  fmov     x8, d8                                        
  0x0ed78  and      x9, x8, #0x7fffffffffffffff                   
  0x0ed7c  sub      x10, x9, #1                                   
  0x0ed80  mov      x11, #0xfffffffffffff                         
  0x0ed84  cmp      x10, x11                                      
  0x0ed88  cset     w10, lo                                       
  0x0ed8c  mov      x11, #-0x10000000000000                       
  0x0ed90  add      x11, x9, x11                                  
  0x0ed94  lsr      x11, x11, #0x35                               
  0x0ed98  cmp      x11, #0x3ff                                   
  0x0ed9c  cset     w11, lo                                       
  0x0eda0  cmp      x8, #0                                        
  0x0eda4  csel     w8, wzr, w11, ge                              
  0x0eda8  csel     w10, wzr, w10, ge                             
  0x0edac  mov      x11, #0x7ff0000000000000                      
  0x0edb0  cmp      x9, x11                                       
  0x0edb4  csinc    w9, w10, wzr, ne                              
  0x0edb8  csinc    w9, w9, wzr, le                               
  0x0edbc  orr      w8, w9, w8                                    
  0x0edc0  tbnz     w8, #0, #0xee34                               
  0x0edc4  mov      x0, x21                                       
  0x0edc8  mov      x2, x19                                       
  0x0edcc  bl       #0x17aa0                                        ; objc:iconViewForAppLayout:
  0x0edd0  mov      x29, x29                                      
  0x0edd4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0edd8  mov      x20, x0                                       
  0x0eddc  cbz      x0, #0xee2c                                   
  0x0ede0  mov      x0, x21                                       
  0x0ede4  mov      x2, x20                                       
  0x0ede8  bl       #0x16f40                                        ; objc:_iconImageFrameForIconView:
  0x0edec  fmov     d11, d0                                       
  0x0edf0  fmov     d12, d1                                       
  0x0edf4  fmov     d9, d2                                        
  0x0edf8  fmov     d13, d3                                       
  0x0edfc  ldr      w8, [x22, #0xb08]                             
  0x0ee00  add      w8, w8, #1                                    
  0x0ee04  str      w8, [x22, #0xb08]                             
  0x0ee08  mov      x0, x21                                       
  0x0ee0c  mov      x2, x20                                       
  0x0ee10  bl       #0x16f40                                        ; objc:_iconImageFrameForIconView:
  0x0ee14  fmov     d10, d2                                       
  0x0ee18  ldr      w8, [x22, #0xb08]                             
  0x0ee1c  sub      w8, w8, #1                                    
  0x0ee20  str      w8, [x22, #0xb08]                             
  0x0ee24  bl       #0x16b64                                        ; _CGRectIsEmpty
  0x0ee28  tbz      w0, #0, #0xee5c                               
  0x0ee2c  mov      x0, x20                                       
  0x0ee30  bl       #0x16dc4                                        ; _objc_release
  0x0ee34  mov      x0, x19                                       
  0x0ee38  bl       #0x16dc4                                        ; _objc_release
  0x0ee3c  fmov     d0, d8                                        
  0x0ee40  ldp      x29, x30, [sp, #0x50]                         
  0x0ee44  ldp      x20, x19, [sp, #0x40]                         
  0x0ee48  ldp      x22, x21, [sp, #0x30]                         
  0x0ee4c  ldp      d9, d8, [sp, #0x20]                           
  0x0ee50  ldp      d11, d10, [sp, #0x10]                         
  0x0ee54  ldp      d13, d12, [sp], #0x60                         
  0x0ee58  retab                                                  
