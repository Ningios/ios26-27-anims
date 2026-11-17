CG27GenieDriver deformAccessoryPoint: @0x831c  (37 insns)
types: {CGPoint=dd}32@0:8{CGPoint=dd}16
  0x0831c  fadd     d0, d0, d0                                    
  0x08320  fadd     d1, d1, d1                                    
  0x08324  frintm   d2, d0                                        
  0x08328  movi     d3, #0000000000000000                         
  0x0832c  fmaxnm   d2, d2, d3                                    
  0x08330  fmov     d4, #1.00000000                               
  0x08334  fminnm   d2, d2, d4                                    
  0x08338  fcvtzs   w8, d2                                        
  0x0833c  frintm   d2, d1                                        
  0x08340  fmaxnm   d2, d2, d3                                    
  0x08344  fminnm   d2, d2, d4                                    
  0x08348  fcvtzs   w9, d2                                        
  0x0834c  scvtf    d2, w8                                        
  0x08350  fsub     d0, d0, d2                                    
  0x08354  scvtf    d2, w9                                        
  0x08358  fsub     d1, d1, d2                                    
  0x0835c  add      x10, x0, #0x248                               
  0x08360  add      w9, w9, w9, lsl #1                            
  0x08364  add      w8, w9, w8                                    
  0x08368  add      x9, x10, w8, sxtw #4                          
  0x0836c  add      w11, w8, #3                                   
  0x08370  add      w8, w8, #4                                    
  0x08374  fsub     d2, d4, d0                                    
  0x08378  fsub     d3, d4, d1                                    
  0x0837c  fmul     d4, d2, d3                                    
  0x08380  fmul     d3, d0, d3                                    
  0x08384  fmul     d2, d1, d2                                    
  0x08388  fmul     d1, d0, d1                                    
  0x0838c  ldp      q5, q0, [x9]                                  
  0x08390  fmul     v0.2d, v0.2d, v3.d[0]                         
  0x08394  fmla     v0.2d, v5.2d, v4.d[0]                         
  0x08398  ldr      q3, [x10, w11, sxtw #4]                       
  0x0839c  fmla     v0.2d, v3.2d, v2.d[0]                         
  0x083a0  ldr      q2, [x10, w8, sxtw #4]                        
  0x083a4  fmla     v0.2d, v2.2d, v1.d[0]                         
  0x083a8  mov      d1, v0.d[1]                                   
  0x083ac  ret                                                    
