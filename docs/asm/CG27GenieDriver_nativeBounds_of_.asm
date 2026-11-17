CG27GenieDriver nativeBounds:of: @0xa1a8  (148 insns)
types: v56@0:8{CGRect={CGPoint=dd}{CGSize=dd}}16@48
  0x0a1a8  pacibsp                                                
  0x0a1ac  stp      d11, d10, [sp, #-0x60]!                       
  0x0a1b0  stp      d9, d8, [sp, #0x10]                           
  0x0a1b4  stp      x24, x23, [sp, #0x20]                         
  0x0a1b8  stp      x22, x21, [sp, #0x30]                         
  0x0a1bc  stp      x20, x19, [sp, #0x40]                         
  0x0a1c0  stp      x29, x30, [sp, #0x50]                         
  0x0a1c4  add      x29, sp, #0x50                                
  0x0a1c8  mov      x21, x2                                       
  0x0a1cc  fmov     d8, d3                                        
  0x0a1d0  fmov     d9, d2                                        
  0x0a1d4  mov      x20, x0                                       
  0x0a1d8  mov      x0, x2                                        
  0x0a1dc  bl       #0x16dd4                                        ; _objc_retain
  0x0a1e0  mov      x19, x0                                       
  0x0a1e4  fmov     d0, d9                                        
  0x0a1e8  fmov     d1, d8                                        
  0x0a1ec  bl       #0x9ccc                                         ; sub_9ccc
  0x0a1f0  fmov     d8, d0                                        
  0x0a1f4  fmov     x8, d8                                        
  0x0a1f8  and      x8, x8, #0x7fffffffffffffff                   
  0x0a1fc  mov      x9, #0x7fefffffffffffff                       
  0x0a200  cmp      x8, x9                                        
  0x0a204  b.gt     #0xa3cc                                       
  0x0a208  add      x0, x20, #0x2dc                               
  0x0a20c  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x0a210  ldr      x22, [x20, #0x2e0]                            
  0x0a214  cbnz     x22, #0xa240                                  
  0x0a218  ldrb     w8, [x20, #0x318]                             
  0x0a21c  cmp      w8, #1                                        
  0x0a220  b.ne     #0xa23c                                       
  0x0a224  add      x22, x20, #0x2e0                              
  0x0a228  mov      x0, x22                                       
  0x0a22c  mov      x1, x21                                       
  0x0a230  bl       #0x16e24                                        ; _objc_storeStrong
  0x0a234  ldr      x22, [x22]                                    
  0x0a238  b        #0xa240                                         ; sub_a240
  0x0a23c  mov      x22, #0                                       
  0x0a240  ldr      x0, [x20, #0x2f0]                             
  0x0a244  bl       #0x16dd4                                        ; _objc_retain
  0x0a248  mov      x21, x0                                       
  0x0a24c  add      x0, x20, #0x2dc                               
  0x0a250  bl       #0x16e84                                        ; _os_unfair_lock_unlock
  0x0a254  cmp      x22, x19                                      
  0x0a258  b.ne     #0xa3c4                                       
  0x0a25c  mov      x0, x21                                       
  0x0a260  bl       #0x17660                                        ; objc:count
  0x0a264  cmp      x0, #0x13                                     
  0x0a268  b.ne     #0xa3c4                                       
  0x0a26c  mov      x0, x20                                       
  0x0a270  bl       #0x180e0                                        ; objc:nativeMeshToken
  0x0a274  mov      x29, x29                                      
  0x0a278  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0a27c  mov      x22, x0                                       
  0x0a280  mov      x0, x19                                       
  0x0a284  mov      x1, x22                                       
  0x0a288  bl       #0x78f0                                         ; sub_78f0
  0x0a28c  mov      x0, x22                                       
  0x0a290  bl       #0x16dc4                                        ; _objc_release
  0x0a294  mov      x0, x21                                       
  0x0a298  bl       #0x17d60                                        ; objc:lastObject
  0x0a29c  mov      x29, x29                                      
  0x0a2a0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x0a2a4  mov      x22, x0                                       
  0x0a2a8  fmov     d0, #0.50000000                               
  0x0a2ac  fcmp     d8, d0                                        
  0x0a2b0  cset     w23, gt                                       
  0x0a2b4  mov      x0, x20                                       
  0x0a2b8  bl       #0x18080                                        ; objc:nativeActive
  0x0a2bc  eor      w23, w23, w0                                  
  0x0a2c0  mov      x0, x22                                       
  0x0a2c4  bl       #0x194e0                                        ; objc:value
  0x0a2c8  fabd     d9, d0, d8                                    
  0x0a2cc  adrp     x8, #0x19000                                  
  0x0a2d0  ldr      d10, [x8, #0xb18]                             
  0x0a2d4  fcmp     d9, d10                                       
  0x0a2d8  ccmp     w23, #0, #0, le                               
  0x0a2dc  b.eq     #0xa3bc                                       
  0x0a2e0  cbz      w23, #0xa300                                  
  0x0a2e4  fmov     d0, #0.50000000                               
  0x0a2e8  fcmp     d8, d0                                        
  0x0a2ec  cset     w24, gt                                       
  0x0a2f0  mov      x0, x20                                       
  0x0a2f4  bl       #0x182a0                                        ; objc:opening
  0x0a2f8  eor      w8, w24, w0                                   
  0x0a2fc  tbz      w8, #0, #0xa33c                               
  0x0a300  adrp     x24, #0x25000                                 
  0x0a304  ldr      x0, [x24, #0x658]                             
  0x0a308  bl       #0x172e0                                        ; objc:areAnimationsEnabled
  0x0a30c  cbz      w0, #0xa334                                   
  0x0a310  ldr      x0, [x24, #0x658]                             
  0x0a314  adrp     x8, #0x24000                                  
  0x0a318  ldr      x1, [x8, #0xc20]                              
  0x0a31c  bl       #0x16db4                                        ; _objc_opt_respondsToSelector
  0x0a320  tbz      w0, #0, #0xa330                               
  0x0a324  ldr      x0, [x24, #0x658]                             
  0x0a328  bl       #0x16f60                                        ; objc:_isInAnimationBlock
  0x0a32c  b        #0xa334                                         ; sub_a334
  0x0a330  mov      w0, #0                                        
  0x0a334  cbz      w23, #0xa348                                  
  0x0a338  tbnz     w0, #0, #0xa348                               
  0x0a33c  mov      x0, x20                                       
  0x0a340  bl       #0x178a0                                        ; objc:finish
  0x0a344  b        #0xa3bc                                         ; sub_a3bc
  0x0a348  add      x0, x20, #0x2dc                               
  0x0a34c  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x0a350  ldr      w8, [x20, #0x31c]                             
  0x0a354  add      w8, w8, #1                                    
  0x0a358  str      w8, [x20, #0x31c]                             
  0x0a35c  add      x0, x20, #0x2dc                               
  0x0a360  bl       #0x16e84                                        ; _os_unfair_lock_unlock
  0x0a364  fcmp     d9, d10                                       
  0x0a368  b.le     #0xa378                                       
  0x0a36c  mov      x0, x22                                       
  0x0a370  fmov     d0, d8                                        
  0x0a374  bl       #0x190c0                                        ; objc:setValue:
  0x0a378  str      d8, [x20, #0x210]                             
  0x0a37c  cbz      w23, #0xa394                                  
  0x0a380  fmov     d0, #0.50000000                               
  0x0a384  fcmp     d8, d0                                        
  0x0a388  cset     w2, gt                                        
  0x0a38c  mov      x0, x20                                       
  0x0a390  bl       #0x18100                                        ; objc:nativePerform:
  0x0a394  add      x0, x20, #0x2dc                               
  0x0a398  bl       #0x16e74                                        ; _os_unfair_lock_lock
  0x0a39c  ldr      w8, [x20, #0x31c]                             
  0x0a3a0  sub      w8, w8, #1                                    
  0x0a3a4  str      w8, [x20, #0x31c]                             
  0x0a3a8  add      x0, x20, #0x2dc                               
  0x0a3ac  bl       #0x16e84                                        ; _os_unfair_lock_unlock
  0x0a3b0  mov      x0, x20                                       
  0x0a3b4  mov      w2, #0                                        
  0x0a3b8  bl       #0x18180                                        ; objc:nativeUpdate:
  0x0a3bc  mov      x0, x22                                       
  0x0a3c0  bl       #0x16dc4                                        ; _objc_release
  0x0a3c4  mov      x0, x21                                       
  0x0a3c8  bl       #0x16dc4                                        ; _objc_release
  0x0a3cc  mov      x0, x19                                       
  0x0a3d0  ldp      x29, x30, [sp, #0x50]                         
  0x0a3d4  ldp      x20, x19, [sp, #0x40]                         
  0x0a3d8  ldp      x22, x21, [sp, #0x30]                         
  0x0a3dc  ldp      x24, x23, [sp, #0x20]                         
  0x0a3e0  ldp      d9, d8, [sp, #0x10]                           
  0x0a3e4  ldp      d11, d10, [sp], #0x60                         
  0x0a3e8  autibsp                                                
  0x0a3ec  eor      x16, x30, x30, lsl #1                         
  0x0a3f0  tbz      x16, #0x3e, #0xa3f8                           
  0x0a3f4  brk      #0xc471                                       
