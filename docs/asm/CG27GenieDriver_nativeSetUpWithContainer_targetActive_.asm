CG27GenieDriver nativeSetUpWithContainer:targetActive: @0x9984  (201 insns)
types: v28@0:8@16B24
  0x09984  pacibsp                                                
  0x09988  sub      sp, sp, #0xf0                                 
  0x0998c  stp      d9, d8, [sp, #0x90]                           
  0x09990  stp      x26, x25, [sp, #0xa0]                         
  0x09994  stp      x24, x23, [sp, #0xb0]                         
  0x09998  stp      x22, x21, [sp, #0xc0]                         
  0x0999c  stp      x20, x19, [sp, #0xd0]                         
  0x099a0  stp      x29, x30, [sp, #0xe0]                         
  0x099a4  add      x29, sp, #0xe0                                
  0x099a8  mov      x22, x3                                       
  0x099ac  mov      x21, x2                                       
  0x099b0  mov      x20, x0                                       
  0x099b4  mov      x0, x2                                        
  0x099b8  bl       #0x16dd4                                        ; _objc_retain
  0x099bc  mov      x19, x0                                       
  0x099c0  str      wzr, [x20, #0x2dc]                            
  0x099c4  adrp     x8, #0x25000                                  
  0x099c8  ldr      x0, [x8, #0x640]                              
  0x099cc  bl       #0x16da4                                        ; _objc_opt_new
  0x099d0  mov      x23, x0                                       
  0x099d4  mov      x0, x20                                       
  0x099d8  mov      x2, x23                                       
  0x099dc  bl       #0x18d60                                        ; objc:setNativeMeshToken:
  0x099e0  mov      x0, x23                                       
  0x099e4  bl       #0x16dc4                                        ; _objc_release
  0x099e8  mov      x0, x20                                       
  0x099ec  bl       #0x180e0                                        ; objc:nativeMeshToken
  0x099f0  mov      x29, x29                                      
  0x099f4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x099f8  mov      x23, x0                                       
  0x099fc  mov      x0, x19                                       
  0x09a00  mov      x1, x23                                       
  0x09a04  bl       #0x78f0                                         ; sub_78f0
  0x09a08  mov      x0, x23                                       
  0x09a0c  bl       #0x16dc4                                        ; _objc_release
  0x09a10  cbz      x19, #0x9a30                                  
  0x09a14  mov      x0, x19                                       
  0x09a18  bl       #0x17460                                        ; objc:bounds
  0x09a1c  fmov     d0, d2                                        
  0x09a20  fmov     d1, d3                                        
  0x09a24  bl       #0x9ccc                                         ; sub_9ccc
  0x09a28  fmov     d8, d0                                        
  0x09a2c  b        #0x9a38                                         ; sub_9a38
  0x09a30  mov      x8, #0x7ff8000000000000                       
  0x09a34  fmov     d8, x8                                        
  0x09a38  fmov     x8, d8                                        
  0x09a3c  and      x8, x8, #0x7fffffffffffffff                   
  0x09a40  mov      x9, #0x7fefffffffffffff                       
  0x09a44  eor      w10, w22, #1                                  
  0x09a48  fmov     d0, #0.50000000                               
  0x09a4c  fcmp     d8, d0                                        
  0x09a50  cset     w11, gt                                       
  0x09a54  cmp      x8, x9                                        
  0x09a58  csel     w22, w10, w11, gt                             
  0x09a5c  ucvtf    d9, w22                                       
  0x09a60  mov      x0, x20                                       
  0x09a64  mov      x2, x22                                       
  0x09a68  bl       #0x180c0                                        ; objc:nativeLoadEngine:
  0x09a6c  mov      x0, x20                                       
  0x09a70  mov      x2, x22                                       
  0x09a74  bl       #0x18d40                                        ; objc:setNativeActive:
  0x09a78  adrp     x8, #0x25000                                  
  0x09a7c  ldr      x0, [x8, #0x620]                              
  0x09a80  bl       #0x17300                                        ; objc:array
  0x09a84  mov      x29, x29                                      
  0x09a88  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x09a8c  mov      x22, x0                                       
  0x09a90  mov      w25, #0x13                                    
  0x09a94  adrp     x26, #0x25000                                 
  0x09a98  adrp     x23, #0x1a000                                 
  0x09a9c  add      x23, x23, #0x581                              
  0x09aa0  ldr      x0, [x26, #0xa68]                             
  0x09aa4  cbnz     x0, #0x9ab4                                   
  0x09aa8  mov      x0, x23                                       
  0x09aac  bl       #0x16d44                                        ; _objc_getClass
  0x09ab0  str      x0, [x26, #0xa68]                             
  0x09ab4  bl       #0x16de4                                        ; _objc_retainAutorelease
  0x09ab8  bl       #0x16da4                                        ; _objc_opt_new
  0x09abc  mov      x24, x0                                       
  0x09ac0  mov      x0, x22                                       
  0x09ac4  mov      x2, x24                                       
  0x09ac8  bl       #0x170c0                                        ; objc:addObject:
  0x09acc  mov      x0, x24                                       
  0x09ad0  bl       #0x16dc4                                        ; _objc_release
  0x09ad4  subs     w25, w25, #1                                  
  0x09ad8  b.ne     #0x9aa0                                       
  0x09adc  fmov     x8, d8                                        
  0x09ae0  and      x8, x8, #0x7fffffffffffffff                   
  0x09ae4  mov      x9, #0x7ff0000000000000                       
  0x09ae8  cmp      x8, x9                                        
  0x09aec  fcsel    d9, d8, d9, lt                                
  0x09af0  add      x8, x20, #8                                   
  0x09af4  adrp     x24, #0x25000                                 
  0x09af8  ldr      x23, [x24, #0x658]                            
  0x09afc  add      x9, sp, #0x58                                 
  0x09b00  adrp     x16, #0x20000                                 
  0x09b04  ldr      x16, [x16, #0x318]                            
  0x09b08  mov      x17, x9                                       
  0x09b0c  movk     x17, #0x6ae1, lsl #48                         
  0x09b10  pacda    x16, x17                                      
  0x09b14  str      x16, [sp, #0x58]                              
  0x09b18  adrp     x10, #0x19000                                 
  0x09b1c  ldr      d8, [x10, #0xb40]                             
  0x09b20  str      d8, [sp, #0x60]                               
  0x09b24  add      x9, x9, #0x10                                 
  0x09b28  adrp     x16, #0x9000                                  
  0x09b2c  add      x16, x16, #0xd90                              
  0x09b30  pacia    x16, x9                                       
  0x09b34  adrp     x9, #0x20000                                  
  0x09b38  add      x9, x9, #0x360                                
  0x09b3c  stp      x16, x9, [sp, #0x68]                          
  0x09b40  str      x8, [sp, #0x80]                               
  0x09b44  mov      x0, x22                                       
  0x09b48  bl       #0x16dd4                                        ; _objc_retain
  0x09b4c  mov      x22, x0                                       
  0x09b50  str      x0, [sp, #0x78]                               
  0x09b54  str      d9, [sp, #0x88]                               
  0x09b58  add      x2, sp, #0x58                                 
  0x09b5c  mov      x0, x23                                       
  0x09b60  bl       #0x18300                                        ; objc:performWithoutAnimation:
  0x09b64  str      d9, [x20, #0x210]                             
  0x09b68  str      d9, [x20, #0x200]                             
  0x09b6c  str      xzr, [x20, #0x208]                            
  0x09b70  add      x0, x20, #0x2dc                               
  0x09b74  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x09b78  mov      x0, x22                                       
  0x09b7c  bl       #0x175e0                                        ; objc:copy
  0x09b80  ldr      x8, [x20, #0x2f0]                             
  0x09b84  str      x0, [x20, #0x2f0]                             
  0x09b88  mov      x0, x8                                        
  0x09b8c  bl       #0x16dc4                                        ; _objc_release
  0x09b90  add      x0, x20, #0x2e0                               
  0x09b94  mov      x1, x21                                       
  0x09b98  bl       #0x16e24                                        ; _objc_storeStrong
  0x09b9c  mov      w8, #1                                        
  0x09ba0  strb     w8, [x20, #0x318]                             
  0x09ba4  add      x0, x20, #0x2dc                               
  0x09ba8  bl       #0x16e84                                        ; _os_unfair_lock_unlock
  0x09bac  add      x0, sp, #0x50                                 
  0x09bb0  mov      x1, x20                                       
  0x09bb4  bl       #0x16d54                                        ; _objc_initWeak
  0x09bb8  ldr      x20, [x24, #0x658]                            
  0x09bbc  add      x21, sp, #0x28                                
  0x09bc0  adrp     x16, #0x20000                                 
  0x09bc4  ldr      x16, [x16, #0x318]                            
  0x09bc8  mov      x17, x21                                      
  0x09bcc  movk     x17, #0x6ae1, lsl #48                         
  0x09bd0  pacda    x16, x17                                      
  0x09bd4  str      x16, [sp, #0x28]                              
  0x09bd8  str      d8, [sp, #0x30]                               
  0x09bdc  add      x8, x21, #0x10                                
  0x09be0  adrp     x16, #0x9000                                  
  0x09be4  add      x16, x16, #0xe68                              
  0x09be8  pacia    x16, x8                                       
  0x09bec  adrp     x24, #0x20000                                 
  0x09bf0  add      x24, x24, #0x390                              
  0x09bf4  stp      x16, x24, [sp, #0x38]                         
  0x09bf8  add      x0, x21, #0x20                                
  0x09bfc  add      x1, sp, #0x50                                 
  0x09c00  bl       #0x16ce4                                        ; _objc_copyWeak
  0x09c04  mov      x23, sp                                       
  0x09c08  adrp     x16, #0x20000                                 
  0x09c0c  ldr      x16, [x16, #0x318]                            
  0x09c10  mov      x17, x23                                      
  0x09c14  movk     x17, #0x6ae1, lsl #48                         
  0x09c18  pacda    x16, x17                                      
  0x09c1c  str      x16, [sp]                                     
  0x09c20  str      d8, [sp, #8]                                  
  0x09c24  add      x8, x23, #0x10                                
  0x09c28  adrp     x16, #0x9000                                  
  0x09c2c  add      x16, x16, #0xec0                              
  0x09c30  pacia    x16, x8                                       
  0x09c34  stp      x16, x24, [sp, #0x10]                         
  0x09c38  add      x0, x23, #0x20                                
  0x09c3c  add      x1, sp, #0x50                                 
  0x09c40  bl       #0x16ce4                                        ; _objc_copyWeak
  0x09c44  add      x3, sp, #0x28                                 
  0x09c48  mov      x4, sp                                        
  0x09c4c  mov      x0, x20                                       
  0x09c50  mov      x2, x22                                       
  0x09c54  bl       #0x16f20                                        ; objc:_createTransformerWithInputAnimatableProperties:modelValueSetter:presentationValueSetter:
  0x09c58  add      x0, x23, #0x20                                
  0x09c5c  bl       #0x16cf4                                        ; _objc_destroyWeak
  0x09c60  add      x0, x21, #0x20                                
  0x09c64  bl       #0x16cf4                                        ; _objc_destroyWeak
  0x09c68  add      x0, sp, #0x50                                 
  0x09c6c  bl       #0x16cf4                                        ; _objc_destroyWeak
  0x09c70  ldr      x0, [sp, #0x78]                               
  0x09c74  bl       #0x16dc4                                        ; _objc_release
  0x09c78  mov      x0, x22                                       
  0x09c7c  bl       #0x16dc4                                        ; _objc_release
  0x09c80  mov      x0, x19                                       
  0x09c84  bl       #0x16dc4                                        ; _objc_release
  0x09c88  ldp      x29, x30, [sp, #0xe0]                         
  0x09c8c  ldp      x20, x19, [sp, #0xd0]                         
  0x09c90  ldp      x22, x21, [sp, #0xc0]                         
  0x09c94  ldp      x24, x23, [sp, #0xb0]                         
  0x09c98  ldp      x26, x25, [sp, #0xa0]                         
  0x09c9c  ldp      d9, d8, [sp, #0x90]                           
  0x09ca0  add      sp, sp, #0xf0                                 
  0x09ca4  retab                                                  
