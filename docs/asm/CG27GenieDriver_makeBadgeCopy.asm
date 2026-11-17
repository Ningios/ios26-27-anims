CG27GenieDriver makeBadgeCopy @0x86e4  (164 insns)
types: v16@0:8
  0x086e4  pacibsp                                                
  0x086e8  sub      sp, sp, #0x80                                 
  0x086ec  stp      d9, d8, [sp, #0x30]                           
  0x086f0  stp      x24, x23, [sp, #0x40]                         
  0x086f4  stp      x22, x21, [sp, #0x50]                         
  0x086f8  stp      x20, x19, [sp, #0x60]                         
  0x086fc  stp      x29, x30, [sp, #0x70]                         
  0x08700  add      x29, sp, #0x70                                
  0x08704  mov      x21, x0                                       
  0x08708  bl       #0x17380                                        ; objc:badge
  0x0870c  mov      x29, x29                                      
  0x08710  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08714  mov      x19, x0                                       
  0x08718  mov      x0, x21                                       
  0x0871c  bl       #0x17020                                        ; objc:accessory
  0x08720  mov      x29, x29                                      
  0x08724  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08728  mov      x20, x0                                       
  0x0872c  cbz      x19, #0x8948                                  
  0x08730  mov      x0, x20                                       
  0x08734  bl       #0x193c0                                        ; objc:superview
  0x08738  mov      x29, x29                                      
  0x0873c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08740  cbz      x0, #0x8948                                   
  0x08744  mov      x22, x0                                       
  0x08748  mov      x0, x19                                       
  0x0874c  bl       #0x17460                                        ; objc:bounds
  0x08750  fmov     d8, d2                                        
  0x08754  mov      x0, x22                                       
  0x08758  bl       #0x16dc4                                        ; _objc_release
  0x0875c  fmov     d0, #1.00000000                               
  0x08760  fcmp     d8, d0                                        
  0x08764  b.mi     #0x8948                                       
  0x08768  adrp     x0, #0x20000                                  
  0x0876c  add      x0, x0, #0x6f8                                
  0x08770  bl       #0x16bb4                                        ; _NSSelectorFromString
  0x08774  mov      x22, x0                                       
  0x08778  mov      x0, x19                                       
  0x0877c  mov      x1, x22                                       
  0x08780  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x08784  tbz      w0, #0, #0x87b4                               
  0x08788  mov      x0, x19                                       
  0x0878c  mov      x1, x22                                       
  0x08790  bl       #0x16d74                                        ; _objc_msgSend
  0x08794  mov      x29, x29                                      
  0x08798  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0879c  mov      x22, x0                                       
  0x087a0  mov      x0, x21                                       
  0x087a4  mov      x2, x22                                       
  0x087a8  bl       #0x187c0                                        ; objc:setBadgeCopy:
  0x087ac  mov      x0, x22                                       
  0x087b0  bl       #0x16dc4                                        ; _objc_release
  0x087b4  mov      x0, x21                                       
  0x087b8  bl       #0x173a0                                        ; objc:badgeCopy
  0x087bc  mov      x29, x29                                      
  0x087c0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x087c4  mov      x22, x0                                       
  0x087c8  bl       #0x16dc4                                        ; _objc_release
  0x087cc  cbnz     x22, #0x88a0                                  
  0x087d0  adrp     x8, #0x25000                                  
  0x087d4  ldr      x0, [x8, #0x648]                              
  0x087d8  bl       #0x16cb4                                        ; _objc_alloc
  0x087dc  mov      x22, x0                                       
  0x087e0  mov      x0, x19                                       
  0x087e4  bl       #0x17460                                        ; objc:bounds
  0x087e8  mov      x0, x22                                       
  0x087ec  bl       #0x17b20                                        ; objc:initWithBounds:
  0x087f0  mov      x22, x0                                       
  0x087f4  add      x8, sp, #8                                    
  0x087f8  adrp     x16, #0x20000                                 
  0x087fc  ldr      x16, [x16, #0x318]                            
  0x08800  mov      x17, x8                                       
  0x08804  movk     x17, #0x6ae1, lsl #48                         
  0x08808  pacda    x16, x17                                      
  0x0880c  str      x16, [sp, #8]                                 
  0x08810  adrp     x9, #0x19000                                  
  0x08814  ldr      d0, [x9, #0xb40]                              
  0x08818  str      d0, [sp, #0x10]                               
  0x0881c  add      x8, x8, #0x10                                 
  0x08820  adrp     x16, #0x8000                                  
  0x08824  add      x16, x16, #0x974                              
  0x08828  pacia    x16, x8                                       
  0x0882c  adrp     x8, #0x20000                                  
  0x08830  add      x8, x8, #0x330                                
  0x08834  stp      x16, x8, [sp, #0x18]                          
  0x08838  mov      x0, x19                                       
  0x0883c  bl       #0x16dd4                                        ; _objc_retain
  0x08840  str      x0, [sp, #0x28]                               
  0x08844  add      x2, sp, #8                                    
  0x08848  mov      x0, x22                                       
  0x0884c  bl       #0x17ae0                                        ; objc:imageWithActions:
  0x08850  mov      x29, x29                                      
  0x08854  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08858  mov      x23, x0                                       
  0x0885c  adrp     x8, #0x25000                                  
  0x08860  ldr      x0, [x8, #0x650]                              
  0x08864  bl       #0x16cb4                                        ; _objc_alloc
  0x08868  mov      x2, x23                                       
  0x0886c  bl       #0x17b80                                        ; objc:initWithImage:
  0x08870  mov      x24, x0                                       
  0x08874  mov      x0, x21                                       
  0x08878  mov      x2, x24                                       
  0x0887c  bl       #0x187c0                                        ; objc:setBadgeCopy:
  0x08880  mov      x0, x24                                       
  0x08884  bl       #0x16dc4                                        ; _objc_release
  0x08888  mov      x0, x23                                       
  0x0888c  bl       #0x16dc4                                        ; _objc_release
  0x08890  ldr      x0, [sp, #0x28]                               
  0x08894  bl       #0x16dc4                                        ; _objc_release
  0x08898  mov      x0, x22                                       
  0x0889c  bl       #0x16dc4                                        ; _objc_release
  0x088a0  mov      x0, x21                                       
  0x088a4  bl       #0x173a0                                        ; objc:badgeCopy
  0x088a8  mov      x29, x29                                      
  0x088ac  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x088b0  mov      x22, x0                                       
  0x088b4  mov      w2, #0                                        
  0x088b8  bl       #0x190a0                                        ; objc:setUserInteractionEnabled:
  0x088bc  mov      x0, x22                                       
  0x088c0  bl       #0x16dc4                                        ; _objc_release
  0x088c4  mov      x0, x21                                       
  0x088c8  bl       #0x173a0                                        ; objc:badgeCopy
  0x088cc  mov      x29, x29                                      
  0x088d0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x088d4  mov      x22, x0                                       
  0x088d8  bl       #0x17dc0                                        ; objc:layer
  0x088dc  mov      x29, x29                                      
  0x088e0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x088e4  mov      x23, x0                                       
  0x088e8  movi     d0, #0000000000000000                         
  0x088ec  bl       #0x18dc0                                        ; objc:setOpacity:
  0x088f0  mov      x0, x23                                       
  0x088f4  bl       #0x16dc4                                        ; _objc_release
  0x088f8  mov      x0, x22                                       
  0x088fc  bl       #0x16dc4                                        ; _objc_release
  0x08900  mov      x0, x20                                       
  0x08904  bl       #0x193c0                                        ; objc:superview
  0x08908  mov      x29, x29                                      
  0x0890c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08910  mov      x22, x0                                       
  0x08914  mov      x0, x21                                       
  0x08918  bl       #0x173a0                                        ; objc:badgeCopy
  0x0891c  mov      x29, x29                                      
  0x08920  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08924  mov      x21, x0                                       
  0x08928  mov      x0, x22                                       
  0x0892c  mov      x2, x21                                       
  0x08930  mov      x3, x20                                       
  0x08934  bl       #0x17be0                                        ; objc:insertSubview:aboveSubview:
  0x08938  mov      x0, x21                                       
  0x0893c  bl       #0x16dc4                                        ; _objc_release
  0x08940  mov      x0, x22                                       
  0x08944  bl       #0x16dc4                                        ; _objc_release
  0x08948  mov      x0, x20                                       
  0x0894c  bl       #0x16dc4                                        ; _objc_release
  0x08950  mov      x0, x19                                       
  0x08954  bl       #0x16dc4                                        ; _objc_release
  0x08958  ldp      x29, x30, [sp, #0x70]                         
  0x0895c  ldp      x20, x19, [sp, #0x60]                         
  0x08960  ldp      x22, x21, [sp, #0x50]                         
  0x08964  ldp      x24, x23, [sp, #0x40]                         
  0x08968  ldp      d9, d8, [sp, #0x30]                           
  0x0896c  add      sp, sp, #0x80                                 
  0x08970  retab                                                  
