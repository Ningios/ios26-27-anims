HOOK CSCoverSheetViewController -listMinY @0xe208  (13 insns)
  0x0e208  pacibsp                                                
  0x0e20c  stp      d9, d8, [sp, #-0x20]!                         
  0x0e210  stp      x29, x30, [sp, #0x10]                         
  0x0e214  add      x29, sp, #0x10                                
  0x0e218  adrp     x8, #0x25000                                  
  0x0e21c  ldr      x8, [x8, #0x980]                              
  0x0e220  blraaz   x8                                            
  0x0e224  fmov     d8, d0                                        
  0x0e228  bl       #0x121dc                                        ; sub_121dc
  0x0e22c  fmov     d0, d8                                        
  0x0e230  ldp      x29, x30, [sp, #0x10]                         
  0x0e234  ldp      d9, d8, [sp], #0x20                           
  0x0e238  retab                                                  
