CG27GenieDriver stop @0x4944  (479 insns)
types: v16@0:8
  0x04944  pacibsp                                                
  0x04948  stp      d9, d8, [sp, #-0x70]!                         
  0x0494c  stp      x28, x27, [sp, #0x10]                         
  0x04950  stp      x26, x25, [sp, #0x20]                         
  0x04954  stp      x24, x23, [sp, #0x30]                         
  0x04958  stp      x22, x21, [sp, #0x40]                         
  0x0495c  stp      x20, x19, [sp, #0x50]                         
  0x04960  stp      x29, x30, [sp, #0x60]                         
  0x04964  add      x29, sp, #0x60                                
  0x04968  sub      sp, sp, #0x260                                
  0x0496c  mov      x27, x0                                       
  0x04970  adrp     x8, #0x20000                                  
  0x04974  ldr      x8, [x8, #0x320]                              
  0x04978  ldr      x8, [x8]                                      
  0x0497c  stur     x8, [x29, #-0x70]                             
  0x04980  bl       #0x185a0                                        ; objc:restoreMovingGrabbers
  0x04984  mov      x0, x27                                       
  0x04988  bl       #0x17e80                                        ; objc:link
  0x0498c  mov      x29, x29                                      
  0x04990  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04994  mov      x20, x0                                       
  0x04998  bl       #0x17c40                                        ; objc:invalidate
  0x0499c  mov      x0, x20                                       
  0x049a0  bl       #0x16dc4                                        ; _objc_release
  0x049a4  mov      x0, x27                                       
  0x049a8  mov      x2, #0                                        
  0x049ac  bl       #0x18c60                                        ; objc:setLink:
  0x049b0  adrp     x19, #0x25000                                 
  0x049b4  ldr      x0, [x19, #0x5f0]                             
  0x049b8  bl       #0x173e0                                        ; objc:begin
  0x049bc  ldr      x0, [x19, #0x5f0]                             
  0x049c0  mov      w2, #1                                        
  0x049c4  bl       #0x18980                                        ; objc:setDisableActions:
  0x049c8  mov      x0, x27                                       
  0x049cc  bl       #0x174a0                                        ; objc:container
  0x049d0  mov      x29, x29                                      
  0x049d4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x049d8  mov      x20, x0                                       
  0x049dc  bl       #0x17dc0                                        ; objc:layer
  0x049e0  mov      x29, x29                                      
  0x049e4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x049e8  mov      x21, x0                                       
  0x049ec  adrp     x22, #0x20000                                 
  0x049f0  add      x22, x22, #0x658                              
  0x049f4  mov      x2, x22                                       
  0x049f8  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x049fc  mov      x0, x21                                       
  0x04a00  bl       #0x16dc4                                        ; _objc_release
  0x04a04  mov      x0, x20                                       
  0x04a08  bl       #0x16dc4                                        ; _objc_release
  0x04a0c  mov      x0, x27                                       
  0x04a10  bl       #0x17020                                        ; objc:accessory
  0x04a14  mov      x29, x29                                      
  0x04a18  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04a1c  mov      x20, x0                                       
  0x04a20  bl       #0x17dc0                                        ; objc:layer
  0x04a24  mov      x29, x29                                      
  0x04a28  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04a2c  mov      x21, x0                                       
  0x04a30  mov      x2, x22                                       
  0x04a34  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x04a38  mov      x0, x21                                       
  0x04a3c  bl       #0x16dc4                                        ; _objc_release
  0x04a40  mov      x0, x20                                       
  0x04a44  bl       #0x16dc4                                        ; _objc_release
  0x04a48  mov      x0, x27                                       
  0x04a4c  bl       #0x18060                                        ; objc:native
  0x04a50  cbz      w0, #0x4a5c                                   
  0x04a54  mov      x0, x27                                       
  0x04a58  bl       #0x18160                                        ; objc:nativeStop
  0x04a5c  mov      x0, x27                                       
  0x04a60  bl       #0x172a0                                        ; objc:appliedMesh
  0x04a64  mov      x29, x29                                      
  0x04a68  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04a6c  mov      x20, x0                                       
  0x04a70  bl       #0x16dc4                                        ; _objc_release
  0x04a74  cbz      x20, #0x4ad0                                  
  0x04a78  mov      x0, x27                                       
  0x04a7c  bl       #0x183a0                                        ; objc:previousMesh
  0x04a80  mov      x29, x29                                      
  0x04a84  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04a88  mov      x20, x0                                       
  0x04a8c  mov      x0, x27                                       
  0x04a90  bl       #0x174a0                                        ; objc:container
  0x04a94  mov      x29, x29                                      
  0x04a98  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04a9c  mov      x21, x0                                       
  0x04aa0  bl       #0x17dc0                                        ; objc:layer
  0x04aa4  mov      x29, x29                                      
  0x04aa8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04aac  mov      x22, x0                                       
  0x04ab0  mov      x2, x20                                       
  0x04ab4  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x04ab8  mov      x0, x22                                       
  0x04abc  bl       #0x16dc4                                        ; _objc_release
  0x04ac0  mov      x0, x21                                       
  0x04ac4  bl       #0x16dc4                                        ; _objc_release
  0x04ac8  mov      x0, x20                                       
  0x04acc  bl       #0x16dc4                                        ; _objc_release
  0x04ad0  mov      x0, x27                                       
  0x04ad4  bl       #0x172a0                                        ; objc:appliedMesh
  0x04ad8  mov      x29, x29                                      
  0x04adc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04ae0  cbz      x0, #0x4b3c                                   
  0x04ae4  mov      x20, x0                                       
  0x04ae8  mov      x0, x27                                       
  0x04aec  bl       #0x17040                                        ; objc:accessoryOverflows
  0x04af0  mov      x21, x0                                       
  0x04af4  mov      x0, x20                                       
  0x04af8  bl       #0x16dc4                                        ; _objc_release
  0x04afc  tbnz     w21, #0, #0x4b3c                              
  0x04b00  mov      x0, x27                                       
  0x04b04  bl       #0x17020                                        ; objc:accessory
  0x04b08  mov      x29, x29                                      
  0x04b0c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04b10  mov      x20, x0                                       
  0x04b14  bl       #0x17dc0                                        ; objc:layer
  0x04b18  mov      x29, x29                                      
  0x04b1c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04b20  mov      x21, x0                                       
  0x04b24  mov      x2, #0                                        
  0x04b28  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x04b2c  mov      x0, x21                                       
  0x04b30  bl       #0x16dc4                                        ; _objc_release
  0x04b34  mov      x0, x20                                       
  0x04b38  bl       #0x16dc4                                        ; _objc_release
  0x04b3c  movi     v0.2d, #0000000000000000                      
  0x04b40  stp      q0, q0, [sp, #0x70]                           
  0x04b44  stp      q0, q0, [sp, #0x50]                           
  0x04b48  mov      x0, x27                                       
  0x04b4c  bl       #0x17a80                                        ; objc:iconMeshViews
  0x04b50  mov      x29, x29                                      
  0x04b54  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04b58  mov      x21, x0                                       
  0x04b5c  bl       #0x17180                                        ; objc:allObjects
  0x04b60  mov      x29, x29                                      
  0x04b64  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04b68  mov      x20, x0                                       
  0x04b6c  mov      x0, x21                                       
  0x04b70  bl       #0x16dc4                                        ; _objc_release
  0x04b74  add      x2, sp, #0x50                                 
  0x04b78  add      x3, sp, #0x150                                
  0x04b7c  mov      x0, x20                                       
  0x04b80  mov      w4, #0x10                                     
  0x04b84  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x04b88  cbz      x0, #0x4cbc                                   
  0x04b8c  mov      x21, x0                                       
  0x04b90  ldr      x8, [sp, #0x60]                               
  0x04b94  ldr      x19, [x8]                                     
  0x04b98  adrp     x25, #0x25000                                 
  0x04b9c  mov      x26, #0                                       
  0x04ba0  ldr      x8, [sp, #0x60]                               
  0x04ba4  ldr      x8, [x8]                                      
  0x04ba8  cmp      x8, x19                                       
  0x04bac  b.eq     #0x4bb8                                       
  0x04bb0  mov      x0, x20                                       
  0x04bb4  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x04bb8  ldr      x8, [sp, #0x58]                               
  0x04bbc  ldr      x22, [x8, x26, lsl #3]                        
  0x04bc0  mov      x0, x22                                       
  0x04bc4  bl       #0x17dc0                                        ; objc:layer
  0x04bc8  mov      x29, x29                                      
  0x04bcc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04bd0  mov      x23, x0                                       
  0x04bd4  mov      x2, #0                                        
  0x04bd8  bl       #0x18ca0                                        ; objc:setMeshTransform:
  0x04bdc  mov      x0, x23                                       
  0x04be0  bl       #0x16dc4                                        ; _objc_release
  0x04be4  mov      x0, x22                                       
  0x04be8  bl       #0x17dc0                                        ; objc:layer
  0x04bec  mov      x29, x29                                      
  0x04bf0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04bf4  mov      x22, x0                                       
  0x04bf8  ldr      x1, [x25, #0x840]                             
  0x04bfc  bl       #0x16d34                                        ; _objc_getAssociatedObject
  0x04c00  mov      x29, x29                                      
  0x04c04  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04c08  mov      x23, x0                                       
  0x04c0c  bl       #0x17660                                        ; objc:count
  0x04c10  cmp      x0, #2                                        
  0x04c14  b.ne     #0x4c84                                       
  0x04c18  mov      x0, x23                                       
  0x04c1c  mov      x2, #0                                        
  0x04c20  bl       #0x18200                                        ; objc:objectAtIndexedSubscript:
  0x04c24  mov      x29, x29                                      
  0x04c28  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04c2c  mov      x24, x0                                       
  0x04c30  bl       #0x177c0                                        ; objc:doubleValue
  0x04c34  mov      x0, x22                                       
  0x04c38  bl       #0x18ea0                                        ; objc:setRasterizationScale:
  0x04c3c  mov      x0, x24                                       
  0x04c40  bl       #0x16dc4                                        ; _objc_release
  0x04c44  mov      x0, x23                                       
  0x04c48  mov      w2, #1                                        
  0x04c4c  bl       #0x18200                                        ; objc:objectAtIndexedSubscript:
  0x04c50  mov      x29, x29                                      
  0x04c54  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04c58  mov      x24, x0                                       
  0x04c5c  bl       #0x177c0                                        ; objc:doubleValue
  0x04c60  mov      x0, x22                                       
  0x04c64  bl       #0x188c0                                        ; objc:setContentsScale:
  0x04c68  mov      x0, x24                                       
  0x04c6c  bl       #0x16dc4                                        ; _objc_release
  0x04c70  ldr      x1, [x25, #0x840]                             
  0x04c74  mov      x0, x22                                       
  0x04c78  mov      x2, #0                                        
  0x04c7c  mov      w3, #1                                        
  0x04c80  bl       #0x16e14                                        ; _objc_setAssociatedObject
  0x04c84  mov      x0, x23                                       
  0x04c88  bl       #0x16dc4                                        ; _objc_release
  0x04c8c  mov      x0, x22                                       
  0x04c90  bl       #0x16dc4                                        ; _objc_release
  0x04c94  add      x26, x26, #1                                  
  0x04c98  cmp      x21, x26                                      
  0x04c9c  b.ne     #0x4ba0                                       
  0x04ca0  add      x2, sp, #0x50                                 
  0x04ca4  add      x3, sp, #0x150                                
  0x04ca8  mov      x0, x20                                       
  0x04cac  mov      w4, #0x10                                     
  0x04cb0  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x04cb4  mov      x21, x0                                       
  0x04cb8  cbnz     x0, #0x4b9c                                   
  0x04cbc  mov      x0, x20                                       
  0x04cc0  bl       #0x16dc4                                        ; _objc_release
  0x04cc4  mov      x0, x27                                       
  0x04cc8  mov      x2, #0                                        
  0x04ccc  bl       #0x18b80                                        ; objc:setIconMeshViews:
  0x04cd0  mov      x0, x27                                       
  0x04cd4  mov      x2, #0                                        
  0x04cd8  bl       #0x18780                                        ; objc:setAppliedMesh:
  0x04cdc  mov      x0, x27                                       
  0x04ce0  mov      x2, #0                                        
  0x04ce4  bl       #0x18e80                                        ; objc:setPreviousMesh:
  0x04ce8  mov      x0, x27                                       
  0x04cec  bl       #0x182c0                                        ; objc:openingShade
  0x04cf0  mov      x29, x29                                      
  0x04cf4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04cf8  mov      x20, x0                                       
  0x04cfc  bl       #0x18480                                        ; objc:removeFromSuperlayer
  0x04d00  mov      x0, x20                                       
  0x04d04  bl       #0x16dc4                                        ; _objc_release
  0x04d08  mov      x0, x27                                       
  0x04d0c  mov      x2, #0                                        
  0x04d10  bl       #0x18e00                                        ; objc:setOpeningShade:
  0x04d14  mov      x0, x27                                       
  0x04d18  bl       #0x17960                                        ; objc:glassRim
  0x04d1c  mov      x29, x29                                      
  0x04d20  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04d24  mov      x20, x0                                       
  0x04d28  bl       #0x18480                                        ; objc:removeFromSuperlayer
  0x04d2c  mov      x0, x20                                       
  0x04d30  bl       #0x16dc4                                        ; _objc_release
  0x04d34  mov      x0, x27                                       
  0x04d38  mov      x2, #0                                        
  0x04d3c  bl       #0x18ac0                                        ; objc:setGlassRim:
  0x04d40  mov      x0, x27                                       
  0x04d44  bl       #0x17980                                        ; objc:grabbers
  0x04d48  mov      x29, x29                                      
  0x04d4c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04d50  mov      x21, x0                                       
  0x04d54  bl       #0x175e0                                        ; objc:copy
  0x04d58  mov      x20, x0                                       
  0x04d5c  mov      x0, x21                                       
  0x04d60  bl       #0x16dc4                                        ; _objc_release
  0x04d64  movi     v0.2d, #0000000000000000                      
  0x04d68  stp      q0, q0, [sp, #0x30]                           
  0x04d6c  stp      q0, q0, [sp, #0x10]                           
  0x04d70  adrp     x8, #0x25000                                  
  0x04d74  ldr      x0, [x8, #0x890]                              
  0x04d78  bl       #0x16dd4                                        ; _objc_retain
  0x04d7c  mov      x21, x0                                       
  0x04d80  add      x2, sp, #0x10                                 
  0x04d84  add      x3, sp, #0xd0                                 
  0x04d88  mov      w4, #0x10                                     
  0x04d8c  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x04d90  cbz      x0, #0x4e58                                   
  0x04d94  mov      x22, x0                                       
  0x04d98  ldr      x8, [sp, #0x20]                               
  0x04d9c  ldr      x19, [x8]                                     
  0x04da0  mov      x26, #0                                       
  0x04da4  ldr      x8, [sp, #0x20]                               
  0x04da8  ldr      x8, [x8]                                      
  0x04dac  cmp      x8, x19                                       
  0x04db0  b.eq     #0x4dbc                                       
  0x04db4  mov      x0, x21                                       
  0x04db8  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x04dbc  ldr      x8, [sp, #0x18]                               
  0x04dc0  ldr      x23, [x8, x26, lsl #3]                        
  0x04dc4  cmp      x23, x27                                      
  0x04dc8  b.eq     #0x4e30                                       
  0x04dcc  mov      x0, x23                                       
  0x04dd0  bl       #0x17e80                                        ; objc:link
  0x04dd4  mov      x29, x29                                      
  0x04dd8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04ddc  cbz      x0, #0x4e30                                   
  0x04de0  mov      x24, x0                                       
  0x04de4  mov      x0, x23                                       
  0x04de8  bl       #0x17980                                        ; objc:grabbers
  0x04dec  mov      x29, x29                                      
  0x04df0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04df4  mov      x25, x0                                       
  0x04df8  bl       #0x16dc4                                        ; _objc_release
  0x04dfc  mov      x0, x24                                       
  0x04e00  bl       #0x16dc4                                        ; _objc_release
  0x04e04  cbz      x25, #0x4e30                                  
  0x04e08  mov      x0, x23                                       
  0x04e0c  bl       #0x17980                                        ; objc:grabbers
  0x04e10  mov      x29, x29                                      
  0x04e14  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04e18  mov      x23, x0                                       
  0x04e1c  mov      x0, x20                                       
  0x04e20  mov      x2, x23                                       
  0x04e24  bl       #0x17fc0                                        ; objc:minusHashTable:
  0x04e28  mov      x0, x23                                       
  0x04e2c  bl       #0x16dc4                                        ; _objc_release
  0x04e30  add      x26, x26, #1                                  
  0x04e34  cmp      x22, x26                                      
  0x04e38  b.ne     #0x4da4                                       
  0x04e3c  add      x2, sp, #0x10                                 
  0x04e40  add      x3, sp, #0xd0                                 
  0x04e44  mov      x0, x21                                       
  0x04e48  mov      w4, #0x10                                     
  0x04e4c  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x04e50  mov      x22, x0                                       
  0x04e54  cbnz     x0, #0x4da0                                   
  0x04e58  str      x27, [sp, #8]                                 
  0x04e5c  mov      x0, x21                                       
  0x04e60  bl       #0x16dc4                                        ; _objc_release
  0x04e64  mov      x0, x20                                       
  0x04e68  bl       #0x16dd4                                        ; _objc_retain
  0x04e6c  mov      x20, x0                                       
  0x04e70  movi     v0.2d, #0000000000000000                      
  0x04e74  stp      q0, q0, [sp, #0x90]                           
  0x04e78  stp      q0, q0, [sp, #0xb0]                           
  0x04e7c  add      x2, sp, #0x90                                 
  0x04e80  sub      x3, x29, #0xf0                                
  0x04e84  mov      w4, #0x10                                     
  0x04e88  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x04e8c  cbz      x0, #0x502c                                   
  0x04e90  mov      x21, x0                                       
  0x04e94  ldr      x8, [sp, #0xa0]                               
  0x04e98  ldr      x25, [x8]                                     
  0x04e9c  adrp     x8, #0x20000                                  
  0x04ea0  ldr      x8, [x8, #0x308]                              
  0x04ea4  adrp     x22, #0x20000                                 
  0x04ea8  add      x22, x22, #0x5f8                              
  0x04eac  ldr      x23, [x8]                                     
  0x04eb0  adrp     x26, #0x25000                                 
  0x04eb4  adrp     x8, #0x19000                                  
  0x04eb8  ldr      d8, [x8, #0xad8]                              
  0x04ebc  mov      x19, #0                                       
  0x04ec0  ldr      x8, [sp, #0xa0]                               
  0x04ec4  ldr      x8, [x8]                                      
  0x04ec8  cmp      x8, x25                                       
  0x04ecc  b.eq     #0x4ed8                                       
  0x04ed0  mov      x0, x20                                       
  0x04ed4  bl       #0x16d14                                        ; _objc_enumerationMutation
  0x04ed8  ldr      x8, [sp, #0x98]                               
  0x04edc  ldr      x27, [x8, x19, lsl #3]                        
  0x04ee0  mov      x0, x27                                       
  0x04ee4  bl       #0x17dc0                                        ; objc:layer
  0x04ee8  mov      x29, x29                                      
  0x04eec  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04ef0  mov      x28, x0                                       
  0x04ef4  mov      x2, x22                                       
  0x04ef8  bl       #0x17200                                        ; objc:animationForKey:
  0x04efc  mov      x29, x29                                      
  0x04f00  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04f04  mov      x24, x0                                       
  0x04f08  bl       #0x16dc4                                        ; _objc_release
  0x04f0c  mov      x0, x28                                       
  0x04f10  bl       #0x16dc4                                        ; _objc_release
  0x04f14  cbz      x24, #0x5004                                  
  0x04f18  ldr      x28, [x26, #0xa20]                            
  0x04f1c  cbnz     x28, #0x4f34                                  
  0x04f20  adrp     x0, #0x1a000                                  
  0x04f24  add      x0, x0, #0x145                                
  0x04f28  bl       #0x16d44                                        ; _objc_getClass
  0x04f2c  mov      x28, x0                                       
  0x04f30  str      x0, [x26, #0xa20]                             
  0x04f34  mov      x0, x28                                       
  0x04f38  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x04f3c  mov      x0, x27                                       
  0x04f40  mov      x1, x28                                       
  0x04f44  bl       #0x16d94                                        ; _objc_opt_isKindOfClass
  0x04f48  tbz      w0, #0, #0x4f6c                               
  0x04f4c  mov      x0, x27                                       
  0x04f50  bl       #0x17dc0                                        ; objc:layer
  0x04f54  mov      x29, x29                                      
  0x04f58  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04f5c  mov      x28, x0                                       
  0x04f60  mov      x2, x22                                       
  0x04f64  bl       #0x18460                                        ; objc:removeAnimationForKey:
  0x04f68  b        #0x4ffc                                         ; sub_4ffc
  0x04f6c  adrp     x8, #0x25000                                  
  0x04f70  ldr      x0, [x8, #0x670]                              
  0x04f74  adrp     x2, #0x20000                                  
  0x04f78  add      x2, x2, #0x718                                
  0x04f7c  bl       #0x17220                                        ; objc:animationWithKeyPath:
  0x04f80  mov      x29, x29                                      
  0x04f84  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04f88  mov      x28, x0                                       
  0x04f8c  adrp     x2, #0x21000                                  
  0x04f90  add      x2, x2, #0x108                                
  0x04f94  bl       #0x18a60                                        ; objc:setFromValue:
  0x04f98  mov      x0, x28                                       
  0x04f9c  fmov     d0, d8                                        
  0x04fa0  bl       #0x189c0                                        ; objc:setDuration:
  0x04fa4  adrp     x8, #0x25000                                  
  0x04fa8  ldr      x0, [x8, #0x678]                              
  0x04fac  mov      x2, x23                                       
  0x04fb0  bl       #0x17920                                        ; objc:functionWithName:
  0x04fb4  mov      x29, x29                                      
  0x04fb8  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04fbc  mov      x24, x0                                       
  0x04fc0  mov      x0, x28                                       
  0x04fc4  mov      x2, x24                                       
  0x04fc8  bl       #0x19040                                        ; objc:setTimingFunction:
  0x04fcc  mov      x0, x24                                       
  0x04fd0  bl       #0x16dc4                                        ; _objc_release
  0x04fd4  mov      x0, x27                                       
  0x04fd8  bl       #0x17dc0                                        ; objc:layer
  0x04fdc  mov      x29, x29                                      
  0x04fe0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04fe4  mov      x24, x0                                       
  0x04fe8  mov      x2, x28                                       
  0x04fec  mov      x3, x22                                       
  0x04ff0  bl       #0x17080                                        ; objc:addAnimation:forKey:
  0x04ff4  mov      x0, x24                                       
  0x04ff8  bl       #0x16dc4                                        ; _objc_release
  0x04ffc  mov      x0, x28                                       
  0x05000  bl       #0x16dc4                                        ; _objc_release
  0x05004  add      x19, x19, #1                                  
  0x05008  cmp      x21, x19                                      
  0x0500c  b.ne     #0x4ec0                                       
  0x05010  add      x2, sp, #0x90                                 
  0x05014  sub      x3, x29, #0xf0                                
  0x05018  mov      x0, x20                                       
  0x0501c  mov      w4, #0x10                                     
  0x05020  bl       #0x17680                                        ; objc:countByEnumeratingWithState:objects:count:
  0x05024  mov      x21, x0                                       
  0x05028  cbnz     x0, #0x4ebc                                   
  0x0502c  mov      x0, x20                                       
  0x05030  bl       #0x16dc4                                        ; _objc_release
  0x05034  ldr      x19, [sp, #8]                                 
  0x05038  mov      x0, x19                                       
  0x0503c  mov      x2, #0                                        
  0x05040  bl       #0x18ae0                                        ; objc:setGrabbers:
  0x05044  mov      x0, x19                                       
  0x05048  bl       #0x173a0                                        ; objc:badgeCopy
  0x0504c  mov      x29, x29                                      
  0x05050  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05054  mov      x21, x0                                       
  0x05058  bl       #0x184a0                                        ; objc:removeFromSuperview
  0x0505c  mov      x0, x21                                       
  0x05060  bl       #0x16dc4                                        ; _objc_release
  0x05064  mov      x0, x19                                       
  0x05068  mov      x2, #0                                        
  0x0506c  bl       #0x187c0                                        ; objc:setBadgeCopy:
  0x05070  adrp     x8, #0x25000                                  
  0x05074  ldr      x0, [x8, #0x5f0]                              
  0x05078  bl       #0x17480                                        ; objc:commit
  0x0507c  mov      x0, x20                                       
  0x05080  bl       #0x16dc4                                        ; _objc_release
  0x05084  ldur     x8, [x29, #-0x70]                             
  0x05088  adrp     x9, #0x20000                                  
  0x0508c  ldr      x9, [x9, #0x320]                              
  0x05090  ldr      x9, [x9]                                      
  0x05094  cmp      x9, x8                                        
  0x05098  b.ne     #0x50c0                                       
  0x0509c  add      sp, sp, #0x260                                
  0x050a0  ldp      x29, x30, [sp, #0x60]                         
  0x050a4  ldp      x20, x19, [sp, #0x50]                         
  0x050a8  ldp      x22, x21, [sp, #0x40]                         
  0x050ac  ldp      x24, x23, [sp, #0x30]                         
  0x050b0  ldp      x26, x25, [sp, #0x20]                         
  0x050b4  ldp      x28, x27, [sp, #0x10]                         
  0x050b8  ldp      d9, d8, [sp], #0x70                           
  0x050bc  retab                                                  
