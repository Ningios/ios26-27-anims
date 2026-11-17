HOOK SBFluidSwitcherViewController -_iconImageFrameForIconView: @0xef54  (92 insns)
  0x0ef54  pacibsp                                                
  0x0ef58  sub      sp, sp, #0xb0                                 
  0x0ef5c  stp      d15, d14, [sp, #0x40]                         
  0x0ef60  stp      d13, d12, [sp, #0x50]                         
  0x0ef64  stp      d11, d10, [sp, #0x60]                         
  0x0ef68  stp      d9, d8, [sp, #0x70]                           
  0x0ef6c  stp      x22, x21, [sp, #0x80]                         
  0x0ef70  stp      x20, x19, [sp, #0x90]                         
  0x0ef74  stp      x29, x30, [sp, #0xa0]                         
  0x0ef78  add      x29, sp, #0xa0                                
  0x0ef7c  mov      x20, x1                                       
  0x0ef80  mov      x21, x0                                       
  0x0ef84  mov      x0, x2                                        
  0x0ef88  bl       #0x16dd4                                        ; _objc_retain
  0x0ef8c  mov      x19, x0                                       
  0x0ef90  adrp     x8, #0x25000                                  
  0x0ef94  ldr      x8, [x8, #0x9e0]                              
  0x0ef98  mov      x0, x21                                       
  0x0ef9c  mov      x1, x20                                       
  0x0efa0  mov      x2, x19                                       
  0x0efa4  blraaz   x8                                            
  0x0efa8  fmov     d10, d0                                       
  0x0efac  fmov     d11, d1                                       
  0x0efb0  fmov     d8, d2                                        
  0x0efb4  fmov     d9, d3                                        
  0x0efb8  bl       #0x73d4                                         ; sub_73d4
  0x0efbc  cbz      w0, #0xf088                                   
  0x0efc0  adrp     x8, #0x25000                                  
  0x0efc4  ldr      w8, [x8, #0xb08]                              
  0x0efc8  cmp      w8, #0                                        
  0x0efcc  b.gt     #0xf088                                       
  0x0efd0  fmov     d0, d10                                       
  0x0efd4  fmov     d1, d11                                       
  0x0efd8  fmov     d2, d8                                        
  0x0efdc  fmov     d3, d9                                        
  0x0efe0  bl       #0x16b64                                        ; _CGRectIsEmpty
  0x0efe4  cbz      x19, #0xf088                                  
  0x0efe8  tbnz     w0, #0, #0xf088                               
  0x0efec  adrp     x8, #0x24000                                  
  0x0eff0  ldr      x1, [x8, #0xed8]                              
  0x0eff4  mov      x0, x19                                       
  0x0eff8  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0effc  tbz      w0, #0, #0xf088                               
  0x0f000  mov      x0, x19                                       
  0x0f004  bl       #0x16e54                                        ; _object_getClass
  0x0f008  adrp     x1, #0x1a000                                  
  0x0f00c  add      x1, x1, #0x9b1                                
  0x0f010  bl       #0x16c24                                        ; _class_getInstanceVariable
  0x0f014  mov      x20, x0                                       
  0x0f018  cbz      x0, #0xf050                                   
  0x0f01c  mov      x0, x20                                       
  0x0f020  bl       #0x16c94                                        ; _ivar_getTypeEncoding
  0x0f024  ldrb     w8, [x0]                                      
  0x0f028  cmp      w8, #0x40                                     
  0x0f02c  b.ne     #0xf04c                                       
  0x0f030  mov      x0, x19                                       
  0x0f034  mov      x1, x20                                       
  0x0f038  bl       #0x16e64                                        ; _object_getIvar
  0x0f03c  mov      x29, x29                                      
  0x0f040  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0f044  mov      x20, x0                                       
  0x0f048  b        #0xf050                                         ; sub_f050
  0x0f04c  mov      x20, #0                                       
  0x0f050  adrp     x8, #0x25000                                  
  0x0f054  ldr      x0, [x8, #0x658]                              
  0x0f058  bl       #0x16d84                                        ; _objc_opt_class
  0x0f05c  mov      x1, x0                                        
  0x0f060  mov      x0, x20                                       
  0x0f064  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0f068  tbz      w0, #0, #0xf080                               
  0x0f06c  mov      x0, x20                                       
  0x0f070  bl       #0x17460                                        ; objc:bounds
  0x0f074  fmov     d12, #1.00000000                              
  0x0f078  fcmp     d2, d12                                       
  0x0f07c  b.pl     #0xf0c4                                       
  0x0f080  mov      x0, x20                                       
  0x0f084  bl       #0x16dc4                                        ; _objc_release
  0x0f088  mov      x0, x19                                       
  0x0f08c  bl       #0x16dc4                                        ; _objc_release
  0x0f090  fmov     d0, d10                                       
  0x0f094  fmov     d1, d11                                       
  0x0f098  fmov     d2, d8                                        
  0x0f09c  fmov     d3, d9                                        
  0x0f0a0  ldp      x29, x30, [sp, #0xa0]                         
  0x0f0a4  ldp      x20, x19, [sp, #0x90]                         
  0x0f0a8  ldp      x22, x21, [sp, #0x80]                         
  0x0f0ac  ldp      d9, d8, [sp, #0x70]                           
  0x0f0b0  ldp      d11, d10, [sp, #0x60]                         
  0x0f0b4  ldp      d13, d12, [sp, #0x50]                         
  0x0f0b8  ldp      d15, d14, [sp, #0x40]                         
  0x0f0bc  add      sp, sp, #0xb0                                 
  0x0f0c0  retab                                                  
