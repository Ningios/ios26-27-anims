CG27GenieDriver nativeUpdate: @0xa438  (89 insns)
types: v20@0:8B16
  0x0a438  pacibsp                                                
  0x0a43c  stp      d9, d8, [sp, #-0x70]!                         
  0x0a440  stp      x28, x27, [sp, #0x10]                         
  0x0a444  stp      x26, x25, [sp, #0x20]                         
  0x0a448  stp      x24, x23, [sp, #0x30]                         
  0x0a44c  stp      x22, x21, [sp, #0x40]                         
  0x0a450  stp      x20, x19, [sp, #0x50]                         
  0x0a454  stp      x29, x30, [sp, #0x60]                         
  0x0a458  add      x29, sp, #0x60                                
  0x0a45c  sub      sp, sp, #0x2e0                                
  0x0a460  mov      x20, x2                                       
  0x0a464  mov      x19, x0                                       
  0x0a468  adrp     x8, #0x20000                                  
  0x0a46c  ldr      x8, [x8, #0x320]                              
  0x0a470  ldr      x8, [x8]                                      
  0x0a474  stur     x8, [x29, #-0x68]                             
  0x0a478  tbnz     w2, #0, #0xa48c                               
  0x0a47c  adrp     x8, #0x25000                                  
  0x0a480  ldr      x0, [x8, #0x660]                              
  0x0a484  bl       #0x17ce0                                        ; objc:isMainThread
  0x0a488  cbz      w0, #0xa560                                   
  0x0a48c  add      x0, x19, #0x2dc                               
  0x0a490  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x0a494  ldr      w8, [x19, #0x31c]                             
  0x0a498  cbnz     w8, #0xa74c                                   
  0x0a49c  ldrb     w8, [x19, #0x318]                             
  0x0a4a0  cmp      w8, #1                                        
  0x0a4a4  b.ne     #0xa74c                                       
  0x0a4a8  ldr      x8, [x19, #0x2e0]                             
  0x0a4ac  cbz      x8, #0xa74c                                   
  0x0a4b0  ldr      x0, [x19, #0x2f0]                             
  0x0a4b4  bl       #0x17660                                        ; objc:count
  0x0a4b8  cmp      x0, #0x13                                     
  0x0a4bc  b.ne     #0xa74c                                       
  0x0a4c0  mov      x22, #0                                       
  0x0a4c4  add      x8, x19, #0x2f8                               
  0x0a4c8  ldr      q0, [x8]                                      
  0x0a4cc  add      x8, sp, #0x129                                
  0x0a4d0  stur     q0, [x8, #0xff]                               
  0x0a4d4  ldr      d0, [x19, #0x308]                             
  0x0a4d8  str      d0, [sp, #0x238]                              
  0x0a4dc  add      x23, sp, #8                                   
  0x0a4e0  mov      x26, #0                                       
  0x0a4e4  lsl      x24, x22, #1                                  
  0x0a4e8  mov      w8, #1                                        
  0x0a4ec  add      x25, x23, x22, lsl #4                         
  0x0a4f0  mov      x27, x8                                       
  0x0a4f4  ldr      x0, [x19, #0x2f0]                             
  0x0a4f8  orr      x2, x26, x24                                  
  0x0a4fc  bl       #0x18200                                        ; objc:objectAtIndexedSubscript:
  0x0a500  mov      x29, x29                                      
  0x0a504  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0a508  mov      x21, x0                                       
  0x0a50c  cbz      w20, #0xa518                                  
  0x0a510  bl       #0x18380                                        ; objc:presentationValue
  0x0a514  b        #0xa51c                                         ; sub_a51c
  0x0a518  bl       #0x194e0                                        ; objc:value
  0x0a51c  str      d0, [x25, x26, lsl #3]                        
  0x0a520  mov      x0, x21                                       
  0x0a524  bl       #0x16dc4                                        ; _objc_release
  0x0a528  mov      w8, #0                                        
  0x0a52c  mov      w26, #1                                       
  0x0a530  tbnz     w27, #0, #0xa4f0                              
  0x0a534  add      x22, x22, #1                                  
  0x0a538  cmp      x22, #9                                       
  0x0a53c  b.ne     #0xa4e0                                       
  0x0a540  ldr      x0, [x19, #0x2f0]                             
  0x0a544  bl       #0x17d60                                        ; objc:lastObject
  0x0a548  mov      x29, x29                                      
  0x0a54c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0a550  mov      x21, x0                                       
  0x0a554  tbz      w20, #0, #0xa59c                              
  0x0a558  bl       #0x18380                                        ; objc:presentationValue
  0x0a55c  b        #0xa5a0                                         ; sub_a5a0
  0x0a560  ldur     x8, [x29, #-0x68]                             
  0x0a564  adrp     x9, #0x20000                                  
  0x0a568  ldr      x9, [x9, #0x320]                              
  0x0a56c  ldr      x9, [x9]                                      
  0x0a570  cmp      x9, x8                                        
  0x0a574  b.ne     #0xa79c                                       
  0x0a578  add      sp, sp, #0x2e0                                
  0x0a57c  ldp      x29, x30, [sp, #0x60]                         
  0x0a580  ldp      x20, x19, [sp, #0x50]                         
  0x0a584  ldp      x22, x21, [sp, #0x40]                         
  0x0a588  ldp      x24, x23, [sp, #0x30]                         
  0x0a58c  ldp      x26, x25, [sp, #0x20]                         
  0x0a590  ldp      x28, x27, [sp, #0x10]                         
  0x0a594  ldp      d9, d8, [sp], #0x70                           
  0x0a598  retab                                                  
