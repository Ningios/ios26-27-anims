CG27GenieDriver finish @0xb4a4  (19 insns)
types: v16@0:8
  0x0b4a4  pacibsp                                                
  0x0b4a8  stp      x22, x21, [sp, #-0x30]!                       
  0x0b4ac  stp      x20, x19, [sp, #0x10]                         
  0x0b4b0  stp      x29, x30, [sp, #0x20]                         
  0x0b4b4  add      x29, sp, #0x20                                
  0x0b4b8  mov      x19, x0                                       
  0x0b4bc  bl       #0x19260                                        ; objc:stop
  0x0b4c0  adrp     x20, #0x25000                                 
  0x0b4c4  ldr      x0, [x20, #0x890]                             
  0x0b4c8  mov      x2, x19                                       
  0x0b4cc  bl       #0x18500                                        ; objc:removeObjectIdenticalTo:
  0x0b4d0  adrp     x21, #0x25000                                 
  0x0b4d4  ldr      x8, [x21, #0x898]                             
  0x0b4d8  cmp      x8, x19                                       
  0x0b4dc  b.eq     #0xb4f0                                       
  0x0b4e0  ldp      x29, x30, [sp, #0x20]                         
  0x0b4e4  ldp      x20, x19, [sp, #0x10]                         
  0x0b4e8  ldp      x22, x21, [sp], #0x30                         
  0x0b4ec  retab                                                  
