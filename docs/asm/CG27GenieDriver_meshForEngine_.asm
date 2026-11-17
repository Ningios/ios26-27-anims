CG27GenieDriver meshForEngine: @0x51f0  (26 insns)
types: @24@0:8r^{?=[9[2d]][9[2d]][9[2d]][9d]ddddddddB}16
  0x051f0  pacibsp                                                
  0x051f4  sub      sp, sp, #0xb0                                 
  0x051f8  stp      x29, x30, [sp, #0xa0]                         
  0x051fc  add      x29, sp, #0xa0                                
  0x05200  adrp     x8, #0x20000                                  
  0x05204  ldr      x8, [x8, #0x320]                              
  0x05208  ldr      x8, [x8]                                      
  0x0520c  stur     x8, [x29, #-8]                                
  0x05210  add      x3, sp, #8                                    
  0x05214  bl       #0x17800                                        ; objc:engine:xy:
  0x05218  add      x0, sp, #8                                    
  0x0521c  bl       #0x5260                                         ; sub_5260
  0x05220  mov      x29, x29                                      
  0x05224  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x05228  ldur     x8, [x29, #-8]                                
  0x0522c  adrp     x9, #0x20000                                  
  0x05230  ldr      x9, [x9, #0x320]                              
  0x05234  ldr      x9, [x9]                                      
  0x05238  cmp      x9, x8                                        
  0x0523c  b.ne     #0x525c                                       
  0x05240  ldp      x29, x30, [sp, #0xa0]                         
  0x05244  add      sp, sp, #0xb0                                 
  0x05248  autibsp                                                
  0x0524c  eor      x16, x30, x30, lsl #1                         
  0x05250  tbz      x16, #0x3e, #0x5258                           
  0x05254  brk      #0xc471                                       
