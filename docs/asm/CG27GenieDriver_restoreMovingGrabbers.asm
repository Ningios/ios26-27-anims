CG27GenieDriver restoreMovingGrabbers @0x451c  (128 insns)
types: v16@0:8
  0x0451c  pacibsp                                                
  0x04520  sub      sp, sp, #0x130                                
  0x04524  stp      x28, x27, [sp, #0xd0]                         
  0x04528  stp      x26, x25, [sp, #0xe0]                         
  0x0452c  stp      x24, x23, [sp, #0xf0]                         
  0x04530  stp      x22, x21, [sp, #0x100]                        
  0x04534  stp      x20, x19, [sp, #0x110]                        
  0x04538  stp      x29, x30, [sp, #0x120]                        
  0x0453c  add      x29, sp, #0x120                               
  0x04540  mov      x19, x0                                       
  0x04544  adrp     x8, #0x20000                                  
  0x04548  ldr      x8, [x8, #0x320]                              
  0x0454c  ldr      x8, [x8]                                      
  0x04550  stur     x8, [x29, #-0x60]                             
  0x04554  movi     v0.2d, #0000000000000000                      
  0x04558  stp      q0, q0, [sp]                                  
  0x0455c  stp      q0, q0, [sp, #0x20]                           
  0x04560  bl       #0x18020                                        ; objc:movingGrabbers
  0x04564  mov      x29, x29                                      
  0x04568  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0456c  mov      x21, x0                                       
  0x04570  bl       #0x17180                                        ; objc:allObjects
  0x04574  mov      x29, x29                                      
  0x04578  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0457c  mov      x20, x0                                       
  0x04580  mov      x0, x21                                       
  0x04584  bl       #0x16dc4                                        ; _objc_release
  0x04588  mov      x2, sp                                        
  0x0458c  add      x3, sp, #0x40                                 
  0x04590  mov      x0, x20                                       
  0x04594  mov      w4, #0x10                                     
  0x04598  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0459c  cbz      x0, #0x46b8                                   
  0x045a0  mov      x21, x0                                       
  0x045a4  ldr      x8, [sp, #0x10]                               
  0x045a8  ldr      x26, [x8]                                     
  0x045ac  adrp     x27, #0x25000                                 
  0x045b0  adrp     x22, #0x20000                                 
  0x045b4  add      x22, x22, #0x638                              
  0x045b8  mov      x28, #0                                       
  0x045bc  ldr      x8, [sp, #0x10]                               
  0x045c0  ldr      x8, [x8]                                      
  0x045c4  cmp      x8, x26                                       
  0x045c8  b.eq     #0x45d4                                       
  0x045cc  mov      x0, x20                                       
  0x045d0  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x045d4  ldr      x8, [sp, #8]                                  
  0x045d8  ldr      x23, [x8, x28, lsl #3]                        
  0x045dc  ldr      x1, [x27, #0x820]                             
  0x045e0  mov      x0, x23                                       
  0x045e4  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x045e8  mov      x29, x29                                      
  0x045ec  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x045f0  mov      x24, x0                                       
  0x045f4  mov      x0, x19                                       
  0x045f8  bl       #0x18000                                        ; objc:movingGrabberToken
  0x045fc  mov      x29, x29                                      
  0x04600  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04604  mov      x25, x0                                       
  0x04608  bl       #0x16dc4                                        ; _objc_release
  0x0460c  mov      x0, x24                                       
  0x04610  bl       #0x16dc4                                        ; _objc_release
  0x04614  cmp      x24, x25                                      
  0x04618  b.ne     #0x4690                                       
  0x0461c  adrp     x8, #0x25000                                  
  0x04620  ldr      x1, [x8, #0x828]                              
  0x04624  mov      x0, x23                                       
  0x04628  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x0462c  mov      x29, x29                                      
  0x04630  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04634  mov      x24, x0                                       
  0x04638  ldr      x1, [x27, #0x820]                             
  0x0463c  mov      x0, x23                                       
  0x04640  mov      x2, #0                                        
  0x04644  mov      w3, #1                                        
  0x04648  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0464c  mov      x0, x23                                       
  0x04650  bl       #0x17dc0                                        ; objc:layer
  0x04654  mov      x29, x29                                      
  0x04658  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0465c  mov      x25, x0                                       
  0x04660  mov      x2, x22                                       
  0x04664  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x04668  mov      x0, x25                                       
  0x0466c  bl       #0x16dc4                                        ; _objc_release
  0x04670  cbz      x24, #0x4688                                  
  0x04674  mov      x0, x24                                       
  0x04678  bl       #0x17440                                        ; objc:boolValue
  0x0467c  mov      x1, x0                                        
  0x04680  mov      x0, x23                                       
  0x04684  bl       #0x4720                                         ; sub_4720
  0x04688  mov      x0, x24                                       
  0x0468c  bl       #0x16dc4                                        ; _objc_release
  0x04690  add      x28, x28, #1                                  
  0x04694  cmp      x21, x28                                      
  0x04698  b.ne     #0x45bc                                       
  0x0469c  mov      x2, sp                                        
  0x046a0  add      x3, sp, #0x40                                 
  0x046a4  mov      x0, x20                                       
  0x046a8  mov      w4, #0x10                                     
  0x046ac  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x046b0  mov      x21, x0                                       
  0x046b4  cbnz     x0, #0x45b8                                   
  0x046b8  mov      x0, x20                                       
  0x046bc  bl       #0x16dc4                                        ; _objc_release
  0x046c0  mov      x0, x19                                       
  0x046c4  mov      x2, #0                                        
  0x046c8  bl       #0x18d00                                        ; objc:setMovingGrabbers:
  0x046cc  mov      x0, x19                                       
  0x046d0  mov      x2, #0                                        
  0x046d4  bl       #0x18ce0                                        ; objc:setMovingGrabberToken:
  0x046d8  mov      x0, x19                                       
  0x046dc  mov      x2, #0                                        
  0x046e0  bl       #0x18cc0                                        ; objc:setMovingGrabberSearches:
  0x046e4  ldur     x8, [x29, #-0x60]                             
  0x046e8  adrp     x9, #0x20000                                  
  0x046ec  ldr      x9, [x9, #0x320]                              
  0x046f0  ldr      x9, [x9]                                      
  0x046f4  cmp      x9, x8                                        
  0x046f8  b.ne     #0x471c                                       
  0x046fc  ldp      x29, x30, [sp, #0x120]                        
  0x04700  ldp      x20, x19, [sp, #0x110]                        
  0x04704  ldp      x22, x21, [sp, #0x100]                        
  0x04708  ldp      x24, x23, [sp, #0xf0]                         
  0x0470c  ldp      x26, x25, [sp, #0xe0]                         
  0x04710  ldp      x28, x27, [sp, #0xd0]                         
  0x04714  add      sp, sp, #0x130                                
  0x04718  retab                                                  
