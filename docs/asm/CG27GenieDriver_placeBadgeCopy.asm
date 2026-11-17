CG27GenieDriver placeBadgeCopy @0x8a00  (84 insns)
types: v16@0:8
  0x08a00  pacibsp                                                
  0x08a04  sub      sp, sp, #0x1e0                                
  0x08a08  stp      d15, d14, [sp, #0x140]                        
  0x08a0c  stp      d13, d12, [sp, #0x150]                        
  0x08a10  stp      d11, d10, [sp, #0x160]                        
  0x08a14  stp      d9, d8, [sp, #0x170]                          
  0x08a18  stp      x28, x27, [sp, #0x180]                        
  0x08a1c  stp      x26, x25, [sp, #0x190]                        
  0x08a20  stp      x24, x23, [sp, #0x1a0]                        
  0x08a24  stp      x22, x21, [sp, #0x1b0]                        
  0x08a28  stp      x20, x19, [sp, #0x1c0]                        
  0x08a2c  stp      x29, x30, [sp, #0x1d0]                        
  0x08a30  add      x29, sp, #0x1d0                               
  0x08a34  mov      x24, x0                                       
  0x08a38  bl       #0x173a0                                        ; objc:badgeCopy
  0x08a3c  mov      x29, x29                                      
  0x08a40  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08a44  mov      x19, x0                                       
  0x08a48  mov      x0, x24                                       
  0x08a4c  bl       #0x17380                                        ; objc:badge
  0x08a50  mov      x29, x29                                      
  0x08a54  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08a58  mov      x20, x0                                       
  0x08a5c  mov      x0, x24                                       
  0x08a60  bl       #0x17020                                        ; objc:accessory
  0x08a64  mov      x29, x29                                      
  0x08a68  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08a6c  mov      x21, x0                                       
  0x08a70  cbz      x19, #0x8b08                                  
  0x08a74  mov      x0, x24                                       
  0x08a78  bl       #0x182a0                                        ; objc:opening
  0x08a7c  cbnz     w0, #0x8ae4                                   
  0x08a80  cbz      x20, #0x8ae4                                  
  0x08a84  cbz      x21, #0x8ae4                                  
  0x08a88  ldrb     w8, [x24, #0x2d8]                             
  0x08a8c  cmp      w8, #1                                        
  0x08a90  b.ne     #0x8ae4                                       
  0x08a94  mov      x0, x19                                       
  0x08a98  bl       #0x193c0                                        ; objc:superview
  0x08a9c  mov      x29, x29                                      
  0x08aa0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08aa4  mov      x22, x0                                       
  0x08aa8  bl       #0x16dc4                                        ; _objc_release
  0x08aac  cbz      x22, #0x8ae4                                  
  0x08ab0  mov      x0, x21                                       
  0x08ab4  bl       #0x17dc0                                        ; objc:layer
  0x08ab8  mov      x29, x29                                      
  0x08abc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08ac0  mov      x23, x0                                       
  0x08ac4  bl       #0x18360                                        ; objc:presentationLayer
  0x08ac8  mov      x29, x29                                      
  0x08acc  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08ad0  mov      x25, x0                                       
  0x08ad4  cbz      x0, #0x8b50                                   
  0x08ad8  mov      x0, x25                                       
  0x08adc  bl       #0x16dd4                                        ; _objc_retain
  0x08ae0  b        #0x8b60                                         ; sub_8b60
  0x08ae4  mov      x0, x19                                       
  0x08ae8  bl       #0x17dc0                                        ; objc:layer
  0x08aec  mov      x29, x29                                      
  0x08af0  bl       #0x16e04                                        ; _objc_retainAutoreleasedReturnValue
  0x08af4  mov      x22, x0                                       
  0x08af8  movi     d0, #0000000000000000                         
  0x08afc  bl       #0x18dc0                                        ; objc:setOpacity:
  0x08b00  mov      x0, x22                                       
  0x08b04  bl       #0x16dc4                                        ; _objc_release
  0x08b08  mov      x0, x21                                       
  0x08b0c  bl       #0x16dc4                                        ; _objc_release
  0x08b10  mov      x0, x20                                       
  0x08b14  bl       #0x16dc4                                        ; _objc_release
  0x08b18  mov      x0, x19                                       
  0x08b1c  bl       #0x16dc4                                        ; _objc_release
  0x08b20  ldp      x29, x30, [sp, #0x1d0]                        
  0x08b24  ldp      x20, x19, [sp, #0x1c0]                        
  0x08b28  ldp      x22, x21, [sp, #0x1b0]                        
  0x08b2c  ldp      x24, x23, [sp, #0x1a0]                        
  0x08b30  ldp      x26, x25, [sp, #0x190]                        
  0x08b34  ldp      x28, x27, [sp, #0x180]                        
  0x08b38  ldp      d9, d8, [sp, #0x170]                          
  0x08b3c  ldp      d11, d10, [sp, #0x160]                        
  0x08b40  ldp      d13, d12, [sp, #0x150]                        
  0x08b44  ldp      d15, d14, [sp, #0x140]                        
  0x08b48  add      sp, sp, #0x1e0                                
  0x08b4c  retab                                                  
