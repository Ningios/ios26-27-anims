CG27GenieDriver advance: @0x8fe4  (93 insns)
types: v24@0:8d16
  0x08fe4  pacibsp                                                
  0x08fe8  sub      sp, sp, #0x100                                
  0x08fec  stp      d15, d14, [sp, #0x70]                         
  0x08ff0  stp      d13, d12, [sp, #0x80]                         
  0x08ff4  stp      d11, d10, [sp, #0x90]                         
  0x08ff8  stp      d9, d8, [sp, #0xa0]                           
  0x08ffc  stp      x26, x25, [sp, #0xb0]                         
  0x09000  stp      x24, x23, [sp, #0xc0]                         
  0x09004  stp      x22, x21, [sp, #0xd0]                         
  0x09008  stp      x20, x19, [sp, #0xe0]                         
  0x0900c  stp      x29, x30, [sp, #0xf0]                         
  0x09010  add      x29, sp, #0xf0                                
  0x09014  fmov     d8, d0                                        
  0x09018  mov      x19, x0                                       
  0x0901c  bl       #0x174a0                                        ; objc:container
  0x09020  mov      x29, x29                                      
  0x09024  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x09028  mov      x21, x0                                       
  0x0902c  bl       #0x17dc0                                        ; objc:layer
  0x09030  mov      x29, x29                                      
  0x09034  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x09038  mov      x22, x0                                       
  0x0903c  bl       #0x18360                                        ; objc:presentationLayer
  0x09040  mov      x29, x29                                      
  0x09044  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x09048  mov      x23, x0                                       
  0x0904c  cbz      x0, #0x9060                                   
  0x09050  mov      x0, x23                                       
  0x09054  bl       #0x16dd4                                        ; _objc_retain
  0x09058  mov      x20, x0                                       
  0x0905c  b        #0x908c                                         ; sub_908c
  0x09060  mov      x0, x19                                       
  0x09064  bl       #0x174a0                                        ; objc:container
  0x09068  mov      x29, x29                                      
  0x0906c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x09070  mov      x24, x0                                       
  0x09074  bl       #0x17dc0                                        ; objc:layer
  0x09078  mov      x29, x29                                      
  0x0907c  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x09080  mov      x20, x0                                       
  0x09084  mov      x0, x24                                       
  0x09088  bl       #0x16dc4                                        ; _objc_release
  0x0908c  mov      x0, x23                                       
  0x09090  bl       #0x16dc4                                        ; _objc_release
  0x09094  mov      x0, x22                                       
  0x09098  bl       #0x16dc4                                        ; _objc_release
  0x0909c  mov      x0, x21                                       
  0x090a0  bl       #0x16dc4                                        ; _objc_release
  0x090a4  mov      x0, x20                                       
  0x090a8  bl       #0x17460                                        ; objc:bounds
  0x090ac  fmov     d11, d2                                       
  0x090b0  fmov     d9, d3                                        
  0x090b4  adrp     x8, #0x25000                                  
  0x090b8  ldr      x0, [x8, #0x5e8]                              
  0x090bc  bl       #0x17ec0                                        ; objc:mainScreen
  0x090c0  mov      x29, x29                                      
  0x090c4  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x090c8  mov      x21, x0                                       
  0x090cc  bl       #0x17460                                        ; objc:bounds
  0x090d0  fmov     d12, d2                                       
  0x090d4  fmov     d10, d3                                       
  0x090d8  mov      x0, x21                                       
  0x090dc  bl       #0x16dc4                                        ; _objc_release
  0x090e0  fmov     d0, #1.00000000                               
  0x090e4  fadd     d1, d11, d0                                   
  0x090e8  fmov     d2, #-1.00000000                              
  0x090ec  fadd     d2, d11, d2                                   
  0x090f0  fadd     d3, d10, d0                                   
  0x090f4  fcmp     d11, d0                                       
  0x090f8  fccmp    d10, d1, #4, gt                               
  0x090fc  fccmp    d9, d2, #4, gt                                
  0x09100  fccmp    d9, d3, #0, gt                                
  0x09104  fabd     d1, d11, d12                                  
  0x09108  fccmp    d1, d0, #0, mi                                
  0x0910c  b.mi     #0x915c                                       
  0x09110  add      x0, x19, #8                                   
  0x09114  fmov     d0, d8                                        
  0x09118  bl       #0x5b9c                                         ; sub_5b9c
  0x0911c  mov      x0, x20                                       
  0x09120  ldp      x29, x30, [sp, #0xf0]                         
  0x09124  ldp      x20, x19, [sp, #0xe0]                         
  0x09128  ldp      x22, x21, [sp, #0xd0]                         
  0x0912c  ldp      x24, x23, [sp, #0xc0]                         
  0x09130  ldp      x26, x25, [sp, #0xb0]                         
  0x09134  ldp      d9, d8, [sp, #0xa0]                           
  0x09138  ldp      d11, d10, [sp, #0x90]                         
  0x0913c  ldp      d13, d12, [sp, #0x80]                         
  0x09140  ldp      d15, d14, [sp, #0x70]                         
  0x09144  add      sp, sp, #0x100                                
  0x09148  autibsp                                                
  0x0914c  eor      x16, x30, x30, lsl #1                         
  0x09150  tbz      x16, #0x3e, #0x9158                           
  0x09154  brk      #0xc471                                       
