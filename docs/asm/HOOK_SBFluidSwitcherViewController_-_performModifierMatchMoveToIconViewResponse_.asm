HOOK SBFluidSwitcherViewController -_performModifierMatchMoveToIconViewResponse: @0xef10  (17 insns)
  0x0ef10  pacibsp                                                
  0x0ef14  stp      x20, x19, [sp, #-0x20]!                       
  0x0ef18  stp      x29, x30, [sp, #0x10]                         
  0x0ef1c  add      x29, sp, #0x10                                
  0x0ef20  adrp     x19, #0x25000                                 
  0x0ef24  ldr      w8, [x19, #0xb08]                             
  0x0ef28  add      w8, w8, #1                                    
  0x0ef2c  str      w8, [x19, #0xb08]                             
  0x0ef30  adrp     x8, #0x25000                                  
  0x0ef34  ldr      x8, [x8, #0x9d8]                              
  0x0ef38  blraaz   x8                                            
  0x0ef3c  ldr      w8, [x19, #0xb08]                             
  0x0ef40  sub      w8, w8, #1                                    
  0x0ef44  str      w8, [x19, #0xb08]                             
  0x0ef48  ldp      x29, x30, [sp, #0x10]                         
  0x0ef4c  ldp      x20, x19, [sp], #0x20                         
  0x0ef50  retab                                                  
