CG27GenieDriver engine:xy: @0x50c4  (75 insns)
types: v32@0:8r^{?=[9[2d]][9[2d]][9[2d]][9d]ddddddddB}16^[2d]24
  0x050c4  pacibsp                                                
  0x050c8  stp      x20, x19, [sp, #-0x20]!                       
  0x050cc  stp      x29, x30, [sp, #0x10]                         
  0x050d0  add      x29, sp, #0x10                                
  0x050d4  mov      x19, x3                                       
  0x050d8  ldr      d0, [x2, #0x1f8]                              
  0x050dc  ldr      d1, [x2, #0x228]                              
  0x050e0  ldr      d2, [x2, #0x230]                              
  0x050e4  fmul     d3, d1, d2                                    
  0x050e8  fmov     d4, #1.00000000                               
  0x050ec  fsub     d5, d4, d1                                    
  0x050f0  fsub     d0, d4, d0                                    
  0x050f4  fmadd    d1, d5, d0, d1                                
  0x050f8  fsub     d5, d4, d3                                    
  0x050fc  fmadd    d0, d0, d5, d3                                
  0x05100  fdiv     d0, d1, d0                                    
  0x05104  ldr      d1, [x2, #0x220]                              
  0x05108  fmov     d3, #0.50000000                               
  0x0510c  fsub     d3, d3, d1                                    
  0x05110  fmov     d5, #-1.00000000                              
  0x05114  fadd     d6, d2, d5                                    
  0x05118  fadd     d6, d6, d4                                    
  0x0511c  fmov     d7, #-0.50000000                              
  0x05120  fadd     d1, d1, d7                                    
  0x05124  fmadd    d1, d6, d1, d3                                
  0x05128  fadd     d3, d0, d5                                    
  0x0512c  fmul     d1, d1, d3                                    
  0x05130  fdiv     d2, d4, d2                                    
  0x05134  fadd     d2, d2, d5                                    
  0x05138  fdiv     d1, d1, d2                                    
  0x0513c  add      x8, x3, #8                                    
  0x05140  add      x9, x2, #8                                    
  0x05144  mov      w10, #9                                       
  0x05148  ldr      d2, [x2, #0x40]                               
  0x0514c  fadd     d3, d1, d2                                    
  0x05150  ldur     d4, [x9, #-8]                                 
  0x05154  fsub     d2, d4, d2                                    
  0x05158  fmadd    d2, d2, d0, d3                                
  0x0515c  stur     d2, [x8, #-8]                                 
  0x05160  ldr      d2, [x2, #0x48]                               
  0x05164  ldr      d3, [x9], #0x10                               
  0x05168  fsub     d3, d3, d2                                    
  0x0516c  fmadd    d2, d3, d0, d2                                
  0x05170  str      d2, [x8], #0x10                               
  0x05174  subs     x10, x10, #1                                  
  0x05178  b.ne     #0x5148                                       
  0x0517c  bl       #0x17c20                                        ; objc:intensity
  0x05180  fmov     d1, #1.00000000                               
  0x05184  fcmp     d0, d1                                        
  0x05188  b.eq     #0x51e4                                       
  0x0518c  mov      x8, #0                                        
  0x05190  add      x9, x19, #8                                   
  0x05194  mov      w10, #0xab                                    
  0x05198  and      w11, w8, #0xff                                
  0x0519c  mul      w11, w11, w10                                 
  0x051a0  lsr      w12, w11, #9                                  
  0x051a4  lsl      w13, w12, #1                                  
  0x051a8  add      w11, w13, w11, lsr #9                         
  0x051ac  sub      w11, w8, w11                                  
  0x051b0  and      w11, w11, #0xff                               
  0x051b4  ucvtf    d1, w11, #1                                   
  0x051b8  ldp      d2, d3, [x9, #-8]                             
  0x051bc  fsub     d2, d2, d1                                    
  0x051c0  fmadd    d1, d0, d2, d1                                
  0x051c4  ucvtf    d2, w12, #1                                   
  0x051c8  fsub     d3, d3, d2                                    
  0x051cc  fmadd    d2, d0, d3, d2                                
  0x051d0  stp      d1, d2, [x9, #-8]                             
  0x051d4  add      x8, x8, #1                                    
  0x051d8  add      x9, x9, #0x10                                 
  0x051dc  cmp      x8, #9                                        
  0x051e0  b.ne     #0x5198                                       
  0x051e4  ldp      x29, x30, [sp, #0x10]                         
  0x051e8  ldp      x20, x19, [sp], #0x20                         
  0x051ec  retab                                                  
