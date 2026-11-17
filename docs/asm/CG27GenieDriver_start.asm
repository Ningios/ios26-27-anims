CG27GenieDriver start @0x47c0  (26 insns)
types: v16@0:8
  0x047c0  pacibsp                                                
  0x047c4  stp      d9, d8, [sp, #-0x40]!                         
  0x047c8  stp      x22, x21, [sp, #0x10]                         
  0x047cc  stp      x20, x19, [sp, #0x20]                         
  0x047d0  stp      x29, x30, [sp, #0x30]                         
  0x047d4  add      x29, sp, #0x30                                
  0x047d8  mov      x19, x0                                       
  0x047dc  bl       #0x16974                                        ; _CACurrentMediaTime
  0x047e0  fmov     d8, d0                                        
  0x047e4  mov      x0, x19                                       
  0x047e8  bl       #0x18c20                                        ; objc:setLastTime:
  0x047ec  mov      x0, x19                                       
  0x047f0  fmov     d0, d8                                        
  0x047f4  bl       #0x18fc0                                        ; objc:setStartTime:
  0x047f8  mov      x0, x19                                       
  0x047fc  bl       #0x17e80                                        ; objc:link
  0x04800  mov      x29, x29                                      
  0x04804  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x04808  mov      x20, x0                                       
  0x0480c  bl       #0x16dc4                                        ; _objc_release
  0x04810  cbz      x20, #0x4828                                  
  0x04814  ldp      x29, x30, [sp, #0x30]                         
  0x04818  ldp      x20, x19, [sp, #0x20]                         
  0x0481c  ldp      x22, x21, [sp, #0x10]                         
  0x04820  ldp      d9, d8, [sp], #0x40                           
  0x04824  retab                                                  
