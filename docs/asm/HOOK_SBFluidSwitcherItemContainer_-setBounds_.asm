HOOK SBFluidSwitcherItemContainer -setBounds: @0xe614  (121 insns)
  0x0e614  pacibsp                                                
  0x0e618  sub      sp, sp, #0x150                                
  0x0e61c  stp      d11, d10, [sp, #0xd0]                         
  0x0e620  stp      d9, d8, [sp, #0xe0]                           
  0x0e624  stp      x28, x27, [sp, #0xf0]                         
  0x0e628  stp      x26, x25, [sp, #0x100]                        
  0x0e62c  stp      x24, x23, [sp, #0x110]                        
  0x0e630  stp      x22, x21, [sp, #0x120]                        
  0x0e634  stp      x20, x19, [sp, #0x130]                        
  0x0e638  stp      x29, x30, [sp, #0x140]                        
  0x0e63c  add      x29, sp, #0x140                               
  0x0e640  fmov     d8, d3                                        
  0x0e644  fmov     d9, d2                                        
  0x0e648  fmov     d10, d1                                       
  0x0e64c  fmov     d11, d0                                       
  0x0e650  mov      x19, x0                                       
  0x0e654  adrp     x8, #0x20000                                  
  0x0e658  ldr      x8, [x8, #0x320]                              
  0x0e65c  ldr      x8, [x8]                                      
  0x0e660  stur     x8, [x29, #-0x80]                             
  0x0e664  adrp     x8, #0x25000                                  
  0x0e668  ldr      x8, [x8, #0x9b8]                              
  0x0e66c  blraaz   x8                                            
  0x0e670  adrp     x21, #0x25000                                 
  0x0e674  ldr      x0, [x21, #0x890]                             
  0x0e678  bl       #0x17660                                        ; objc:count
  0x0e67c  cbz      x0, #0xe7b8                                   
  0x0e680  adrp     x8, #0x24000                                  
  0x0e684  ldr      x1, [x8, #0xce0]                              
  0x0e688  mov      x0, x19                                       
  0x0e68c  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0e690  tbz      w0, #0, #0xe7b8                               
  0x0e694  mov      x0, x19                                       
  0x0e698  bl       #0x17260                                        ; objc:appLayout
  0x0e69c  mov      x29, x29                                      
  0x0e6a0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e6a4  cbz      x0, #0xe7b8                                   
  0x0e6a8  mov      x20, x0                                       
  0x0e6ac  movi     v0.2d, #0000000000000000                      
  0x0e6b0  stp      q0, q0, [sp, #0x20]                           
  0x0e6b4  stp      q0, q0, [sp]                                  
  0x0e6b8  ldr      x0, [x21, #0x890]                             
  0x0e6bc  bl       #0x175e0                                        ; objc:copy
  0x0e6c0  mov      x21, x0                                       
  0x0e6c4  mov      x2, sp                                        
  0x0e6c8  add      x3, sp, #0x40                                 
  0x0e6cc  mov      w4, #0x10                                     
  0x0e6d0  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0e6d4  cbz      x0, #0xe7a8                                   
  0x0e6d8  mov      x22, x0                                       
  0x0e6dc  ldr      x8, [sp, #0x10]                               
  0x0e6e0  ldr      x27, [x8]                                     
  0x0e6e4  mov      x28, #0                                       
  0x0e6e8  ldr      x8, [sp, #0x10]                               
  0x0e6ec  ldr      x8, [x8]                                      
  0x0e6f0  cmp      x8, x27                                       
  0x0e6f4  b.eq     #0xe700                                       
  0x0e6f8  mov      x0, x21                                       
  0x0e6fc  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x0e700  ldr      x8, [sp, #8]                                  
  0x0e704  ldr      x23, [x8, x28, lsl #3]                        
  0x0e708  mov      x0, x23                                       
  0x0e70c  bl       #0x18060                                        ; objc:native
  0x0e710  cbz      w0, #0xe760                                   
  0x0e714  mov      x0, x23                                       
  0x0e718  bl       #0x17e80                                        ; objc:link
  0x0e71c  mov      x29, x29                                      
  0x0e720  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e724  cbz      x0, #0xe760                                   
  0x0e728  mov      x24, x0                                       
  0x0e72c  mov      x0, x23                                       
  0x0e730  bl       #0x17260                                        ; objc:appLayout
  0x0e734  mov      x29, x29                                      
  0x0e738  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0e73c  mov      x25, x0                                       
  0x0e740  mov      x2, x20                                       
  0x0e744  bl       #0x17c80                                        ; objc:isEqual:
  0x0e748  mov      x26, x0                                       
  0x0e74c  mov      x0, x25                                       
  0x0e750  bl       #0x16dc4                                        ; _objc_release
  0x0e754  mov      x0, x24                                       
  0x0e758  bl       #0x16dc4                                        ; _objc_release
  0x0e75c  cbnz     w26, #0xe78c                                  
  0x0e760  add      x28, x28, #1                                  
  0x0e764  cmp      x22, x28                                      
  0x0e768  b.ne     #0xe6e8                                       
  0x0e76c  mov      x2, sp                                        
  0x0e770  add      x3, sp, #0x40                                 
  0x0e774  mov      x0, x21                                       
  0x0e778  mov      w4, #0x10                                     
  0x0e77c  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0e780  mov      x22, x0                                       
  0x0e784  cbnz     x0, #0xe6e4                                   
  0x0e788  b        #0xe7a8                                         ; sub_e7a8
  0x0e78c  mov      x0, x23                                       
  0x0e790  fmov     d0, d11                                       
  0x0e794  fmov     d1, d10                                       
  0x0e798  fmov     d2, d9                                        
  0x0e79c  fmov     d3, d8                                        
  0x0e7a0  mov      x2, x19                                       
  0x0e7a4  bl       #0x180a0                                        ; objc:nativeBounds:of:
  0x0e7a8  mov      x0, x21                                       
  0x0e7ac  bl       #0x16dc4                                        ; _objc_release
  0x0e7b0  mov      x0, x20                                       
  0x0e7b4  bl       #0x16dc4                                        ; _objc_release
  0x0e7b8  ldur     x8, [x29, #-0x80]                             
  0x0e7bc  adrp     x9, #0x20000                                  
  0x0e7c0  ldr      x9, [x9, #0x320]                              
  0x0e7c4  ldr      x9, [x9]                                      
  0x0e7c8  cmp      x9, x8                                        
  0x0e7cc  b.ne     #0xe7f8                                       
  0x0e7d0  ldp      x29, x30, [sp, #0x140]                        
  0x0e7d4  ldp      x20, x19, [sp, #0x130]                        
  0x0e7d8  ldp      x22, x21, [sp, #0x120]                        
  0x0e7dc  ldp      x24, x23, [sp, #0x110]                        
  0x0e7e0  ldp      x26, x25, [sp, #0x100]                        
  0x0e7e4  ldp      x28, x27, [sp, #0xf0]                         
  0x0e7e8  ldp      d9, d8, [sp, #0xe0]                           
  0x0e7ec  ldp      d11, d10, [sp, #0xd0]                         
  0x0e7f0  add      sp, sp, #0x150                                
  0x0e7f4  retab                                                  
