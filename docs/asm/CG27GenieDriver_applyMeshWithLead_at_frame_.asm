CG27GenieDriver applyMeshWithLead:at:frame: @0x53a0  (510 insns)
types: v40@0:8d16d24d32
  0x053a0  pacibsp                                                
  0x053a4  stp      d13, d12, [sp, #-0x90]!                       
  0x053a8  stp      d11, d10, [sp, #0x10]                         
  0x053ac  stp      d9, d8, [sp, #0x20]                           
  0x053b0  stp      x28, x27, [sp, #0x30]                         
  0x053b4  stp      x26, x25, [sp, #0x40]                         
  0x053b8  stp      x24, x23, [sp, #0x50]                         
  0x053bc  stp      x22, x21, [sp, #0x60]                         
  0x053c0  stp      x20, x19, [sp, #0x70]                         
  0x053c4  stp      x29, x30, [sp, #0x80]                         
  0x053c8  add      x29, sp, #0x80                                
  0x053cc  sub      sp, sp, #0x570                                
  0x053d0  fmov     d9, d2                                        
  0x053d4  fmov     d8, d1                                        
  0x053d8  fmov     d10, d0                                       
  0x053dc  mov      x19, x0                                       
  0x053e0  adrp     x8, #0x20000                                  
  0x053e4  ldr      x8, [x8, #0x320]                              
  0x053e8  ldr      x8, [x8]                                      
  0x053ec  stur     x8, [x29, #-0x90]                             
  0x053f0  add      x0, sp, #0x2a0                                
  0x053f4  add      x1, x19, #8                                   
  0x053f8  mov      w2, #0x240                                    
  0x053fc  bl       #0x16ca4                                        ; _memcpy
  0x05400  fcmp     d10, #0.0                                     
  0x05404  b.le     #0x5424                                       
  0x05408  adrp     x8, #0x19000                                  
  0x0540c  ldr      d0, [x8, #0xac0]                              
  0x05410  fcmp     d10, d0                                       
  0x05414  b.pl     #0x5424                                       
  0x05418  add      x0, sp, #0x2a0                                
  0x0541c  fmov     d0, d10                                       
  0x05420  bl       #0x5b9c                                         ; sub_5b9c
  0x05424  ldr      d0, [sp, #0x498]                              
  0x05428  mov      x0, x19                                       
  0x0542c  bl       #0x18ee0                                        ; objc:setRenderedB:
  0x05430  add      x2, sp, #0x2a0                                
  0x05434  mov      x0, x19                                       
  0x05438  bl       #0x17f40                                        ; objc:meshForEngine:
  0x0543c  mov      x29, x29                                      
  0x05440  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05444  mov      x23, x0                                       
  0x05448  add      x2, sp, #0x2a0                                
  0x0544c  add      x3, x19, #0x248                               
  0x05450  mov      x0, x19                                       
  0x05454  bl       #0x17800                                        ; objc:engine:xy:
  0x05458  mov      x22, #0                                       
  0x0545c  mov      w8, #1                                        
  0x05460  strb     w8, [x19, #0x2d8]                             
  0x05464  adrp     x8, #0x19000                                  
  0x05468  ldr      d0, [x8, #0xae8]                              
  0x0546c  fcmp     d9, d0                                        
  0x05470  b.pl     #0x5528                                       
  0x05474  fcmp     d8, #0.0                                      
  0x05478  b.le     #0x5528                                       
  0x0547c  adrp     x8, #0x19000                                  
  0x05480  ldr      d0, [x8, #0xaf0]                              
  0x05484  fcmp     d9, d0                                        
  0x05488  mov      x21, x22                                      
  0x0548c  b.le     #0x5738                                       
  0x05490  mov      x8, #0                                        
  0x05494  ldr      d0, [sp, #0x4a8]                              
  0x05498  ldr      d1, [sp, #0x498]                              
  0x0549c  ldr      d2, [sp, #0x4a0]                              
  0x054a0  fabd     d0, d1, d0                                    
  0x054a4  fabs     d2, d2                                        
  0x054a8  adrp     x9, #0x19000                                  
  0x054ac  ldr      d1, [x9, #0xaf8]                              
  0x054b0  fmadd    d0, d2, d1, d0                                
  0x054b4  add      x9, sp, #0x2a0                                
  0x054b8  add      x10, x9, #0x120                               
  0x054bc  add      x11, x9, #0x90                                
  0x054c0  mov      x14, #0                                       
  0x054c4  add      x12, x9, x8, lsl #4                           
  0x054c8  mov      w16, #1                                       
  0x054cc  add      x13, x10, x8, lsl #4                          
  0x054d0  add      x15, x11, x8, lsl #4                          
  0x054d4  mov      x17, x16                                      
  0x054d8  ldr      d2, [x12, x14, lsl #3]                        
  0x054dc  ldr      d3, [x13, x14, lsl #3]                        
  0x054e0  ldr      d4, [x15, x14, lsl #3]                        
  0x054e4  fabd     d2, d2, d3                                    
  0x054e8  fabs     d3, d4                                        
  0x054ec  fmadd    d2, d3, d1, d2                                
  0x054f0  fadd     d0, d0, d2                                    
  0x054f4  mov      w14, #1                                       
  0x054f8  mov      w16, #0                                       
  0x054fc  tbnz     w17, #0, #0x54d4                              
  0x05500  add      x8, x8, #1                                    
  0x05504  cmp      x8, #9                                        
  0x05508  b.ne     #0x54c0                                       
  0x0550c  adrp     x8, #0x19000                                  
  0x05510  ldr      d1, [x8, #0xb00]                              
  0x05514  fcmp     d0, d1                                        
  0x05518  b.pl     #0x5530                                       
  0x0551c  mov      x22, #0                                       
  0x05520  mov      x21, #0                                       
  0x05524  b        #0x5738                                         ; sub_5738
  0x05528  mov      x21, x22                                      
  0x0552c  b        #0x5738                                         ; sub_5738
  0x05530  adrp     x8, #0x19000                                  
  0x05534  ldr      d0, [x8, #0xb08]                              
  0x05538  mov      x8, #0x405e000000000000                       
  0x0553c  fmov     d1, x8                                        
  0x05540  fmadd    d0, d9, d1, d0                                
  0x05544  frintp   d0, d0                                        
  0x05548  fmov     d1, #2.00000000                               
  0x0554c  fminnm   d0, d0, d1                                    
  0x05550  fcvtzs   w21, d0                                       
  0x05554  lsl      w20, w21, #3                                  
  0x05558  fmov     d0, #8.00000000                               
  0x0555c  fmul     d0, d9, d0                                    
  0x05560  scvtf    d1, w20                                       
  0x05564  fdiv     d9, d0, d1                                    
  0x05568  adrp     x22, #0x25000                                 
  0x0556c  ldr      x0, [x22, #0x620]                             
  0x05570  mov      x2, x23                                       
  0x05574  bl       #0x17340                                        ; objc:arrayWithObject:
  0x05578  mov      x29, x29                                      
  0x0557c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05580  mov      x2, x23                                       
  0x05584  mov      x23, x0                                       
  0x05588  ldr      x0, [x22, #0x620]                             
  0x0558c  mov      x26, x2                                       
  0x05590  bl       #0x17340                                        ; objc:arrayWithObject:
  0x05594  mov      x29, x29                                      
  0x05598  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0559c  mov      x24, x0                                       
  0x055a0  ldr      x0, [x22, #0x620]                             
  0x055a4  adrp     x2, #0x21000                                  
  0x055a8  add      x2, x2, #0x108                                
  0x055ac  bl       #0x17340                                        ; objc:arrayWithObject:
  0x055b0  mov      x29, x29                                      
  0x055b4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x055b8  mov      x25, x0                                       
  0x055bc  add      x0, sp, #0x60                                 
  0x055c0  add      x1, sp, #0x2a0                                
  0x055c4  mov      w2, #0x240                                    
  0x055c8  bl       #0x16ca4                                        ; _memcpy
  0x055cc  mov      w8, #1                                        
  0x055d0  bfi      w8, w21, #3, #0x1d                            
  0x055d4  scvtf    d10, w8                                       
  0x055d8  cmp      w21, #1                                       
  0x055dc  b.lt     #0x568c                                       
  0x055e0  cmp      w20, #1                                       
  0x055e4  csinc    w21, w20, wzr, gt                             
  0x055e8  fmov     d11, #1.00000000                              
  0x055ec  adrp     x22, #0x25000                                 
  0x055f0  fmov     d12, #1.00000000                              
  0x055f4  add      x0, sp, #0x60                                 
  0x055f8  fmov     d0, d9                                        
  0x055fc  bl       #0x5b9c                                         ; sub_5b9c
  0x05600  add      x2, sp, #0x60                                 
  0x05604  mov      x0, x19                                       
  0x05608  bl       #0x17f40                                        ; objc:meshForEngine:
  0x0560c  mov      x29, x29                                      
  0x05610  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05614  mov      x20, x0                                       
  0x05618  mov      x0, x23                                       
  0x0561c  mov      x2, x20                                       
  0x05620  bl       #0x170c0                                        ; objc:addObject:
  0x05624  mov      x0, x20                                       
  0x05628  bl       #0x16dc4                                        ; _objc_release
  0x0562c  mov      x0, x23                                       
  0x05630  bl       #0x17d60                                        ; objc:lastObject
  0x05634  mov      x29, x29                                      
  0x05638  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0563c  mov      x20, x0                                       
  0x05640  mov      x0, x24                                       
  0x05644  mov      x2, x20                                       
  0x05648  bl       #0x170c0                                        ; objc:addObject:
  0x0564c  mov      x0, x20                                       
  0x05650  bl       #0x16dc4                                        ; _objc_release
  0x05654  ldr      x0, [x22, #0x628]                             
  0x05658  fdiv     d0, d12, d10                                  
  0x0565c  bl       #0x181c0                                        ; objc:numberWithDouble:
  0x05660  mov      x29, x29                                      
  0x05664  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05668  mov      x20, x0                                       
  0x0566c  mov      x0, x25                                       
  0x05670  mov      x2, x20                                       
  0x05674  bl       #0x170c0                                        ; objc:addObject:
  0x05678  mov      x0, x20                                       
  0x0567c  bl       #0x16dc4                                        ; _objc_release
  0x05680  fadd     d12, d12, d11                                 
  0x05684  subs     w21, w21, #1                                  
  0x05688  b.ne     #0x55f4                                       
  0x0568c  adrp     x2, #0x21000                                  
  0x05690  add      x2, x2, #0x120                                
  0x05694  mov      x0, x25                                       
  0x05698  bl       #0x170c0                                        ; objc:addObject:
  0x0569c  adrp     x8, #0x25000                                  
  0x056a0  ldr      x0, [x8, #0x630]                              
  0x056a4  adrp     x2, #0x20000                                  
  0x056a8  add      x2, x2, #0x678                                
  0x056ac  bl       #0x17220                                        ; objc:animationWithKeyPath:
  0x056b0  mov      x29, x29                                      
  0x056b4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x056b8  mov      x21, x0                                       
  0x056bc  mov      x2, x23                                       
  0x056c0  bl       #0x19100                                        ; objc:setValues:
  0x056c4  mov      x0, x21                                       
  0x056c8  mov      x2, x25                                       
  0x056cc  bl       #0x18c00                                        ; objc:setKeyTimes:
  0x056d0  adrp     x8, #0x20000                                  
  0x056d4  ldr      x8, [x8, #0x2f0]                              
  0x056d8  ldr      x2, [x8]                                      
  0x056dc  mov      x0, x21                                       
  0x056e0  bl       #0x18860                                        ; objc:setCalculationMode:
  0x056e4  mov      x0, x21                                       
  0x056e8  fmov     d0, d8                                        
  0x056ec  bl       #0x18800                                        ; objc:setBeginTime:
  0x056f0  fmul     d0, d9, d10                                   
  0x056f4  mov      x0, x21                                       
  0x056f8  bl       #0x189c0                                        ; objc:setDuration:
  0x056fc  mov      x0, x21                                       
  0x05700  mov      w2, #1                                        
  0x05704  bl       #0x18ec0                                        ; objc:setRemovedOnCompletion:
  0x05708  mov      x0, x21                                       
  0x0570c  bl       #0x175e0                                        ; objc:copy
  0x05710  mov      x22, x0                                       
  0x05714  mov      x2, x24                                       
  0x05718  bl       #0x19100                                        ; objc:setValues:
  0x0571c  mov      x0, x25                                       
  0x05720  bl       #0x16dc4                                        ; _objc_release
  0x05724  mov      x0, x24                                       
  0x05728  bl       #0x16dc4                                        ; _objc_release
  0x0572c  mov      x0, x23                                       
  0x05730  bl       #0x16dc4                                        ; _objc_release
  0x05734  mov      x23, x26                                      
  0x05738  adrp     x26, #0x25000                                 
  0x0573c  ldr      x0, [x26, #0x5f0]                             
  0x05740  bl       #0x173e0                                        ; objc:begin
  0x05744  ldr      x0, [x26, #0x5f0]                             
  0x05748  mov      w2, #1                                        
  0x0574c  bl       #0x18980                                        ; objc:setDisableActions:
  0x05750  mov      x0, x19                                       
  0x05754  bl       #0x174a0                                        ; objc:container
  0x05758  mov      x29, x29                                      
  0x0575c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05760  mov      x20, x0                                       
  0x05764  bl       #0x17dc0                                        ; objc:layer
  0x05768  mov      x29, x29                                      
  0x0576c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05770  mov      x27, x0                                       
  0x05774  mov      x0, x20                                       
  0x05778  bl       #0x16dc4                                        ; _objc_release
  0x0577c  mov      x0, x27                                       
  0x05780  mov      x2, x23                                       
  0x05784  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x05788  cbz      x21, #0x57a4                                  
  0x0578c  adrp     x3, #0x20000                                  
  0x05790  add      x3, x3, #0x658                                
  0x05794  mov      x0, x27                                       
  0x05798  mov      x2, x21                                       
  0x0579c  bl       #0x17080                                        ; objc:addAnimation:forKey:
  0x057a0  b        #0x57b4                                         ; sub_57b4
  0x057a4  adrp     x2, #0x20000                                  
  0x057a8  add      x2, x2, #0x658                                
  0x057ac  mov      x0, x27                                       
  0x057b0  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x057b4  mov      x0, x19                                       
  0x057b8  bl       #0x17020                                        ; objc:accessory
  0x057bc  mov      x29, x29                                      
  0x057c0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x057c4  mov      x24, x0                                       
  0x057c8  cbz      x0, #0x59ec                                   
  0x057cc  mov      x0, x19                                       
  0x057d0  bl       #0x17040                                        ; objc:accessoryOverflows
  0x057d4  cbz      w0, #0x5904                                   
  0x057d8  stp      x27, x22, [sp, #8]                            
  0x057dc  str      x23, [sp, #0x18]                              
  0x057e0  movi     v0.2d, #0000000000000000                      
  0x057e4  stp      q0, q0, [sp, #0x40]                           
  0x057e8  stp      q0, q0, [sp, #0x20]                           
  0x057ec  mov      x0, x19                                       
  0x057f0  bl       #0x17a80                                        ; objc:iconMeshViews
  0x057f4  mov      x29, x29                                      
  0x057f8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x057fc  mov      x20, x0                                       
  0x05800  bl       #0x17180                                        ; objc:allObjects
  0x05804  mov      x29, x29                                      
  0x05808  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0580c  mov      x25, x0                                       
  0x05810  mov      x0, x20                                       
  0x05814  bl       #0x16dc4                                        ; _objc_release
  0x05818  add      x2, sp, #0x20                                 
  0x0581c  add      x3, sp, #0x4e0                                
  0x05820  mov      x0, x25                                       
  0x05824  mov      w4, #0x10                                     
  0x05828  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0582c  cbz      x0, #0x58ec                                   
  0x05830  mov      x26, x0                                       
  0x05834  ldr      x8, [sp, #0x30]                               
  0x05838  ldr      x22, [x8]                                     
  0x0583c  mov      x23, #0                                       
  0x05840  ldr      x8, [sp, #0x30]                               
  0x05844  ldr      x8, [x8]                                      
  0x05848  cmp      x8, x22                                       
  0x0584c  b.eq     #0x5858                                       
  0x05850  mov      x0, x25                                       
  0x05854  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x05858  ldr      x8, [sp, #0x28]                               
  0x0585c  ldr      x20, [x8, x23, lsl #3]                        
  0x05860  mov      x0, x19                                       
  0x05864  mov      x2, x20                                       
  0x05868  bl       #0x17f60                                        ; objc:meshForIcon:
  0x0586c  mov      x29, x29                                      
  0x05870  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05874  mov      x27, x0                                       
  0x05878  mov      x0, x20                                       
  0x0587c  bl       #0x17dc0                                        ; objc:layer
  0x05880  mov      x29, x29                                      
  0x05884  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05888  mov      x28, x0                                       
  0x0588c  mov      x2, x27                                       
  0x05890  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x05894  mov      x0, x28                                       
  0x05898  bl       #0x16dc4                                        ; _objc_release
  0x0589c  mov      x0, x27                                       
  0x058a0  bl       #0x16dc4                                        ; _objc_release
  0x058a4  mov      x0, x20                                       
  0x058a8  bl       #0x17dc0                                        ; objc:layer
  0x058ac  mov      x29, x29                                      
  0x058b0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x058b4  mov      x20, x0                                       
  0x058b8  bl       #0x608c                                         ; sub_608c
  0x058bc  mov      x0, x20                                       
  0x058c0  bl       #0x16dc4                                        ; _objc_release
  0x058c4  add      x23, x23, #1                                  
  0x058c8  cmp      x26, x23                                      
  0x058cc  b.ne     #0x5840                                       
  0x058d0  add      x2, sp, #0x20                                 
  0x058d4  add      x3, sp, #0x4e0                                
  0x058d8  mov      x0, x25                                       
  0x058dc  mov      w4, #0x10                                     
  0x058e0  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x058e4  mov      x26, x0                                       
  0x058e8  cbnz     x0, #0x583c                                   
  0x058ec  mov      x0, x25                                       
  0x058f0  bl       #0x16dc4                                        ; _objc_release
  0x058f4  ldp      x22, x23, [sp, #0x10]                         
  0x058f8  adrp     x26, #0x25000                                 
  0x058fc  ldr      x27, [sp, #8]                                 
  0x05900  b        #0x59ec                                         ; sub_59ec
  0x05904  mov      x0, x24                                       
  0x05908  bl       #0x17dc0                                        ; objc:layer
  0x0590c  mov      x29, x29                                      
  0x05910  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05914  mov      x20, x0                                       
  0x05918  mov      x1, x27                                       
  0x0591c  bl       #0x62ec                                         ; sub_62ec
  0x05920  mov      x25, x0                                       
  0x05924  mov      x0, x20                                       
  0x05928  bl       #0x16dc4                                        ; _objc_release
  0x0592c  mov      x0, x24                                       
  0x05930  bl       #0x17dc0                                        ; objc:layer
  0x05934  mov      x29, x29                                      
  0x05938  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0593c  mov      x20, x0                                       
  0x05940  cbz      w25, #0x5988                                  
  0x05944  mov      x0, x20                                       
  0x05948  mov      x2, x23                                       
  0x0594c  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x05950  mov      x0, x20                                       
  0x05954  bl       #0x16dc4                                        ; _objc_release
  0x05958  mov      x0, x24                                       
  0x0595c  bl       #0x17dc0                                        ; objc:layer
  0x05960  mov      x29, x29                                      
  0x05964  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05968  mov      x25, x0                                       
  0x0596c  cbz      x22, #0x59d4                                  
  0x05970  adrp     x3, #0x20000                                  
  0x05974  add      x3, x3, #0x658                                
  0x05978  mov      x0, x25                                       
  0x0597c  mov      x2, x22                                       
  0x05980  bl       #0x17080                                        ; objc:addAnimation:forKey:
  0x05984  b        #0x59e4                                         ; sub_59e4
  0x05988  adrp     x2, #0x20000                                  
  0x0598c  add      x2, x2, #0x658                                
  0x05990  mov      x0, x20                                       
  0x05994  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x05998  mov      x0, x20                                       
  0x0599c  bl       #0x16dc4                                        ; _objc_release
  0x059a0  mov      x0, x24                                       
  0x059a4  bl       #0x17dc0                                        ; objc:layer
  0x059a8  mov      x29, x29                                      
  0x059ac  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x059b0  mov      x20, x0                                       
  0x059b4  mov      x2, #0                                        
  0x059b8  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x059bc  mov      x0, x20                                       
  0x059c0  bl       #0x16dc4                                        ; _objc_release
  0x059c4  mov      x0, x19                                       
  0x059c8  mov      x2, #0                                        
  0x059cc  bl       #0x186c0                                        ; objc:setAccessory:
  0x059d0  b        #0x59ec                                         ; sub_59ec
  0x059d4  adrp     x2, #0x20000                                  
  0x059d8  add      x2, x2, #0x658                                
  0x059dc  mov      x0, x25                                       
  0x059e0  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x059e4  mov      x0, x25                                       
  0x059e8  bl       #0x16dc4                                        ; _objc_release
  0x059ec  mov      x0, x19                                       
  0x059f0  bl       #0x17960                                        ; objc:glassRim
  0x059f4  mov      x29, x29                                      
  0x059f8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x059fc  mov      x20, x0                                       
  0x05a00  bl       #0x16dc4                                        ; _objc_release
  0x05a04  cbz      x20, #0x5b18                                  
  0x05a08  str      x24, [sp, #0x18]                              
  0x05a0c  mov      x24, x27                                      
  0x05a10  mov      x0, x19                                       
  0x05a14  bl       #0x17960                                        ; objc:glassRim
  0x05a18  mov      x29, x29                                      
  0x05a1c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05a20  mov      x25, x0                                       
  0x05a24  bl       #0x193a0                                        ; objc:superlayer
  0x05a28  mov      x29, x29                                      
  0x05a2c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05a30  mov      x27, x0                                       
  0x05a34  mov      x0, x19                                       
  0x05a38  bl       #0x17020                                        ; objc:accessory
  0x05a3c  mov      x29, x29                                      
  0x05a40  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05a44  mov      x28, x0                                       
  0x05a48  bl       #0x17dc0                                        ; objc:layer
  0x05a4c  mov      x29, x29                                      
  0x05a50  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05a54  mov      x20, x0                                       
  0x05a58  cmp      x27, x0                                       
  0x05a5c  b.eq     #0x5a68                                       
  0x05a60  mov      w26, #0                                       
  0x05a64  b        #0x5a74                                         ; sub_5a74
  0x05a68  mov      x0, x19                                       
  0x05a6c  bl       #0x17040                                        ; objc:accessoryOverflows
  0x05a70  mov      x26, x0                                       
  0x05a74  mov      x0, x20                                       
  0x05a78  bl       #0x16dc4                                        ; _objc_release
  0x05a7c  mov      x0, x28                                       
  0x05a80  bl       #0x16dc4                                        ; _objc_release
  0x05a84  mov      x0, x27                                       
  0x05a88  bl       #0x16dc4                                        ; _objc_release
  0x05a8c  mov      x0, x25                                       
  0x05a90  bl       #0x16dc4                                        ; _objc_release
  0x05a94  tst      w26, #1                                       
  0x05a98  csel     x20, x23, xzr, ne                             
  0x05a9c  mov      x0, x19                                       
  0x05aa0  bl       #0x17960                                        ; objc:glassRim
  0x05aa4  mov      x29, x29                                      
  0x05aa8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05aac  mov      x25, x0                                       
  0x05ab0  mov      x2, x20                                       
  0x05ab4  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x05ab8  mov      x0, x25                                       
  0x05abc  bl       #0x16dc4                                        ; _objc_release
  0x05ac0  mov      x0, x19                                       
  0x05ac4  bl       #0x17960                                        ; objc:glassRim
  0x05ac8  mov      x29, x29                                      
  0x05acc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05ad0  mov      x25, x0                                       
  0x05ad4  tbz      w26, #0, #0x5af4                              
  0x05ad8  cbz      x22, #0x5af4                                  
  0x05adc  adrp     x3, #0x20000                                  
  0x05ae0  add      x3, x3, #0x658                                
  0x05ae4  mov      x0, x25                                       
  0x05ae8  mov      x2, x22                                       
  0x05aec  bl       #0x17080                                        ; objc:addAnimation:forKey:
  0x05af0  b        #0x5b04                                         ; sub_5b04
  0x05af4  adrp     x2, #0x20000                                  
  0x05af8  add      x2, x2, #0x658                                
  0x05afc  mov      x0, x25                                       
  0x05b00  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x05b04  mov      x27, x24                                      
  0x05b08  mov      x0, x25                                       
  0x05b0c  bl       #0x16dc4                                        ; _objc_release
  0x05b10  adrp     x26, #0x25000                                 
  0x05b14  ldr      x24, [sp, #0x18]                              
  0x05b18  mov      x0, x19                                       
  0x05b1c  mov      x2, x23                                       
  0x05b20  bl       #0x18780                                        ; objc:setAppliedMesh:
  0x05b24  ldr      x0, [x26, #0x5f0]                             
  0x05b28  bl       #0x17480                                        ; objc:commit
  0x05b2c  mov      x0, x24                                       
  0x05b30  bl       #0x16dc4                                        ; _objc_release
  0x05b34  mov      x0, x27                                       
  0x05b38  bl       #0x16dc4                                        ; _objc_release
  0x05b3c  mov      x0, x22                                       
  0x05b40  bl       #0x16dc4                                        ; _objc_release
  0x05b44  mov      x0, x21                                       
  0x05b48  bl       #0x16dc4                                        ; _objc_release
  0x05b4c  mov      x0, x23                                       
  0x05b50  bl       #0x16dc4                                        ; _objc_release
  0x05b54  ldur     x8, [x29, #-0x90]                             
  0x05b58  adrp     x9, #0x20000                                  
  0x05b5c  ldr      x9, [x9, #0x320]                              
  0x05b60  ldr      x9, [x9]                                      
  0x05b64  cmp      x9, x8                                        
  0x05b68  b.ne     #0x5b98                                       
  0x05b6c  add      sp, sp, #0x570                                
  0x05b70  ldp      x29, x30, [sp, #0x80]                         
  0x05b74  ldp      x20, x19, [sp, #0x70]                         
  0x05b78  ldp      x22, x21, [sp, #0x60]                         
  0x05b7c  ldp      x24, x23, [sp, #0x50]                         
  0x05b80  ldp      x26, x25, [sp, #0x40]                         
  0x05b84  ldp      x28, x27, [sp, #0x30]                         
  0x05b88  ldp      d9, d8, [sp, #0x20]                           
  0x05b8c  ldp      d11, d10, [sp, #0x10]                         
  0x05b90  ldp      d13, d12, [sp], #0x90                         
  0x05b94  retab                                                  
