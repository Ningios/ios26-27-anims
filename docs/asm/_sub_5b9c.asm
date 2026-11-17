  0x05b9c  pacibsp                                              
  0x05ba0  sub      sp, sp, #0xd0                               
  0x05ba4  stp      d15, d14, [sp, #0x30]                       
  0x05ba8  stp      d13, d12, [sp, #0x40]                       
  0x05bac  stp      d11, d10, [sp, #0x50]                       
  0x05bb0  stp      d9, d8, [sp, #0x60]                         
  0x05bb4  stp      x28, x27, [sp, #0x70]                       
  0x05bb8  stp      x26, x25, [sp, #0x80]                       
  0x05bbc  stp      x24, x23, [sp, #0x90]                       
  0x05bc0  stp      x22, x21, [sp, #0xa0]                       
  0x05bc4  stp      x20, x19, [sp, #0xb0]                       
  0x05bc8  stp      x29, x30, [sp, #0xc0]                       
  0x05bcc  add      x29, sp, #0xc0                              
  0x05bd0  mov      x20, #0                                     
  0x05bd4  str      d0, [sp, #0x18]                             
  0x05bd8  fmov     x8, d0                                      
  0x05bdc  ands     x9, x8, #0x7fffffffffffffff                 
  0x05be0  sub      x10, x9, #1                                 
  0x05be4  mov      x21, #0xfffffffffffff                       
  0x05be8  cmp      x10, x21                                    
  0x05bec  cset     w10, lo                                     
  0x05bf0  mov      x22, #-0x10000000000000                     
  0x05bf4  add      x9, x9, x22                                 
  0x05bf8  lsr      x9, x9, #0x35                               
  0x05bfc  cmp      x9, #0x3ff                                  
  0x05c00  cset     w9, lo                                      
  0x05c04  cmp      x8, #0                                      
  0x05c08  csel     w9, wzr, w9, ge                             
  0x05c0c  csel     w10, wzr, w10, ge                           
  0x05c10  ands     x8, x8, #0x7fffffffffffffff                 
  0x05c14  add      x11, x0, #0x90                              
  0x05c18  str      x11, [sp, #8]                               
  0x05c1c  add      x11, x0, #0x120                             
  0x05c20  str      x11, [sp]                                   
  0x05c24  csinc    w10, w10, wzr, ne                           
  0x05c28  mov      x25, #0x7ff0000000000000                    
  0x05c2c  cmp      x8, x25                                     
  0x05c30  add      x26, x0, #0x1b0                             
  0x05c34  csinc    w8, w10, wzr, ne                            
  0x05c38  csinc    w8, w8, wzr, le                             
  0x05c3c  orr      w27, w8, w9                                 
  0x05c40  adrp     x8, #0x19000                                
  0x05c44  ldr      d12, [x8, #0xb10]                           
  0x05c48  fmov     d2, #1.00000000                             
  0x05c4c  adrp     x8, #0x19000                                
  0x05c50  ldr      d11, [x8, #0xb18]                           
  0x05c54  str      x0, [sp, #0x20]                             
  0x05c58  str      d12, [sp, #0x10]                            
  0x05c5c  mov      x23, #0                                     
  0x05c60  add      x28, x0, x20, lsl #4                        
  0x05c64  mov      w8, #1                                      
  0x05c68  ldp      x9, x10, [sp]                               
  0x05c6c  add      x24, x10, x20, lsl #4                       
  0x05c70  add      x9, x9, x20, lsl #4                         
  0x05c74  str      x9, [sp, #0x28]                             
  0x05c78  mov      x19, x8                                     
  0x05c7c  tbnz     w27, #0, #0x5e5c                            
  0x05c80  ldr      d0, [x26, x20, lsl #3]                      
  0x05c84  fmov     x8, d0                                      
  0x05c88  ands     x9, x8, #0x7fffffffffffffff                 
  0x05c8c  sub      x10, x9, #1                                 
  0x05c90  cmp      x10, x21                                    
  0x05c94  cset     w10, lo                                     
  0x05c98  add      x9, x9, x22                                 
  0x05c9c  lsr      x9, x9, #0x35                               
  0x05ca0  cmp      x9, #0x3ff                                  
  0x05ca4  cset     w9, lo                                      
  0x05ca8  cmp      x8, #0                                      
  0x05cac  csel     w9, wzr, w9, ge                             
  0x05cb0  csel     w10, wzr, w10, ge                           
  0x05cb4  ands     x8, x8, #0x7fffffffffffffff                 
  0x05cb8  csinc    w10, w10, wzr, ne                           
  0x05cbc  cmp      x8, x25                                     
  0x05cc0  csinc    w8, w10, wzr, ne                            
  0x05cc4  csinc    w8, w8, wzr, le                             
  0x05cc8  orr      w8, w8, w9                                  
  0x05ccc  tbnz     w8, #0, #0x5e5c                             
  0x05cd0  ldr      x8, [sp, #0x28]                             
  0x05cd4  ldr      d14, [x8, x23, lsl #3]                      
  0x05cd8  ldr      d1, [x0, #0x218]                            
  0x05cdc  fmov     x8, d1                                      
  0x05ce0  ands     x9, x8, #0x7fffffffffffffff                 
  0x05ce4  sub      x10, x9, #1                                 
  0x05ce8  cmp      x10, x21                                    
  0x05cec  cset     w10, lo                                     
  0x05cf0  add      x9, x9, x22                                 
  0x05cf4  lsr      x9, x9, #0x35                               
  0x05cf8  cmp      x9, #0x3ff                                  
  0x05cfc  cset     w9, lo                                      
  0x05d00  cmp      x8, #0                                      
  0x05d04  csel     w9, wzr, w9, ge                             
  0x05d08  csel     w10, wzr, w10, ge                           
  0x05d0c  ands     x8, x8, #0x7fffffffffffffff                 
  0x05d10  fdiv     d9, d12, d0                                 
  0x05d14  ldr      d0, [x28, x23, lsl #3]                      
  0x05d18  fsub     d15, d0, d14                                
  0x05d1c  ldr      d13, [x24, x23, lsl #3]                     
  0x05d20  csinc    w10, w10, wzr, ne                           
  0x05d24  cmp      x8, x25                                     
  0x05d28  csinc    w8, w10, wzr, ne                            
  0x05d2c  csinc    w8, w8, wzr, le                             
  0x05d30  orr      w8, w8, w9                                  
  0x05d34  cmp      w8, #0                                      
  0x05d38  fcsel    d0, d2, d1, ne                              
  0x05d3c  fmov     d1, #-1.00000000                            
  0x05d40  fadd     d1, d0, d1                                  
  0x05d44  fabs     d1, d1                                      
  0x05d48  fcmp     d1, d11                                     
  0x05d4c  b.pl     #0x5d7c                                     
  0x05d50  fmadd    d10, d9, d15, d13                           
  0x05d54  ldr      d8, [sp, #0x18]                             
  0x05d58  fnmul    d0, d9, d8                                  
  0x05d5c  bl       #0x16c64                                      ; _exp
  0x05d60  fmadd    d1, d10, d8, d15                            
  0x05d64  fmadd    d1, d1, d0, d14                             
  0x05d68  str      d1, [x28, x23, lsl #3]                      
  0x05d6c  fnmul    d1, d9, d10                                 
  0x05d70  fmadd    d1, d1, d8, d13                             
  0x05d74  fmul     d0, d0, d1                                  
  0x05d78  b        #0x5e50                                       ; sub_5e50
  0x05d7c  fmov     d12, d11                                    
  0x05d80  fcmp     d0, d2                                      
  0x05d84  b.pl     #0x5de8                                     
  0x05d88  fmsub    d1, d0, d0, d2                              
  0x05d8c  fsqrt    d1, d1                                      
  0x05d90  fmul     d10, d9, d1                                 
  0x05d94  fmul     d11, d9, d0                                 
  0x05d98  ldr      d8, [sp, #0x18]                             
  0x05d9c  fnmul    d0, d11, d8                                 
  0x05da0  bl       #0x16c64                                      ; _exp
  0x05da4  fmov     d9, d0                                      
  0x05da8  fmadd    d0, d11, d15, d13                           
  0x05dac  fdiv     d13, d0, d10                                
  0x05db0  fmul     d0, d10, d8                                 
  0x05db4  bl       #0x16c04                                      ; ___sincos_stret
  0x05db8  fmul     d2, d0, d13                                 
  0x05dbc  fmadd    d2, d15, d1, d2                             
  0x05dc0  fmadd    d2, d9, d2, d14                             
  0x05dc4  str      d2, [x28, x23, lsl #3]                      
  0x05dc8  fnmul    d2, d11, d15                                
  0x05dcc  fmadd    d2, d13, d10, d2                            
  0x05dd0  fmul     d3, d11, d13                                
  0x05dd4  fmadd    d3, d15, d10, d3                            
  0x05dd8  fnmul    d0, d3, d0                                  
  0x05ddc  fmadd    d0, d2, d1, d0                              
  0x05de0  fmul     d0, d9, d0                                  
  0x05de4  b        #0x5e48                                       ; sub_5e48
  0x05de8  fmov     d1, #-1.00000000                            
  0x05dec  fmadd    d1, d0, d0, d1                              
  0x05df0  fsqrt    d1, d1                                      
  0x05df4  fsub     d2, d0, d1                                  
  0x05df8  fnmul    d10, d9, d2                                 
  0x05dfc  fadd     d0, d0, d1                                  
  0x05e00  fnmul    d11, d9, d0                                 
  0x05e04  fmsub    d0, d10, d15, d13                           
  0x05e08  fsub     d1, d11, d10                                
  0x05e0c  fdiv     d13, d0, d1                                 
  0x05e10  fsub     d15, d15, d13                               
  0x05e14  ldr      d8, [sp, #0x18]                             
  0x05e18  fmul     d0, d10, d8                                 
  0x05e1c  bl       #0x16c64                                      ; _exp
  0x05e20  fmov     d9, d0                                      
  0x05e24  fmul     d0, d11, d8                                 
  0x05e28  bl       #0x16c64                                      ; _exp
  0x05e2c  fmadd    d1, d15, d9, d14                            
  0x05e30  fmadd    d1, d13, d0, d1                             
  0x05e34  str      d1, [x28, x23, lsl #3]                      
  0x05e38  fmul     d1, d10, d15                                
  0x05e3c  fmul     d2, d11, d13                                
  0x05e40  fmul     d0, d0, d2                                  
  0x05e44  fmadd    d0, d1, d9, d0                              
  0x05e48  fmov     d11, d12                                    
  0x05e4c  ldr      d12, [sp, #0x10]                            
  0x05e50  str      d0, [x24, x23, lsl #3]                      
  0x05e54  ldr      x0, [sp, #0x20]                             
  0x05e58  fmov     d2, #1.00000000                             
  0x05e5c  mov      w8, #0                                      
  0x05e60  mov      w23, #1                                     
  0x05e64  tbnz     w19, #0, #0x5c78                            
  0x05e68  add      x20, x20, #1                                
  0x05e6c  cmp      x20, #9                                     
  0x05e70  b.ne     #0x5c5c                                     
  0x05e74  tbnz     w27, #0, #0x605c                            
  0x05e78  ldr      d0, [x0, #0x210]                            
  0x05e7c  fmov     x8, d0                                      
  0x05e80  ands     x11, x8, #0x7fffffffffffffff                
  0x05e84  sub      x10, x11, #1                                
  0x05e88  mov      x9, #0xfffffffffffff                        
  0x05e8c  cmp      x10, x9                                     
  0x05e90  cset     w12, lo                                     
  0x05e94  mov      x10, #-0x10000000000000                     
  0x05e98  add      x11, x11, x10                               
  0x05e9c  lsr      x11, x11, #0x35                             
  0x05ea0  cmp      x11, #0x3ff                                 
  0x05ea4  cset     w11, lo                                     
  0x05ea8  cmp      x8, #0                                      
  0x05eac  csel     w11, wzr, w11, ge                           
  0x05eb0  csel     w12, wzr, w12, ge                           
  0x05eb4  ands     x13, x8, #0x7fffffffffffffff                
  0x05eb8  csinc    w12, w12, wzr, ne                           
  0x05ebc  mov      x8, #0x7ff0000000000000                     
  0x05ec0  cmp      x13, x8                                     
  0x05ec4  csinc    w12, w12, wzr, ne                           
  0x05ec8  csinc    w12, w12, wzr, le                           
  0x05ecc  orr      w11, w12, w11                               
  0x05ed0  tbnz     w11, #0, #0x605c                            
  0x05ed4  fmov     d1, d12                                     
  0x05ed8  ldr      d12, [x0, #0x208]                           
  0x05edc  ldr      d2, [x0, #0x218]                            
  0x05ee0  fmov     x11, d2                                     
  0x05ee4  ands     x12, x11, #0x7fffffffffffffff               
  0x05ee8  sub      x13, x12, #1                                
  0x05eec  cmp      x13, x9                                     
  0x05ef0  cset     w9, lo                                      
  0x05ef4  add      x10, x12, x10                               
  0x05ef8  lsr      x10, x10, #0x35                             
  0x05efc  cmp      x10, #0x3ff                                 
  0x05f00  cset     w10, lo                                     
  0x05f04  cmp      x11, #0                                     
  0x05f08  csel     w10, wzr, w10, ge                           
  0x05f0c  csel     w9, wzr, w9, ge                             
  0x05f10  ands     x11, x11, #0x7fffffffffffffff               
  0x05f14  fdiv     d9, d1, d0                                  
  0x05f18  ldp      d0, d13, [x0, #0x1f8]                       
  0x05f1c  fmov     d3, d11                                     
  0x05f20  fsub     d11, d0, d12                                
  0x05f24  csinc    w9, w9, wzr, ne                             
  0x05f28  cmp      x11, x8                                     
  0x05f2c  csinc    w8, w9, wzr, ne                             
  0x05f30  csinc    w8, w8, wzr, le                             
  0x05f34  orr      w8, w8, w10                                 
  0x05f38  cmp      w8, #0                                      
  0x05f3c  fmov     d1, #1.00000000                             
  0x05f40  fcsel    d0, d1, d2, ne                              
  0x05f44  fmov     d2, #-1.00000000                            
  0x05f48  fadd     d2, d0, d2                                  
  0x05f4c  fabs     d2, d2                                      
  0x05f50  fcmp     d2, d3                                      
  0x05f54  b.pl     #0x5f88                                     
  0x05f58  fmadd    d10, d9, d11, d13                           
  0x05f5c  ldr      d8, [sp, #0x18]                             
  0x05f60  fnmul    d0, d9, d8                                  
  0x05f64  bl       #0x16c64                                      ; _exp
  0x05f68  ldr      x8, [sp, #0x20]                             
  0x05f6c  fmadd    d1, d10, d8, d11                            
  0x05f70  fmadd    d1, d1, d0, d12                             
  0x05f74  str      d1, [x8, #0x1f8]                            
  0x05f78  fnmul    d1, d9, d10                                 
  0x05f7c  fmadd    d1, d1, d8, d13                             
  0x05f80  fmul     d0, d0, d1                                  
  0x05f84  b        #0x6058                                       ; sub_6058
  0x05f88  fcmp     d0, d1                                      
  0x05f8c  b.pl     #0x5ff4                                     
  0x05f90  fmsub    d1, d0, d0, d1                              
  0x05f94  fsqrt    d1, d1                                      
  0x05f98  fmul     d10, d9, d1                                 
  0x05f9c  fmul     d14, d9, d0                                 
  0x05fa0  ldr      d8, [sp, #0x18]                             
  0x05fa4  fnmul    d0, d14, d8                                 
  0x05fa8  bl       #0x16c64                                      ; _exp
  0x05fac  fmov     d9, d0                                      
  0x05fb0  fmadd    d0, d14, d11, d13                           
  0x05fb4  fdiv     d13, d0, d10                                
  0x05fb8  fmul     d0, d10, d8                                 
  0x05fbc  bl       #0x16c04                                      ; ___sincos_stret
  0x05fc0  fmul     d2, d0, d13                                 
  0x05fc4  fmadd    d2, d11, d1, d2                             
  0x05fc8  fmadd    d2, d9, d2, d12                             
  0x05fcc  ldr      x8, [sp, #0x20]                             
  0x05fd0  str      d2, [x8, #0x1f8]                            
  0x05fd4  fnmul    d2, d14, d11                                
  0x05fd8  fmadd    d2, d13, d10, d2                            
  0x05fdc  fmul     d3, d14, d13                                
  0x05fe0  fmadd    d3, d11, d10, d3                            
  0x05fe4  fnmul    d0, d3, d0                                  
  0x05fe8  fmadd    d0, d2, d1, d0                              
  0x05fec  fmul     d0, d9, d0                                  
  0x05ff0  b        #0x6058                                       ; sub_6058
  0x05ff4  fmov     d1, #-1.00000000                            
  0x05ff8  fmadd    d1, d0, d0, d1                              
  0x05ffc  fsqrt    d1, d1                                      
  0x06000  fsub     d2, d0, d1                                  
  0x06004  fnmul    d10, d9, d2                                 
  0x06008  fadd     d0, d0, d1                                  
  0x0600c  fnmul    d14, d9, d0                                 
  0x06010  fmsub    d0, d10, d11, d13                           
  0x06014  fsub     d1, d14, d10                                
  0x06018  fdiv     d13, d0, d1                                 
  0x0601c  fsub     d11, d11, d13                               
  0x06020  ldr      d8, [sp, #0x18]                             
  0x06024  fmul     d0, d10, d8                                 
  0x06028  bl       #0x16c64                                      ; _exp
  0x0602c  fmov     d9, d0                                      
  0x06030  fmul     d0, d14, d8                                 
  0x06034  bl       #0x16c64                                      ; _exp
  0x06038  fmadd    d1, d11, d9, d12                            
  0x0603c  fmadd    d1, d13, d0, d1                             
  0x06040  ldr      x8, [sp, #0x20]                             
  0x06044  str      d1, [x8, #0x1f8]                            
  0x06048  fmul     d1, d10, d11                                
  0x0604c  fmul     d2, d14, d13                                
  0x06050  fmul     d0, d0, d2                                  
  0x06054  fmadd    d0, d1, d9, d0                              
  0x06058  str      d0, [x8, #0x200]                            
  0x0605c  ldp      x29, x30, [sp, #0xc0]                       
  0x06060  ldp      x20, x19, [sp, #0xb0]                       
  0x06064  ldp      x22, x21, [sp, #0xa0]                       
  0x06068  ldp      x24, x23, [sp, #0x90]                       
  0x0606c  ldp      x26, x25, [sp, #0x80]                       
  0x06070  ldp      x28, x27, [sp, #0x70]                       
  0x06074  ldp      d9, d8, [sp, #0x60]                         
  0x06078  ldp      d11, d10, [sp, #0x50]                       
  0x0607c  ldp      d13, d12, [sp, #0x40]                       
  0x06080  ldp      d15, d14, [sp, #0x30]                       
  0x06084  add      sp, sp, #0xd0                               
  0x06088  retab                                                
