CG27GenieDriver tick: @0x649c  (851 insns)
types: v24@0:8@16
  0x0649c  pacibsp                                                
  0x064a0  stp      d13, d12, [sp, #-0x90]!                       
  0x064a4  stp      d11, d10, [sp, #0x10]                         
  0x064a8  stp      d9, d8, [sp, #0x20]                           
  0x064ac  stp      x28, x27, [sp, #0x30]                         
  0x064b0  stp      x26, x25, [sp, #0x40]                         
  0x064b4  stp      x24, x23, [sp, #0x50]                         
  0x064b8  stp      x22, x21, [sp, #0x60]                         
  0x064bc  stp      x20, x19, [sp, #0x70]                         
  0x064c0  stp      x29, x30, [sp, #0x80]                         
  0x064c4  add      x29, sp, #0x80                                
  0x064c8  sub      sp, sp, #0x270                                
  0x064cc  mov      x20, x0                                       
  0x064d0  adrp     x8, #0x20000                                  
  0x064d4  ldr      x8, [x8, #0x320]                              
  0x064d8  ldr      x8, [x8]                                      
  0x064dc  stur     x8, [x29, #-0x90]                             
  0x064e0  mov      x0, x2                                        
  0x064e4  bl       #0x16dd4                                        ; _objc_retain
  0x064e8  mov      x28, x0                                       
  0x064ec  bl       #0x16974                                        ; _CACurrentMediaTime
  0x064f0  fmov     d8, d0                                        
  0x064f4  bl       #0x73d4                                         ; sub_73d4
  0x064f8  cbz      w0, #0x7194                                   
  0x064fc  mov      x0, x20                                       
  0x06500  bl       #0x19220                                        ; objc:startTime
  0x06504  fsub     d9, d8, d0                                    
  0x06508  bl       #0x16be4                                        ; _UIAnimationDragCoefficient
  0x0650c  fcvt     d1, s0                                        
  0x06510  fadd     d2, d1, d1                                    
  0x06514  fmov     x8, d1                                        
  0x06518  and      x8, x8, #0x7fffffffffffffff                   
  0x0651c  fcmp     s0, #0.0                                      
  0x06520  mov      x9, #0x7ff0000000000000                       
  0x06524  ccmp     x8, x9, #0, gt                                
  0x06528  fmov     d0, #2.00000000                               
  0x0652c  fcsel    d0, d2, d0, lt                                
  0x06530  fcmp     d9, d0                                        
  0x06534  b.gt     #0x7194                                       
  0x06538  mov      x0, x20                                       
  0x0653c  bl       #0x174a0                                        ; objc:container
  0x06540  mov      x29, x29                                      
  0x06544  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06548  mov      x21, x0                                       
  0x0654c  bl       #0x16dc4                                        ; _objc_release
  0x06550  cbz      x21, #0x65d8                                  
  0x06554  mov      x0, x20                                       
  0x06558  bl       #0x174a0                                        ; objc:container
  0x0655c  mov      x29, x29                                      
  0x06560  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06564  mov      x21, x0                                       
  0x06568  bl       #0x195a0                                        ; objc:window
  0x0656c  mov      x29, x29                                      
  0x06570  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06574  mov      x22, x0                                       
  0x06578  bl       #0x16dc4                                        ; _objc_release
  0x0657c  mov      x0, x21                                       
  0x06580  bl       #0x16dc4                                        ; _objc_release
  0x06584  cbz      x22, #0x7194                                  
  0x06588  mov      x0, x20                                       
  0x0658c  bl       #0x18060                                        ; objc:native
  0x06590  cbz      w0, #0x6880                                   
  0x06594  add      x0, x20, #0x2dc                               
  0x06598  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x0659c  ldr      x19, [x20, #0x2e0]                            
  0x065a0  cbnz     x19, #0x6814                                  
  0x065a4  ldrb     w8, [x20, #0x318]                             
  0x065a8  cmp      w8, #1                                        
  0x065ac  b.ne     #0x6810                                       
  0x065b0  mov      x0, x20                                       
  0x065b4  bl       #0x174a0                                        ; objc:container
  0x065b8  mov      x29, x29                                      
  0x065bc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x065c0  ldr      x8, [x20, #0x2e0]                             
  0x065c4  str      x0, [x20, #0x2e0]                             
  0x065c8  mov      x0, x8                                        
  0x065cc  bl       #0x16dc4                                        ; _objc_release
  0x065d0  ldr      x19, [x20, #0x2e0]                            
  0x065d4  b        #0x6814                                         ; sub_6814
  0x065d8  bl       #0x742c                                         ; sub_742c
  0x065dc  mov      x29, x29                                      
  0x065e0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x065e4  mov      x21, x0                                       
  0x065e8  mov      x0, x20                                       
  0x065ec  bl       #0x17260                                        ; objc:appLayout
  0x065f0  mov      x29, x29                                      
  0x065f4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x065f8  mov      x22, x0                                       
  0x065fc  mov      x0, x21                                       
  0x06600  mov      x2, x22                                       
  0x06604  bl       #0x16fa0                                        ; objc:_itemContainerForAppLayoutIfExists:
  0x06608  mov      x29, x29                                      
  0x0660c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06610  mov      x23, x0                                       
  0x06614  mov      x0, x20                                       
  0x06618  mov      x2, x23                                       
  0x0661c  bl       #0x18880                                        ; objc:setContainer:
  0x06620  mov      x0, x23                                       
  0x06624  bl       #0x16dc4                                        ; _objc_release
  0x06628  mov      x0, x22                                       
  0x0662c  bl       #0x16dc4                                        ; _objc_release
  0x06630  mov      x0, x21                                       
  0x06634  bl       #0x16dc4                                        ; _objc_release
  0x06638  mov      x0, x20                                       
  0x0663c  bl       #0x174a0                                        ; objc:container
  0x06640  mov      x29, x29                                      
  0x06644  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06648  mov      x21, x0                                       
  0x0664c  bl       #0x16dc4                                        ; _objc_release
  0x06650  mov      x0, x20                                       
  0x06654  cbz      x21, #0x66b8                                  
  0x06658  bl       #0x174a0                                        ; objc:container
  0x0665c  mov      x29, x29                                      
  0x06660  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06664  mov      x21, x0                                       
  0x06668  bl       #0x17dc0                                        ; objc:layer
  0x0666c  mov      x29, x29                                      
  0x06670  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06674  mov      x22, x0                                       
  0x06678  adrp     x8, #0x25000                                  
  0x0667c  ldr      x1, [x8, #0x370]                              
  0x06680  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x06684  mov      x23, x0                                       
  0x06688  mov      x0, x22                                       
  0x0668c  bl       #0x16dc4                                        ; _objc_release
  0x06690  mov      x0, x21                                       
  0x06694  bl       #0x16dc4                                        ; _objc_release
  0x06698  tbz      w23, #0, #0x7194                              
  0x0669c  mov      x0, x20                                       
  0x066a0  bl       #0x18060                                        ; objc:native
  0x066a4  cbz      w0, #0x66d4                                   
  0x066a8  mov      x0, x20                                       
  0x066ac  mov      x2, #0                                        
  0x066b0  bl       #0x18e80                                        ; objc:setPreviousMesh:
  0x066b4  b        #0x6734                                         ; sub_6734
  0x066b8  bl       #0x19220                                        ; objc:startTime
  0x066bc  fsub     d0, d8, d0                                    
  0x066c0  adrp     x8, #0x19000                                  
  0x066c4  ldr      d1, [x8, #0xad8]                              
  0x066c8  fcmp     d0, d1                                        
  0x066cc  b.gt     #0x7194                                       
  0x066d0  b        #0x719c                                         ; sub_719c
  0x066d4  mov      x0, x20                                       
  0x066d8  bl       #0x174a0                                        ; objc:container
  0x066dc  mov      x29, x29                                      
  0x066e0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x066e4  mov      x21, x0                                       
  0x066e8  bl       #0x17dc0                                        ; objc:layer
  0x066ec  mov      x29, x29                                      
  0x066f0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x066f4  mov      x22, x0                                       
  0x066f8  adrp     x2, #0x20000                                  
  0x066fc  add      x2, x2, #0x678                                
  0x06700  bl       #0x19500                                        ; objc:valueForKey:
  0x06704  mov      x29, x29                                      
  0x06708  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0670c  mov      x23, x0                                       
  0x06710  mov      x0, x20                                       
  0x06714  mov      x2, x23                                       
  0x06718  bl       #0x18e80                                        ; objc:setPreviousMesh:
  0x0671c  mov      x0, x23                                       
  0x06720  bl       #0x16dc4                                        ; _objc_release
  0x06724  mov      x0, x22                                       
  0x06728  bl       #0x16dc4                                        ; _objc_release
  0x0672c  mov      x0, x21                                       
  0x06730  bl       #0x16dc4                                        ; _objc_release
  0x06734  mov      x0, x20                                       
  0x06738  bl       #0x183a0                                        ; objc:previousMesh
  0x0673c  mov      x29, x29                                      
  0x06740  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06744  mov      x21, x0                                       
  0x06748  bl       #0x16dc4                                        ; _objc_release
  0x0674c  cbnz     x21, #0x7194                                  
  0x06750  adrp     x8, #0x25000                                  
  0x06754  ldr      x0, [x8, #0x638]                              
  0x06758  bl       #0x19580                                        ; objc:weakObjectsHashTable
  0x0675c  mov      x29, x29                                      
  0x06760  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06764  mov      x21, x0                                       
  0x06768  mov      x0, x20                                       
  0x0676c  mov      x2, x21                                       
  0x06770  bl       #0x18ae0                                        ; objc:setGrabbers:
  0x06774  mov      x0, x21                                       
  0x06778  bl       #0x16dc4                                        ; _objc_release
  0x0677c  mov      x0, x20                                       
  0x06780  bl       #0x174a0                                        ; objc:container
  0x06784  mov      x29, x29                                      
  0x06788  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0678c  mov      x21, x0                                       
  0x06790  mov      x0, x20                                       
  0x06794  bl       #0x17980                                        ; objc:grabbers
  0x06798  mov      x29, x29                                      
  0x0679c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x067a0  mov      x22, x0                                       
  0x067a4  adrp     x1, #0x20000                                  
  0x067a8  add      x1, x1, #0x698                                
  0x067ac  mov      x0, x21                                       
  0x067b0  mov      w2, #0                                        
  0x067b4  mov      x3, x22                                       
  0x067b8  bl       #0x7594                                         ; sub_7594
  0x067bc  mov      x0, x22                                       
  0x067c0  bl       #0x16dc4                                        ; _objc_release
  0x067c4  mov      x0, x21                                       
  0x067c8  bl       #0x16dc4                                        ; _objc_release
  0x067cc  adrp     x19, #0x25000                                 
  0x067d0  ldr      x0, [x19, #0x5f0]                             
  0x067d4  bl       #0x173e0                                        ; objc:begin
  0x067d8  ldr      x0, [x19, #0x5f0]                             
  0x067dc  mov      w2, #1                                        
  0x067e0  bl       #0x18980                                        ; objc:setDisableActions:
  0x067e4  mov      x0, x20                                       
  0x067e8  bl       #0x17980                                        ; objc:grabbers
  0x067ec  mov      x29, x29                                      
  0x067f0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x067f4  mov      x21, x0                                       
  0x067f8  bl       #0x7720                                         ; sub_7720
  0x067fc  mov      x0, x21                                       
  0x06800  bl       #0x16dc4                                        ; _objc_release
  0x06804  ldr      x0, [x19, #0x5f0]                             
  0x06808  bl       #0x17480                                        ; objc:commit
  0x0680c  b        #0x6554                                         ; sub_6554
  0x06810  mov      x19, #0                                       
  0x06814  mov      x0, x20                                       
  0x06818  bl       #0x174a0                                        ; objc:container
  0x0681c  mov      x29, x29                                      
  0x06820  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06824  mov      x21, x0                                       
  0x06828  bl       #0x16dc4                                        ; _objc_release
  0x0682c  add      x0, x20, #0x2dc                               
  0x06830  bl       #0x16e84                                        ; _os_unfair_lock_unlock
  0x06834  cmp      x19, x21                                      
  0x06838  b.ne     #0x7194                                       
  0x0683c  mov      x0, x20                                       
  0x06840  bl       #0x174a0                                        ; objc:container
  0x06844  mov      x29, x29                                      
  0x06848  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0684c  mov      x21, x0                                       
  0x06850  mov      x0, x20                                       
  0x06854  bl       #0x180e0                                        ; objc:nativeMeshToken
  0x06858  mov      x29, x29                                      
  0x0685c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06860  mov      x22, x0                                       
  0x06864  mov      x0, x21                                       
  0x06868  mov      x1, x22                                       
  0x0686c  bl       #0x78f0                                         ; sub_78f0
  0x06870  mov      x0, x22                                       
  0x06874  bl       #0x16dc4                                        ; _objc_release
  0x06878  mov      x0, x21                                       
  0x0687c  bl       #0x16dc4                                        ; _objc_release
  0x06880  mov      x0, x20                                       
  0x06884  bl       #0x174a0                                        ; objc:container
  0x06888  mov      x29, x29                                      
  0x0688c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06890  mov      x21, x0                                       
  0x06894  adrp     x8, #0x24000                                  
  0x06898  ldr      x1, [x8, #0xce0]                              
  0x0689c  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x068a0  tbz      w0, #0, #0x6914                               
  0x068a4  mov      x0, x20                                       
  0x068a8  bl       #0x174a0                                        ; objc:container
  0x068ac  mov      x29, x29                                      
  0x068b0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x068b4  mov      x22, x0                                       
  0x068b8  bl       #0x17260                                        ; objc:appLayout
  0x068bc  mov      x29, x29                                      
  0x068c0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x068c4  mov      x23, x0                                       
  0x068c8  mov      x0, x20                                       
  0x068cc  bl       #0x17260                                        ; objc:appLayout
  0x068d0  mov      x29, x29                                      
  0x068d4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x068d8  mov      x24, x0                                       
  0x068dc  mov      x0, x23                                       
  0x068e0  mov      x2, x24                                       
  0x068e4  bl       #0x17c80                                        ; objc:isEqual:
  0x068e8  mov      x25, x0                                       
  0x068ec  mov      x0, x24                                       
  0x068f0  bl       #0x16dc4                                        ; _objc_release
  0x068f4  mov      x0, x23                                       
  0x068f8  bl       #0x16dc4                                        ; _objc_release
  0x068fc  mov      x0, x22                                       
  0x06900  bl       #0x16dc4                                        ; _objc_release
  0x06904  mov      x0, x21                                       
  0x06908  bl       #0x16dc4                                        ; _objc_release
  0x0690c  tbnz     w25, #0, #0x691c                              
  0x06910  b        #0x7194                                         ; sub_7194
  0x06914  mov      x0, x21                                       
  0x06918  bl       #0x16dc4                                        ; _objc_release
  0x0691c  mov      x0, x20                                       
  0x06920  bl       #0x17040                                        ; objc:accessoryOverflows
  0x06924  tbnz     w0, #0, #0x69a4                               
  0x06928  mov      x0, x20                                       
  0x0692c  bl       #0x17020                                        ; objc:accessory
  0x06930  mov      x29, x29                                      
  0x06934  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06938  mov      x21, x0                                       
  0x0693c  cbnz     x0, #0x699c                                   
  0x06940  mov      x0, x20                                       
  0x06944  bl       #0x17060                                        ; objc:accessorySearches
  0x06948  cmp      w0, #0xef                                     
  0x0694c  b.gt     #0x69a4                                       
  0x06950  mov      x0, x20                                       
  0x06954  bl       #0x17060                                        ; objc:accessorySearches
  0x06958  add      w2, w0, #1                                    
  0x0695c  mov      x0, x20                                       
  0x06960  bl       #0x18700                                        ; objc:setAccessorySearches:
  0x06964  mov      x0, x20                                       
  0x06968  bl       #0x174a0                                        ; objc:container
  0x0696c  mov      x29, x29                                      
  0x06970  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06974  mov      x21, x0                                       
  0x06978  bl       #0x79a8                                         ; sub_79a8
  0x0697c  mov      x29, x29                                      
  0x06980  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06984  mov      x22, x0                                       
  0x06988  mov      x0, x20                                       
  0x0698c  mov      x2, x22                                       
  0x06990  bl       #0x186c0                                        ; objc:setAccessory:
  0x06994  mov      x0, x22                                       
  0x06998  bl       #0x16dc4                                        ; _objc_release
  0x0699c  mov      x0, x21                                       
  0x069a0  bl       #0x16dc4                                        ; _objc_release
  0x069a4  mov      x0, x20                                       
  0x069a8  bl       #0x18060                                        ; objc:native
  0x069ac  cbz      w0, #0x6c38                                   
  0x069b0  mov      x0, x20                                       
  0x069b4  bl       #0x182a0                                        ; objc:opening
  0x069b8  tbnz     w0, #0, #0x6c38                               
  0x069bc  mov      x0, x20                                       
  0x069c0  bl       #0x17020                                        ; objc:accessory
  0x069c4  mov      x29, x29                                      
  0x069c8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x069cc  cbz      x0, #0x6c38                                   
  0x069d0  mov      x21, x0                                       
  0x069d4  mov      x0, x20                                       
  0x069d8  bl       #0x18020                                        ; objc:movingGrabbers
  0x069dc  mov      x29, x29                                      
  0x069e0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x069e4  mov      x22, x0                                       
  0x069e8  bl       #0x17660                                        ; objc:count
  0x069ec  cbz      x0, #0x6a04                                   
  0x069f0  mov      x0, x22                                       
  0x069f4  bl       #0x16dc4                                        ; _objc_release
  0x069f8  mov      x0, x21                                       
  0x069fc  bl       #0x16dc4                                        ; _objc_release
  0x06a00  b        #0x6c38                                         ; sub_6c38
  0x06a04  mov      x0, x20                                       
  0x06a08  bl       #0x17fe0                                        ; objc:movingGrabberSearches
  0x06a0c  mov      x23, x0                                       
  0x06a10  add      x2, x0, #1                                    
  0x06a14  mov      x0, x20                                       
  0x06a18  bl       #0x18cc0                                        ; objc:setMovingGrabberSearches:
  0x06a1c  mov      x0, x22                                       
  0x06a20  bl       #0x16dc4                                        ; _objc_release
  0x06a24  mov      x0, x21                                       
  0x06a28  bl       #0x16dc4                                        ; _objc_release
  0x06a2c  cmp      x23, #0x77                                    
  0x06a30  b.hi     #0x6c38                                       
  0x06a34  str      x28, [sp, #8]                                 
  0x06a38  adrp     x8, #0x25000                                  
  0x06a3c  ldr      x0, [x8, #0x638]                              
  0x06a40  bl       #0x19580                                        ; objc:weakObjectsHashTable
  0x06a44  mov      x29, x29                                      
  0x06a48  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06a4c  mov      x19, x0                                       
  0x06a50  mov      x0, x20                                       
  0x06a54  bl       #0x17020                                        ; objc:accessory
  0x06a58  mov      x29, x29                                      
  0x06a5c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06a60  mov      x22, x0                                       
  0x06a64  adrp     x1, #0x20000                                  
  0x06a68  add      x1, x1, #0x6b8                                
  0x06a6c  mov      w2, #0                                        
  0x06a70  mov      x3, x19                                       
  0x06a74  bl       #0x7594                                         ; sub_7594
  0x06a78  mov      x0, x22                                       
  0x06a7c  bl       #0x16dc4                                        ; _objc_release
  0x06a80  movi     v0.2d, #0000000000000000                      
  0x06a84  stp      q0, q0, [sp, #0xc0]                           
  0x06a88  stp      q0, q0, [sp, #0xa0]                           
  0x06a8c  str      x19, [sp]                                     
  0x06a90  mov      x0, x19                                       
  0x06a94  bl       #0x17180                                        ; objc:allObjects
  0x06a98  mov      x29, x29                                      
  0x06a9c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06aa0  mov      x22, x0                                       
  0x06aa4  add      x2, sp, #0xa0                                 
  0x06aa8  add      x3, sp, #0x1e0                                
  0x06aac  mov      w4, #0x10                                     
  0x06ab0  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x06ab4  cbz      x0, #0x6c24                                   
  0x06ab8  mov      x23, x0                                       
  0x06abc  ldr      x8, [sp, #0xb0]                               
  0x06ac0  ldr      x28, [x8]                                     
  0x06ac4  adrp     x21, #0x25000                                 
  0x06ac8  adrp     x27, #0x25000                                 
  0x06acc  mov      x19, #0                                       
  0x06ad0  ldr      x8, [sp, #0xb0]                               
  0x06ad4  ldr      x8, [x8]                                      
  0x06ad8  cmp      x8, x28                                       
  0x06adc  b.eq     #0x6ae8                                       
  0x06ae0  mov      x0, x22                                       
  0x06ae4  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x06ae8  ldr      x8, [sp, #0xa8]                               
  0x06aec  ldr      x24, [x8, x19, lsl #3]                        
  0x06af0  ldr      x1, [x21, #0x828]                             
  0x06af4  mov      x0, x24                                       
  0x06af8  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x06afc  mov      x29, x29                                      
  0x06b00  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06b04  mov      x25, x0                                       
  0x06b08  bl       #0x16dc4                                        ; _objc_release
  0x06b0c  cbz      x25, #0x6bfc                                  
  0x06b10  mov      x0, x20                                       
  0x06b14  bl       #0x18020                                        ; objc:movingGrabbers
  0x06b18  mov      x29, x29                                      
  0x06b1c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06b20  mov      x25, x0                                       
  0x06b24  bl       #0x16dc4                                        ; _objc_release
  0x06b28  cbnz     x25, #0x6b58                                  
  0x06b2c  adrp     x8, #0x25000                                  
  0x06b30  ldr      x0, [x8, #0x638]                              
  0x06b34  bl       #0x19580                                        ; objc:weakObjectsHashTable
  0x06b38  mov      x29, x29                                      
  0x06b3c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06b40  mov      x25, x0                                       
  0x06b44  mov      x0, x20                                       
  0x06b48  mov      x2, x25                                       
  0x06b4c  bl       #0x18d00                                        ; objc:setMovingGrabbers:
  0x06b50  mov      x0, x25                                       
  0x06b54  bl       #0x16dc4                                        ; _objc_release
  0x06b58  mov      x0, x20                                       
  0x06b5c  bl       #0x18000                                        ; objc:movingGrabberToken
  0x06b60  mov      x29, x29                                      
  0x06b64  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06b68  mov      x25, x0                                       
  0x06b6c  bl       #0x16dc4                                        ; _objc_release
  0x06b70  cbnz     x25, #0x6b98                                  
  0x06b74  adrp     x8, #0x25000                                  
  0x06b78  ldr      x0, [x8, #0x640]                              
  0x06b7c  bl       #0x16da4                                        ; _objc_opt_new
  0x06b80  mov      x25, x0                                       
  0x06b84  mov      x0, x20                                       
  0x06b88  mov      x2, x25                                       
  0x06b8c  bl       #0x18ce0                                        ; objc:setMovingGrabberToken:
  0x06b90  mov      x0, x25                                       
  0x06b94  bl       #0x16dc4                                        ; _objc_release
  0x06b98  ldr      x25, [x27, #0x820]                            
  0x06b9c  mov      x0, x20                                       
  0x06ba0  bl       #0x18000                                        ; objc:movingGrabberToken
  0x06ba4  mov      x29, x29                                      
  0x06ba8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06bac  mov      x26, x0                                       
  0x06bb0  mov      x0, x24                                       
  0x06bb4  mov      x1, x25                                       
  0x06bb8  mov      x2, x26                                       
  0x06bbc  mov      w3, #1                                        
  0x06bc0  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x06bc4  mov      x0, x26                                       
  0x06bc8  bl       #0x16dc4                                        ; _objc_release
  0x06bcc  mov      x0, x20                                       
  0x06bd0  bl       #0x18020                                        ; objc:movingGrabbers
  0x06bd4  mov      x29, x29                                      
  0x06bd8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06bdc  mov      x25, x0                                       
  0x06be0  mov      x2, x24                                       
  0x06be4  bl       #0x170c0                                        ; objc:addObject:
  0x06be8  mov      x0, x25                                       
  0x06bec  bl       #0x16dc4                                        ; _objc_release
  0x06bf0  mov      x0, x24                                       
  0x06bf4  mov      w1, #0                                        
  0x06bf8  bl       #0x4720                                         ; sub_4720
  0x06bfc  add      x19, x19, #1                                  
  0x06c00  cmp      x23, x19                                      
  0x06c04  b.ne     #0x6ad0                                       
  0x06c08  add      x2, sp, #0xa0                                 
  0x06c0c  add      x3, sp, #0x1e0                                
  0x06c10  mov      x0, x22                                       
  0x06c14  mov      w4, #0x10                                     
  0x06c18  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x06c1c  mov      x23, x0                                       
  0x06c20  cbnz     x0, #0x6acc                                   
  0x06c24  mov      x0, x22                                       
  0x06c28  bl       #0x16dc4                                        ; _objc_release
  0x06c2c  ldr      x0, [sp]                                      
  0x06c30  bl       #0x16dc4                                        ; _objc_release
  0x06c34  ldr      x28, [sp, #8]                                 
  0x06c38  mov      x0, x20                                       
  0x06c3c  bl       #0x17020                                        ; objc:accessory
  0x06c40  mov      x29, x29                                      
  0x06c44  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06c48  cbz      x0, #0x6d08                                   
  0x06c4c  mov      x21, x0                                       
  0x06c50  mov      x0, x20                                       
  0x06c54  bl       #0x17a20                                        ; objc:iconFits
  0x06c58  mov      x22, x0                                       
  0x06c5c  mov      x0, x21                                       
  0x06c60  bl       #0x16dc4                                        ; _objc_release
  0x06c64  tbnz     w22, #0, #0x6d08                              
  0x06c68  mov      x0, x20                                       
  0x06c6c  bl       #0x17020                                        ; objc:accessory
  0x06c70  mov      x29, x29                                      
  0x06c74  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06c78  mov      x21, x0                                       
  0x06c7c  mov      w1, #0                                        
  0x06c80  bl       #0x7c10                                         ; sub_7c10
  0x06c84  mov      x0, x21                                       
  0x06c88  bl       #0x16dc4                                        ; _objc_release
  0x06c8c  strb     wzr, [sp, #0x9f]                              
  0x06c90  mov      x0, x20                                       
  0x06c94  bl       #0x17020                                        ; objc:accessory
  0x06c98  mov      x29, x29                                      
  0x06c9c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06ca0  mov      x22, x0                                       
  0x06ca4  add      x1, sp, #0x9f                                 
  0x06ca8  bl       #0x7d78                                         ; sub_7d78
  0x06cac  mov      x29, x29                                      
  0x06cb0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06cb4  mov      x21, x0                                       
  0x06cb8  mov      x0, x22                                       
  0x06cbc  bl       #0x16dc4                                        ; _objc_release
  0x06cc0  mov      x0, x21                                       
  0x06cc4  bl       #0x17660                                        ; objc:count
  0x06cc8  cbz      x0, #0x6cdc                                   
  0x06ccc  mov      x0, x20                                       
  0x06cd0  mov      x2, x21                                       
  0x06cd4  bl       #0x17f80                                        ; objc:meshIcons:
  0x06cd8  b        #0x6d00                                         ; sub_6d00
  0x06cdc  ldrb     w8, [sp, #0x9f]                               
  0x06ce0  cmp      w8, #1                                        
  0x06ce4  b.ne     #0x6d00                                       
  0x06ce8  mov      x0, x20                                       
  0x06cec  bl       #0x17040                                        ; objc:accessoryOverflows
  0x06cf0  tbnz     w0, #0, #0x6d00                               
  0x06cf4  mov      x0, x20                                       
  0x06cf8  mov      w2, #1                                        
  0x06cfc  bl       #0x18b60                                        ; objc:setIconFits:
  0x06d00  mov      x0, x21                                       
  0x06d04  bl       #0x16dc4                                        ; _objc_release
  0x06d08  mov      x0, x20                                       
  0x06d0c  bl       #0x17020                                        ; objc:accessory
  0x06d10  mov      x29, x29                                      
  0x06d14  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06d18  cbz      x0, #0x6d48                                   
  0x06d1c  mov      x21, x0                                       
  0x06d20  mov      x0, x20                                       
  0x06d24  bl       #0x17380                                        ; objc:badge
  0x06d28  mov      x29, x29                                      
  0x06d2c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06d30  cbz      x0, #0x6d84                                   
  0x06d34  mov      x22, x0                                       
  0x06d38  mov      x0, x22                                       
  0x06d3c  bl       #0x16dc4                                        ; _objc_release
  0x06d40  mov      x0, x21                                       
  0x06d44  bl       #0x16dc4                                        ; _objc_release
  0x06d48  mov      x0, x20                                       
  0x06d4c  bl       #0x17380                                        ; objc:badge
  0x06d50  mov      x29, x29                                      
  0x06d54  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06d58  cbz      x0, #0x6ec8                                   
  0x06d5c  mov      x21, x0                                       
  0x06d60  mov      x0, x20                                       
  0x06d64  bl       #0x173a0                                        ; objc:badgeCopy
  0x06d68  mov      x29, x29                                      
  0x06d6c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06d70  cbz      x0, #0x6ea8                                   
  0x06d74  bl       #0x16dc4                                        ; _objc_release
  0x06d78  mov      x0, x21                                       
  0x06d7c  bl       #0x16dc4                                        ; _objc_release
  0x06d80  b        #0x6ec8                                         ; sub_6ec8
  0x06d84  mov      x0, x20                                       
  0x06d88  bl       #0x173c0                                        ; objc:badgeSearches
  0x06d8c  mov      x22, x0                                       
  0x06d90  mov      x0, x21                                       
  0x06d94  bl       #0x16dc4                                        ; _objc_release
  0x06d98  cmp      w22, #0xef                                    
  0x06d9c  b.gt     #0x6d48                                       
  0x06da0  mov      x0, x20                                       
  0x06da4  bl       #0x173c0                                        ; objc:badgeSearches
  0x06da8  add      w2, w0, #1                                    
  0x06dac  mov      x0, x20                                       
  0x06db0  bl       #0x187e0                                        ; objc:setBadgeSearches:
  0x06db4  adrp     x8, #0x25000                                  
  0x06db8  ldr      x0, [x8, #0x638]                              
  0x06dbc  bl       #0x19580                                        ; objc:weakObjectsHashTable
  0x06dc0  mov      x29, x29                                      
  0x06dc4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06dc8  mov      x21, x0                                       
  0x06dcc  mov      x0, x20                                       
  0x06dd0  bl       #0x17020                                        ; objc:accessory
  0x06dd4  mov      x29, x29                                      
  0x06dd8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06ddc  mov      x22, x0                                       
  0x06de0  adrp     x1, #0x20000                                  
  0x06de4  add      x1, x1, #0x6d8                                
  0x06de8  mov      w2, #0                                        
  0x06dec  mov      x3, x21                                       
  0x06df0  bl       #0x7594                                         ; sub_7594
  0x06df4  mov      x0, x22                                       
  0x06df8  bl       #0x16dc4                                        ; _objc_release
  0x06dfc  movi     v0.2d, #0000000000000000                      
  0x06e00  stp      q0, q0, [sp, #0x70]                           
  0x06e04  stp      q0, q0, [sp, #0x50]                           
  0x06e08  mov      x0, x21                                       
  0x06e0c  bl       #0x16dd4                                        ; _objc_retain
  0x06e10  mov      x21, x0                                       
  0x06e14  add      x2, sp, #0x50                                 
  0x06e18  add      x3, sp, #0x160                                
  0x06e1c  mov      w4, #0x10                                     
  0x06e20  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x06e24  cbz      x0, #0x6ea0                                   
  0x06e28  mov      x22, x0                                       
  0x06e2c  ldr      x8, [sp, #0x60]                               
  0x06e30  ldr      x19, [x8]                                     
  0x06e34  fmov     d9, #1.00000000                               
  0x06e38  mov      x24, #0                                       
  0x06e3c  ldr      x8, [sp, #0x60]                               
  0x06e40  ldr      x8, [x8]                                      
  0x06e44  cmp      x8, x19                                       
  0x06e48  b.eq     #0x6e54                                       
  0x06e4c  mov      x0, x21                                       
  0x06e50  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x06e54  ldr      x8, [sp, #0x58]                               
  0x06e58  ldr      x23, [x8, x24, lsl #3]                        
  0x06e5c  mov      x0, x23                                       
  0x06e60  bl       #0x17cc0                                        ; objc:isHidden
  0x06e64  tbnz     w0, #0, #0x6e78                               
  0x06e68  mov      x0, x23                                       
  0x06e6c  bl       #0x17460                                        ; objc:bounds
  0x06e70  fcmp     d2, d9                                        
  0x06e74  b.gt     #0x72b8                                       
  0x06e78  add      x24, x24, #1                                  
  0x06e7c  cmp      x22, x24                                      
  0x06e80  b.ne     #0x6e3c                                       
  0x06e84  add      x2, sp, #0x50                                 
  0x06e88  add      x3, sp, #0x160                                
  0x06e8c  mov      x0, x21                                       
  0x06e90  mov      w4, #0x10                                     
  0x06e94  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x06e98  mov      x22, x0                                       
  0x06e9c  cbnz     x0, #0x6e38                                   
  0x06ea0  mov      x22, x21                                      
  0x06ea4  b        #0x6d38                                         ; sub_6d38
  0x06ea8  mov      x0, x20                                       
  0x06eac  bl       #0x182a0                                        ; objc:opening
  0x06eb0  mov      x22, x0                                       
  0x06eb4  mov      x0, x21                                       
  0x06eb8  bl       #0x16dc4                                        ; _objc_release
  0x06ebc  tbnz     w22, #0, #0x6ec8                              
  0x06ec0  mov      x0, x20                                       
  0x06ec4  bl       #0x17ee0                                        ; objc:makeBadgeCopy
  0x06ec8  mov      x0, x20                                       
  0x06ecc  bl       #0x17d80                                        ; objc:lastTime
  0x06ed0  fmov     d9, d0                                        
  0x06ed4  mov      x0, x20                                       
  0x06ed8  fmov     d0, d8                                        
  0x06edc  bl       #0x18c20                                        ; objc:setLastTime:
  0x06ee0  mov      x0, x20                                       
  0x06ee4  bl       #0x18060                                        ; objc:native
  0x06ee8  cbz      w0, #0x6efc                                   
  0x06eec  mov      x0, x20                                       
  0x06ef0  fmov     d0, d8                                        
  0x06ef4  bl       #0x18120                                        ; objc:nativeSample:
  0x06ef8  b        #0x6f10                                         ; sub_6f10
  0x06efc  fsub     d0, d8, d9                                    
  0x06f00  movi     d1, #0000000000000000                         
  0x06f04  fmaxnm   d0, d0, d1                                    
  0x06f08  mov      x0, x20                                       
  0x06f0c  bl       #0x17160                                        ; objc:advance:
  0x06f10  mov      x0, x20                                       
  0x06f14  bl       #0x17e80                                        ; objc:link
  0x06f18  mov      x29, x29                                      
  0x06f1c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06f20  mov      x21, x0                                       
  0x06f24  bl       #0x16dc4                                        ; _objc_release
  0x06f28  cbz      x21, #0x719c                                  
  0x06f2c  mov      x0, x20                                       
  0x06f30  bl       #0x182a0                                        ; objc:opening
  0x06f34  cbz      w0, #0x6f68                                   
  0x06f38  mov      x0, x20                                       
  0x06f3c  bl       #0x19180                                        ; objc:shadeStartTime
  0x06f40  fcmp     d0, #0.0                                      
  0x06f44  b.ne     #0x6f68                                       
  0x06f48  ldr      d0, [x20, #0x200]                             
  0x06f4c  adrp     x8, #0x19000                                  
  0x06f50  ldr      d1, [x8, #0xb20]                              
  0x06f54  fcmp     d0, d1                                        
  0x06f58  b.pl     #0x6f68                                       
  0x06f5c  mov      x0, x20                                       
  0x06f60  fmov     d0, d8                                        
  0x06f64  bl       #0x18f80                                        ; objc:setShadeStartTime:
  0x06f68  mov      x0, x20                                       
  0x06f6c  bl       #0x19180                                        ; objc:shadeStartTime
  0x06f70  fcmp     d0, #0.0                                      
  0x06f74  b.eq     #0x6f84                                       
  0x06f78  mov      x0, x20                                       
  0x06f7c  bl       #0x19180                                        ; objc:shadeStartTime
  0x06f80  bl       #0x16be4                                        ; _UIAnimationDragCoefficient
  0x06f84  mov      x0, x20                                       
  0x06f88  bl       #0x182a0                                        ; objc:opening
  0x06f8c  cbz      w0, #0x6f98                                   
  0x06f90  mov      x0, x20                                       
  0x06f94  bl       #0x19180                                        ; objc:shadeStartTime
  0x06f98  mov      x0, x20                                       
  0x06f9c  bl       #0x182c0                                        ; objc:openingShade
  0x06fa0  mov      x29, x29                                      
  0x06fa4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06fa8  mov      x21, x0                                       
  0x06fac  bl       #0x16dc4                                        ; _objc_release
  0x06fb0  cbz      x21, #0x7084                                  
  0x06fb4  adrp     x19, #0x25000                                 
  0x06fb8  ldr      x0, [x19, #0x5f0]                             
  0x06fbc  bl       #0x173e0                                        ; objc:begin
  0x06fc0  ldr      x0, [x19, #0x5f0]                             
  0x06fc4  mov      w2, #1                                        
  0x06fc8  bl       #0x18980                                        ; objc:setDisableActions:
  0x06fcc  mov      x0, x20                                       
  0x06fd0  bl       #0x174a0                                        ; objc:container
  0x06fd4  mov      x29, x29                                      
  0x06fd8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x06fdc  mov      x21, x0                                       
  0x06fe0  bl       #0x17460                                        ; objc:bounds
  0x06fe4  fmov     d9, d0                                        
  0x06fe8  fmov     d10, d1                                       
  0x06fec  fmov     d11, d2                                       
  0x06ff0  fmov     d12, d3                                       
  0x06ff4  mov      x0, x20                                       
  0x06ff8  bl       #0x182c0                                        ; objc:openingShade
  0x06ffc  mov      x29, x29                                      
  0x07000  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x07004  mov      x22, x0                                       
  0x07008  fmov     d0, d9                                        
  0x0700c  fmov     d1, d10                                       
  0x07010  fmov     d2, d11                                       
  0x07014  fmov     d3, d12                                       
  0x07018  bl       #0x18a20                                        ; objc:setFrame:
  0x0701c  mov      x0, x22                                       
  0x07020  bl       #0x16dc4                                        ; _objc_release
  0x07024  mov      x0, x21                                       
  0x07028  bl       #0x16dc4                                        ; _objc_release
  0x0702c  mov      x0, x20                                       
  0x07030  bl       #0x182c0                                        ; objc:openingShade
  0x07034  mov      x29, x29                                      
  0x07038  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0703c  mov      x21, x0                                       
  0x07040  movi     d0, #0000000000000000                         
  0x07044  bl       #0x18dc0                                        ; objc:setOpacity:
  0x07048  mov      x0, x21                                       
  0x0704c  bl       #0x16dc4                                        ; _objc_release
  0x07050  mov      x0, x20                                       
  0x07054  bl       #0x182c0                                        ; objc:openingShade
  0x07058  mov      x29, x29                                      
  0x0705c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x07060  mov      x21, x0                                       
  0x07064  bl       #0x18480                                        ; objc:removeFromSuperlayer
  0x07068  mov      x0, x21                                       
  0x0706c  bl       #0x16dc4                                        ; _objc_release
  0x07070  mov      x0, x20                                       
  0x07074  mov      x2, #0                                        
  0x07078  bl       #0x18e00                                        ; objc:setOpeningShade:
  0x0707c  ldr      x0, [x19, #0x5f0]                             
  0x07080  bl       #0x17480                                        ; objc:commit
  0x07084  mov      x0, x20                                       
  0x07088  fmov     d0, d8                                        
  0x0708c  bl       #0x17820                                        ; objc:ensureGlassRimAt:
  0x07090  mov      x0, x20                                       
  0x07094  bl       #0x182e0                                        ; objc:owner
  0x07098  mov      x29, x29                                      
  0x0709c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x070a0  mov      x21, x0                                       
  0x070a4  cbz      x0, #0x70dc                                   
  0x070a8  mov      x0, x20                                       
  0x070ac  bl       #0x182e0                                        ; objc:owner
  0x070b0  mov      x29, x29                                      
  0x070b4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x070b8  mov      x22, x0                                       
  0x070bc  adrp     x1, #0x1a000                                  
  0x070c0  add      x1, x1, #0x155                                
  0x070c4  bl       #0x801c                                         ; sub_801c
  0x070c8  cmp      x0, #2                                        
  0x070cc  cset     w19, eq                                       
  0x070d0  mov      x0, x22                                       
  0x070d4  bl       #0x16dc4                                        ; _objc_release
  0x070d8  b        #0x70e0                                         ; sub_70e0
  0x070dc  mov      w19, #0                                       
  0x070e0  mov      x0, x21                                       
  0x070e4  bl       #0x16dc4                                        ; _objc_release
  0x070e8  mov      x8, #0                                        
  0x070ec  add      x9, x20, #8                                   
  0x070f0  ldr      d0, [x20, #0x200]                             
  0x070f4  ldr      d1, [x20, #0x210]                             
  0x070f8  fabd     d0, d0, d1                                    
  0x070fc  ldr      d1, [x20, #0x208]                             
  0x07100  fabs     d2, d1                                        
  0x07104  adrp     x10, #0x19000                                 
  0x07108  ldr      d1, [x10, #0xaf8]                             
  0x0710c  fmadd    d0, d2, d1, d0                                
  0x07110  add      x10, x20, #0x128                              
  0x07114  add      x11, x20, #0x98                               
  0x07118  mov      x14, #0                                       
  0x0711c  add      x12, x9, x8, lsl #4                           
  0x07120  mov      w16, #1                                       
  0x07124  add      x13, x10, x8, lsl #4                          
  0x07128  add      x15, x11, x8, lsl #4                          
  0x0712c  mov      x17, x16                                      
  0x07130  ldr      d2, [x12, x14, lsl #3]                        
  0x07134  ldr      d3, [x13, x14, lsl #3]                        
  0x07138  ldr      d4, [x15, x14, lsl #3]                        
  0x0713c  fabd     d2, d2, d3                                    
  0x07140  fabs     d3, d4                                        
  0x07144  fmadd    d2, d3, d1, d2                                
  0x07148  fadd     d0, d0, d2                                    
  0x0714c  mov      w14, #1                                       
  0x07150  mov      w16, #0                                       
  0x07154  tbnz     w17, #0, #0x712c                              
  0x07158  add      x8, x8, #1                                    
  0x0715c  cmp      x8, #9                                        
  0x07160  b.ne     #0x7118                                       
  0x07164  adrp     x8, #0x19000                                  
  0x07168  ldr      d1, [x8, #0xb00]                              
  0x0716c  fcmp     d0, d1                                        
  0x07170  b.pl     #0x71e8                                       
  0x07174  cbz      w19, #0x7194                                  
  0x07178  mov      x0, x20                                       
  0x0717c  bl       #0x19220                                        ; objc:startTime
  0x07180  fsub     d0, d8, d0                                    
  0x07184  adrp     x8, #0x19000                                  
  0x07188  ldr      d1, [x8, #0xb28]                              
  0x0718c  fcmp     d0, d1                                        
  0x07190  b.le     #0x71e8                                       
  0x07194  mov      x0, x20                                       
  0x07198  bl       #0x178a0                                        ; objc:finish
  0x0719c  mov      x0, x28                                       
  0x071a0  bl       #0x16dc4                                        ; _objc_release
  0x071a4  ldur     x8, [x29, #-0x90]                             
  0x071a8  adrp     x9, #0x20000                                  
  0x071ac  ldr      x9, [x9, #0x320]                              
  0x071b0  ldr      x9, [x9]                                      
  0x071b4  cmp      x9, x8                                        
  0x071b8  b.ne     #0x73d0                                       
  0x071bc  add      sp, sp, #0x270                                
  0x071c0  ldp      x29, x30, [sp, #0x80]                         
  0x071c4  ldp      x20, x19, [sp, #0x70]                         
  0x071c8  ldp      x22, x21, [sp, #0x60]                         
  0x071cc  ldp      x24, x23, [sp, #0x50]                         
  0x071d0  ldp      x26, x25, [sp, #0x40]                         
  0x071d4  ldp      x28, x27, [sp, #0x30]                         
  0x071d8  ldp      d9, d8, [sp, #0x20]                           
  0x071dc  ldp      d11, d10, [sp, #0x10]                         
  0x071e0  ldp      d13, d12, [sp], #0x90                         
  0x071e4  retab                                                  
