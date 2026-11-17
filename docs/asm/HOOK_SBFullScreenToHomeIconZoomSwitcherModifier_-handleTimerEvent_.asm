HOOK SBFullScreenToHomeIconZoomSwitcherModifier -handleTimerEvent: @0xc6c0  (503 insns)
  0x0c6c0  pacibsp                                                
  0x0c6c4  stp      d9, d8, [sp, #-0x70]!                         
  0x0c6c8  stp      x28, x27, [sp, #0x10]                         
  0x0c6cc  stp      x26, x25, [sp, #0x20]                         
  0x0c6d0  stp      x24, x23, [sp, #0x30]                         
  0x0c6d4  stp      x22, x21, [sp, #0x40]                         
  0x0c6d8  stp      x20, x19, [sp, #0x50]                         
  0x0c6dc  stp      x29, x30, [sp, #0x60]                         
  0x0c6e0  add      x29, sp, #0x60                                
  0x0c6e4  sub      sp, sp, #0x250                                
  0x0c6e8  mov      x20, x1                                       
  0x0c6ec  mov      x21, x0                                       
  0x0c6f0  adrp     x8, #0x20000                                  
  0x0c6f4  ldr      x8, [x8, #0x320]                              
  0x0c6f8  ldr      x8, [x8]                                      
  0x0c6fc  stur     x8, [x29, #-0x70]                             
  0x0c700  mov      x0, x2                                        
  0x0c704  bl       #0x16dd4                                        ; _objc_retain
  0x0c708  mov      x19, x0                                       
  0x0c70c  adrp     x8, #0x25000                                  
  0x0c710  ldr      x8, [x8, #0x8d8]                              
  0x0c714  mov      x0, x21                                       
  0x0c718  mov      x1, x20                                       
  0x0c71c  mov      x2, x19                                       
  0x0c720  blraaz   x8                                            
  0x0c724  mov      x29, x29                                      
  0x0c728  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c72c  mov      x20, x0                                       
  0x0c730  mov      x0, x19                                       
  0x0c734  bl       #0x18420                                        ; objc:reason
  0x0c738  mov      x29, x29                                      
  0x0c73c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c740  mov      x22, x0                                       
  0x0c744  adrp     x2, #0x20000                                  
  0x0c748  add      x2, x2, #0x5d8                                
  0x0c74c  bl       #0x17ca0                                        ; objc:isEqualToString:
  0x0c750  mov      x23, x0                                       
  0x0c754  mov      x0, x22                                       
  0x0c758  bl       #0x16dc4                                        ; _objc_release
  0x0c75c  tbz      w23, #0, #0xce34                              
  0x0c760  bl       #0x73d4                                         ; sub_73d4
  0x0c764  cbz      w0, #0xce34                                   
  0x0c768  adrp     x1, #0x1a000                                  
  0x0c76c  add      x1, x1, #0x155                                
  0x0c770  mov      x0, x21                                       
  0x0c774  bl       #0x801c                                         ; sub_801c
  0x0c778  cmp      x0, #2                                        
  0x0c77c  b.ne     #0xce34                                       
  0x0c780  adrp     x8, #0x25000                                  
  0x0c784  ldr      x1, [x8, #0x860]                              
  0x0c788  adrp     x2, #0x20000                                  
  0x0c78c  ldr      x2, [x2, #0x2c8]                              
  0x0c790  mov      x0, x21                                       
  0x0c794  mov      w3, #1                                        
  0x0c798  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x0c79c  mov      x0, x21                                       
  0x0c7a0  bl       #0x16dd4                                        ; _objc_retain
  0x0c7a4  mov      x21, x0                                       
  0x0c7a8  adrp     x8, #0x24000                                  
  0x0c7ac  ldr      x1, [x8, #0xce8]                              
  0x0c7b0  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0c7b4  tbz      w0, #0, #0xc968                               
  0x0c7b8  adrp     x8, #0x24000                                  
  0x0c7bc  ldr      x1, [x8, #0xc28]                              
  0x0c7c0  mov      x0, x21                                       
  0x0c7c4  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0c7c8  tbz      w0, #0, #0xc968                               
  0x0c7cc  adrp     x8, #0x25000                                  
  0x0c7d0  ldr      x0, [x8, #0x658]                              
  0x0c7d4  adrp     x8, #0x25000                                  
  0x0c7d8  ldr      x1, [x8, #0x1e0]                              
  0x0c7dc  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0c7e0  tbz      w0, #0, #0xc968                               
  0x0c7e4  mov      x0, x21                                       
  0x0c7e8  bl       #0x17280                                        ; objc:appLayouts
  0x0c7ec  mov      x29, x29                                      
  0x0c7f0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c7f4  mov      x25, x0                                       
  0x0c7f8  adrp     x8, #0x25000                                  
  0x0c7fc  ldr      x0, [x8, #0x608]                              
  0x0c800  bl       #0x16d84                                        ; _objc_opt_class
  0x0c804  mov      x1, x0                                        
  0x0c808  mov      x0, x25                                       
  0x0c80c  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0c810  tbz      w0, #0, #0xc960                               
  0x0c814  mov      x0, x25                                       
  0x0c818  bl       #0x17660                                        ; objc:count
  0x0c81c  cbz      x0, #0xc960                                   
  0x0c820  mov      x23, #0                                       
  0x0c824  mov      x0, x21                                       
  0x0c828  mov      x2, x23                                       
  0x0c82c  bl       #0x16f80                                        ; objc:_isIndexZoomAppLayout:
  0x0c830  tbnz     w0, #0, #0xc84c                               
  0x0c834  add      x23, x23, #1                                  
  0x0c838  mov      x0, x25                                       
  0x0c83c  bl       #0x17660                                        ; objc:count
  0x0c840  cmp      x23, x0                                       
  0x0c844  b.lo     #0xc824                                       
  0x0c848  b        #0xc960                                         ; sub_c960
  0x0c84c  mov      x8, #0x7fffffffffffffff                       
  0x0c850  cmp      x23, x8                                       
  0x0c854  b.eq     #0xc960                                       
  0x0c858  mov      x0, x25                                       
  0x0c85c  mov      x2, x23                                       
  0x0c860  bl       #0x18200                                        ; objc:objectAtIndexedSubscript:
  0x0c864  mov      x29, x29                                      
  0x0c868  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c86c  mov      x26, x0                                       
  0x0c870  bl       #0x742c                                         ; sub_742c
  0x0c874  mov      x29, x29                                      
  0x0c878  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c87c  mov      x24, x0                                       
  0x0c880  mov      x2, x26                                       
  0x0c884  bl       #0x16fa0                                        ; objc:_itemContainerForAppLayoutIfExists:
  0x0c888  mov      x29, x29                                      
  0x0c88c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c890  mov      x22, x0                                       
  0x0c894  mov      x0, x24                                       
  0x0c898  bl       #0x16dc4                                        ; _objc_release
  0x0c89c  str      x22, [sp, #0x60]                              
  0x0c8a0  cbz      x22, #0xc950                                  
  0x0c8a4  adrp     x8, #0x25000                                  
  0x0c8a8  ldr      x1, [x8, #0x270]                              
  0x0c8ac  ldr      x0, [sp, #0x60]                               
  0x0c8b0  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0c8b4  tbz      w0, #0, #0xc950                               
  0x0c8b8  mov      x0, x21                                       
  0x0c8bc  mov      x2, x23                                       
  0x0c8c0  bl       #0x17600                                        ; objc:cornerRadiiForIndex:
  0x0c8c4  fmov     d8, d0                                        
  0x0c8c8  fmov     x10, d3                                       
  0x0c8cc  fmov     x9, d2                                        
  0x0c8d0  fmov     x8, d1                                        
  0x0c8d4  fmov     x11, d8                                       
  0x0c8d8  and      x11, x11, #0x7fffffffffffffff                 
  0x0c8dc  and      x8, x8, #0x7fffffffffffffff                   
  0x0c8e0  mov      x12, #0x7fefffffffffffff                      
  0x0c8e4  cmp      x8, x12                                       
  0x0c8e8  cset     w8, gt                                        
  0x0c8ec  and      x9, x9, #0x7fffffffffffffff                   
  0x0c8f0  cmp      x9, x12                                       
  0x0c8f4  cset     w9, gt                                        
  0x0c8f8  and      x10, x10, #0x7fffffffffffffff                 
  0x0c8fc  cmp      x10, x12                                      
  0x0c900  cset     w10, gt                                       
  0x0c904  cmp      x11, x12                                      
  0x0c908  b.gt     #0xc950                                       
  0x0c90c  tbnz     w8, #0, #0xc950                               
  0x0c910  tbnz     w9, #0, #0xc950                               
  0x0c914  tbnz     w10, #0, #0xc950                              
  0x0c918  stp      d2, d3, [sp, #0x30]                           
  0x0c91c  str      d1, [sp, #0x28]                               
  0x0c920  adrp     x8, #0x24000                                  
  0x0c924  ldr      x1, [x8, #0xcc0]                              
  0x0c928  mov      x0, x21                                       
  0x0c92c  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0c930  tbz      w0, #0, #0xc9e8                               
  0x0c934  mov      x0, x21                                       
  0x0c938  mov      x2, x26                                       
  0x0c93c  bl       #0x171e0                                        ; objc:animationAttributesForLayoutElement:
  0x0c940  mov      x29, x29                                      
  0x0c944  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c948  mov      x24, x0                                       
  0x0c94c  b        #0xc9ec                                         ; sub_c9ec
  0x0c950  ldr      x0, [sp, #0x60]                               
  0x0c954  bl       #0x16dc4                                        ; _objc_release
  0x0c958  mov      x0, x26                                       
  0x0c95c  bl       #0x16dc4                                        ; _objc_release
  0x0c960  mov      x0, x25                                       
  0x0c964  bl       #0x16dc4                                        ; _objc_release
  0x0c968  mov      x0, x21                                       
  0x0c96c  bl       #0x16dc4                                        ; _objc_release
  0x0c970  adrp     x21, #0x25000                                 
  0x0c974  ldr      x0, [x21, #0xa98]                             
  0x0c978  cbnz     x0, #0xc98c                                   
  0x0c97c  adrp     x0, #0x1a000                                  
  0x0c980  add      x0, x0, #0x652                                
  0x0c984  bl       #0x16d44                                        ; _objc_getClass
  0x0c988  str      x0, [x21, #0xa98]                             
  0x0c98c  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x0c990  bl       #0x16cb4                                        ; _objc_alloc
  0x0c994  mov      w2, #4                                        
  0x0c998  mov      w3, #3                                        
  0x0c99c  bl       #0x17ba0                                        ; objc:initWithOptions:updateMode:
  0x0c9a0  mov      x22, x0                                       
  0x0c9a4  adrp     x21, #0x25000                                 
  0x0c9a8  ldr      x0, [x21, #0xaa0]                             
  0x0c9ac  cbnz     x0, #0xc9c0                                   
  0x0c9b0  adrp     x0, #0x1a000                                  
  0x0c9b4  add      x0, x0, #0x676                                
  0x0c9b8  bl       #0x16d44                                        ; _objc_getClass
  0x0c9bc  str      x0, [x21, #0xaa0]                             
  0x0c9c0  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x0c9c4  mov      x2, x22                                       
  0x0c9c8  mov      x3, x20                                       
  0x0c9cc  bl       #0x18580                                        ; objc:responseByAppendingResponse:toResponse:
  0x0c9d0  mov      x29, x29                                      
  0x0c9d4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0c9d8  mov      x21, x0                                       
  0x0c9dc  mov      x0, x22                                       
  0x0c9e0  bl       #0x16dc4                                        ; _objc_release
  0x0c9e4  b        #0xce40                                         ; sub_ce40
  0x0c9e8  mov      x24, #0                                       
  0x0c9ec  adrp     x1, #0x1a000                                  
  0x0c9f0  add      x1, x1, #0x5b8                                
  0x0c9f4  mov      x0, x21                                       
  0x0c9f8  bl       #0x801c                                         ; sub_801c
  0x0c9fc  cmp      x0, #1                                        
  0x0ca00  b.ne     #0xca18                                       
  0x0ca04  mov      x0, x26                                       
  0x0ca08  bl       #0x103e0                                        ; sub_103e0
  0x0ca0c  mov      x29, x29                                      
  0x0ca10  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0ca14  cbnz     x0, #0xca64                                   
  0x0ca18  adrp     x8, #0x24000                                  
  0x0ca1c  ldr      x1, [x8, #0xdd8]                              
  0x0ca20  mov      x0, x24                                       
  0x0ca24  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0ca28  tbz      w0, #0, #0xca40                               
  0x0ca2c  mov      x0, x24                                       
  0x0ca30  bl       #0x17640                                        ; objc:cornerRadiusSettings
  0x0ca34  mov      x29, x29                                      
  0x0ca38  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0ca3c  cbnz     x0, #0xca64                                   
  0x0ca40  adrp     x8, #0x24000                                  
  0x0ca44  ldr      x1, [x8, #0xfc8]                              
  0x0ca48  mov      x0, x24                                       
  0x0ca4c  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0ca50  tbz      w0, #0, #0xca6c                               
  0x0ca54  mov      x0, x24                                       
  0x0ca58  bl       #0x17e00                                        ; objc:layoutSettings
  0x0ca5c  mov      x29, x29                                      
  0x0ca60  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0ca64  mov      x27, x0                                       
  0x0ca68  b        #0xca70                                         ; sub_ca70
  0x0ca6c  mov      x27, #0                                       
  0x0ca70  adrp     x22, #0x25000                                 
  0x0ca74  ldr      x23, [x22, #0xa70]                            
  0x0ca78  cbnz     x23, #0xca90                                  
  0x0ca7c  adrp     x0, #0x1a000                                  
  0x0ca80  add      x0, x0, #0x59f                                
  0x0ca84  bl       #0x16d44                                        ; _objc_getClass
  0x0ca88  mov      x23, x0                                       
  0x0ca8c  str      x0, [x22, #0xa70]                             
  0x0ca90  mov      x0, x23                                       
  0x0ca94  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x0ca98  mov      x0, x27                                       
  0x0ca9c  mov      x1, x23                                       
  0x0caa0  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0caa4  mov      x22, x0                                       
  0x0caa8  tbz      w0, #0, #0xce00                               
  0x0caac  str      w22, [sp, #4]                                 
  0x0cab0  stp      x27, x24, [sp, #8]                            
  0x0cab4  stp      x26, x25, [sp, #0x18]                         
  0x0cab8  adrp     x8, #0x25000                                  
  0x0cabc  ldr      x0, [x8, #0x620]                              
  0x0cac0  bl       #0x17300                                        ; objc:array
  0x0cac4  mov      x29, x29                                      
  0x0cac8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0cacc  str      x0, [sp, #0x40]                               
  0x0cad0  adrp     x24, #0x25000                                 
  0x0cad4  ldr      x8, [x24, #0xa88]                             
  0x0cad8  cbnz     x8, #0xcaec                                   
  0x0cadc  adrp     x0, #0x20000                                  
  0x0cae0  add      x0, x0, #0x898                                
  0x0cae4  bl       #0x16b94                                        ; _NSClassFromString
  0x0cae8  str      x0, [x24, #0xa88]                             
  0x0caec  adrp     x27, #0x25000                                 
  0x0caf0  ldr      x8, [x27, #0xa90]                             
  0x0caf4  cbnz     x8, #0xcb08                                   
  0x0caf8  adrp     x0, #0x20000                                  
  0x0cafc  add      x0, x0, #0x938                                
  0x0cb00  bl       #0x16b94                                        ; _NSClassFromString
  0x0cb04  str      x0, [x27, #0xa90]                             
  0x0cb08  movi     v0.2d, #0000000000000000                      
  0x0cb0c  stp      q0, q0, [sp, #0x120]                          
  0x0cb10  stp      q0, q0, [sp, #0x100]                          
  0x0cb14  ldr      x0, [sp, #0x60]                               
  0x0cb18  bl       #0x193c0                                        ; objc:superview
  0x0cb1c  mov      x29, x29                                      
  0x0cb20  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0cb24  mov      x23, x0                                       
  0x0cb28  bl       #0x19380                                        ; objc:subviews
  0x0cb2c  mov      x29, x29                                      
  0x0cb30  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0cb34  mov      x25, x0                                       
  0x0cb38  mov      x0, x23                                       
  0x0cb3c  bl       #0x16dc4                                        ; _objc_release
  0x0cb40  add      x2, sp, #0x100                                
  0x0cb44  sub      x3, x29, #0xf0                                
  0x0cb48  mov      x0, x25                                       
  0x0cb4c  mov      w4, #0x10                                     
  0x0cb50  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0cb54  str      x0, [sp, #0x68]                               
  0x0cb58  cbz      x0, #0xcc94                                   
  0x0cb5c  ldr      x8, [sp, #0x110]                              
  0x0cb60  ldr      x23, [x8]                                     
  0x0cb64  stp      x23, x25, [sp, #0x50]                         
  0x0cb68  mov      x22, #0                                       
  0x0cb6c  adrp     x8, #0x25000                                  
  0x0cb70  ldr      x8, [x8, #0x280]                              
  0x0cb74  str      x8, [sp, #0x48]                               
  0x0cb78  ldr      x8, [sp, #0x110]                              
  0x0cb7c  ldr      x8, [x8]                                      
  0x0cb80  cmp      x8, x23                                       
  0x0cb84  b.eq     #0xcb90                                       
  0x0cb88  mov      x0, x25                                       
  0x0cb8c  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x0cb90  ldr      x8, [sp, #0x108]                              
  0x0cb94  ldr      x28, [x8, x22, lsl #3]                        
  0x0cb98  ldr      x1, [x24, #0xa88]                             
  0x0cb9c  cbz      x1, #0xcbac                                   
  0x0cba0  mov      x0, x28                                       
  0x0cba4  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0cba8  tbnz     w0, #0, #0xcbc0                               
  0x0cbac  ldr      x1, [x27, #0xa90]                             
  0x0cbb0  cbz      x1, #0xcc68                                   
  0x0cbb4  mov      x0, x28                                       
  0x0cbb8  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x0cbbc  tbz      w0, #0, #0xcc68                               
  0x0cbc0  mov      x0, x28                                       
  0x0cbc4  bl       #0x17cc0                                        ; objc:isHidden
  0x0cbc8  tbnz     w0, #0, #0xcc68                               
  0x0cbcc  mov      x25, x27                                      
  0x0cbd0  mov      x27, x24                                      
  0x0cbd4  mov      x0, x28                                       
  0x0cbd8  bl       #0x17dc0                                        ; objc:layer
  0x0cbdc  mov      x29, x29                                      
  0x0cbe0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0cbe4  mov      x24, x0                                       
  0x0cbe8  ldr      x0, [sp, #0x60]                               
  0x0cbec  bl       #0x17dc0                                        ; objc:layer
  0x0cbf0  mov      x29, x29                                      
  0x0cbf4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0cbf8  mov      x23, x0                                       
  0x0cbfc  mov      x0, x24                                       
  0x0cc00  mov      x1, x23                                       
  0x0cc04  bl       #0x62ec                                         ; sub_62ec
  0x0cc08  tbz      w0, #0, #0xcc4c                               
  0x0cc0c  mov      x0, x28                                       
  0x0cc10  ldr      x1, [sp, #0x48]                               
  0x0cc14  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0cc18  mov      x26, x0                                       
  0x0cc1c  mov      x0, x23                                       
  0x0cc20  bl       #0x16dc4                                        ; _objc_release
  0x0cc24  mov      x0, x24                                       
  0x0cc28  bl       #0x16dc4                                        ; _objc_release
  0x0cc2c  mov      x24, x27                                      
  0x0cc30  mov      x27, x25                                      
  0x0cc34  ldp      x23, x25, [sp, #0x50]                         
  0x0cc38  tbz      w26, #0, #0xcc68                              
  0x0cc3c  ldr      x0, [sp, #0x40]                               
  0x0cc40  mov      x2, x28                                       
  0x0cc44  bl       #0x170c0                                        ; objc:addObject:
  0x0cc48  b        #0xcc68                                         ; sub_cc68
  0x0cc4c  mov      x0, x23                                       
  0x0cc50  bl       #0x16dc4                                        ; _objc_release
  0x0cc54  mov      x0, x24                                       
  0x0cc58  bl       #0x16dc4                                        ; _objc_release
  0x0cc5c  mov      x24, x27                                      
  0x0cc60  mov      x27, x25                                      
  0x0cc64  ldp      x23, x25, [sp, #0x50]                         
  0x0cc68  add      x22, x22, #1                                  
  0x0cc6c  ldr      x8, [sp, #0x68]                               
  0x0cc70  cmp      x8, x22                                       
  0x0cc74  b.ne     #0xcb78                                       
  0x0cc78  add      x2, sp, #0x100                                
  0x0cc7c  sub      x3, x29, #0xf0                                
  0x0cc80  mov      x0, x25                                       
  0x0cc84  mov      w4, #0x10                                     
  0x0cc88  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0cc8c  str      x0, [sp, #0x68]                               
  0x0cc90  cbnz     x0, #0xcb68                                   
  0x0cc94  mov      x0, x25                                       
  0x0cc98  bl       #0x16dc4                                        ; _objc_release
  0x0cc9c  adrp     x8, #0x25000                                  
  0x0cca0  ldr      x23, [x8, #0x658]                             
  0x0cca4  add      x8, sp, #0xb0                                 
  0x0cca8  adrp     x16, #0x20000                                 
  0x0ccac  ldr      x16, [x16, #0x318]                            
  0x0ccb0  mov      x17, x8                                       
  0x0ccb4  movk     x17, #0x6ae1, lsl #48                         
  0x0ccb8  pacda    x16, x17                                      
  0x0ccbc  str      x16, [sp, #0xb0]                              
  0x0ccc0  adrp     x9, #0x19000                                  
  0x0ccc4  ldr      d0, [x9, #0xb40]                              
  0x0ccc8  str      d0, [sp, #0xb8]                               
  0x0cccc  add      x8, x8, #0x10                                 
  0x0ccd0  adrp     x16, #0x10000                                 
  0x0ccd4  add      x16, x16, #0x518                              
  0x0ccd8  pacia    x16, x8                                       
  0x0ccdc  adrp     x8, #0x20000                                  
  0x0cce0  add      x8, x8, #0x488                                
  0x0cce4  stp      x16, x8, [sp, #0xc0]                          
  0x0cce8  ldr      x0, [sp, #0x60]                               
  0x0ccec  bl       #0x16dd4                                        ; _objc_retain
  0x0ccf0  mov      x24, x0                                       
  0x0ccf4  str      x0, [sp, #0xd0]                               
  0x0ccf8  ldp      d1, d2, [sp, #0x28]                           
  0x0ccfc  stp      d8, d1, [sp, #0xe0]                           
  0x0cd00  ldr      d0, [sp, #0x38]                               
  0x0cd04  stp      d2, d0, [sp, #0xf0]                           
  0x0cd08  ldr      x0, [sp, #0x40]                               
  0x0cd0c  bl       #0x16dd4                                        ; _objc_retain
  0x0cd10  mov      x25, x0                                       
  0x0cd14  str      x0, [sp, #0xd8]                               
  0x0cd18  add      x4, sp, #0xb0                                 
  0x0cd1c  mov      x0, x23                                       
  0x0cd20  ldr      x27, [sp, #8]                                 
  0x0cd24  mov      x2, x27                                       
  0x0cd28  mov      w3, #3                                        
  0x0cd2c  mov      x5, #0                                        
  0x0cd30  bl       #0x18660                                        ; objc:sb_animateWithSettings:mode:animations:completion:
  0x0cd34  mov      x0, x24                                       
  0x0cd38  fmov     d0, d8                                        
  0x0cd3c  mov      x1, x27                                       
  0x0cd40  bl       #0x10620                                        ; sub_10620
  0x0cd44  movi     v0.2d, #0000000000000000                      
  0x0cd48  stp      q0, q0, [sp, #0x90]                           
  0x0cd4c  stp      q0, q0, [sp, #0x70]                           
  0x0cd50  mov      x0, x25                                       
  0x0cd54  bl       #0x16dd4                                        ; _objc_retain
  0x0cd58  mov      x23, x0                                       
  0x0cd5c  add      x2, sp, #0x70                                 
  0x0cd60  add      x3, sp, #0x140                                
  0x0cd64  mov      w4, #0x10                                     
  0x0cd68  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0cd6c  cbz      x0, #0xcdd4                                   
  0x0cd70  mov      x25, x0                                       
  0x0cd74  ldr      x8, [sp, #0x80]                               
  0x0cd78  ldr      x22, [x8]                                     
  0x0cd7c  mov      x24, #0                                       
  0x0cd80  ldr      x8, [sp, #0x80]                               
  0x0cd84  ldr      x8, [x8]                                      
  0x0cd88  cmp      x8, x22                                       
  0x0cd8c  b.eq     #0xcd98                                       
  0x0cd90  mov      x0, x23                                       
  0x0cd94  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x0cd98  ldr      x8, [sp, #0x78]                               
  0x0cd9c  ldr      x0, [x8, x24, lsl #3]                         
  0x0cda0  fmov     d0, d8                                        
  0x0cda4  mov      x1, x27                                       
  0x0cda8  bl       #0x10620                                        ; sub_10620
  0x0cdac  add      x24, x24, #1                                  
  0x0cdb0  cmp      x25, x24                                      
  0x0cdb4  b.ne     #0xcd80                                       
  0x0cdb8  add      x2, sp, #0x70                                 
  0x0cdbc  add      x3, sp, #0x140                                
  0x0cdc0  mov      x0, x23                                       
  0x0cdc4  mov      w4, #0x10                                     
  0x0cdc8  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x0cdcc  mov      x25, x0                                       
  0x0cdd0  cbnz     x0, #0xcd7c                                   
  0x0cdd4  mov      x0, x23                                       
  0x0cdd8  bl       #0x16dc4                                        ; _objc_release
  0x0cddc  ldr      x0, [sp, #0xd8]                               
  0x0cde0  bl       #0x16dc4                                        ; _objc_release
  0x0cde4  ldr      x0, [sp, #0xd0]                               
  0x0cde8  bl       #0x16dc4                                        ; _objc_release
  0x0cdec  mov      x0, x23                                       
  0x0cdf0  bl       #0x16dc4                                        ; _objc_release
  0x0cdf4  ldp      x26, x25, [sp, #0x18]                         
  0x0cdf8  ldr      x24, [sp, #0x10]                              
  0x0cdfc  ldr      w22, [sp, #4]                                 
  0x0ce00  mov      x0, x27                                       
  0x0ce04  bl       #0x16dc4                                        ; _objc_release
  0x0ce08  mov      x0, x24                                       
  0x0ce0c  bl       #0x16dc4                                        ; _objc_release
  0x0ce10  ldr      x0, [sp, #0x60]                               
  0x0ce14  bl       #0x16dc4                                        ; _objc_release
  0x0ce18  mov      x0, x26                                       
  0x0ce1c  bl       #0x16dc4                                        ; _objc_release
  0x0ce20  mov      x0, x25                                       
  0x0ce24  bl       #0x16dc4                                        ; _objc_release
  0x0ce28  mov      x0, x21                                       
  0x0ce2c  bl       #0x16dc4                                        ; _objc_release
  0x0ce30  tbz      w22, #0, #0xc970                              
  0x0ce34  mov      x0, x20                                       
  0x0ce38  bl       #0x16dd4                                        ; _objc_retain
  0x0ce3c  mov      x21, x0                                       
  0x0ce40  mov      x0, x20                                       
  0x0ce44  bl       #0x16dc4                                        ; _objc_release
  0x0ce48  mov      x0, x19                                       
  0x0ce4c  bl       #0x16dc4                                        ; _objc_release
  0x0ce50  ldur     x8, [x29, #-0x70]                             
  0x0ce54  adrp     x9, #0x20000                                  
  0x0ce58  ldr      x9, [x9, #0x320]                              
  0x0ce5c  ldr      x9, [x9]                                      
  0x0ce60  cmp      x9, x8                                        
  0x0ce64  b.ne     #0xcea0                                       
  0x0ce68  mov      x0, x21                                       
  0x0ce6c  add      sp, sp, #0x250                                
  0x0ce70  ldp      x29, x30, [sp, #0x60]                         
  0x0ce74  ldp      x20, x19, [sp, #0x50]                         
  0x0ce78  ldp      x22, x21, [sp, #0x40]                         
  0x0ce7c  ldp      x24, x23, [sp, #0x30]                         
  0x0ce80  ldp      x26, x25, [sp, #0x20]                         
  0x0ce84  ldp      x28, x27, [sp, #0x10]                         
  0x0ce88  ldp      d9, d8, [sp], #0x70                           
  0x0ce8c  autibsp                                                
  0x0ce90  eor      x16, x30, x30, lsl #1                         
  0x0ce94  tbz      x16, #0x3e, #0xce9c                           
  0x0ce98  brk      #0xc471                                       
