    // ldr za
    .global _load_data_sme_ldr_za
    .align 4
_load_data_sme_ldr_za:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

ldr_za_outer_loop:
    sub x0, x0, #1

    mov x4, x1
    mov x5, x2

    add x8, x2, #0
    add x9, x2, #16*4
    add x10, x2, #32*4
    add x11, x2, #48*4

ldr_za_inner_loop:
    sub x4, x4, #512
    mov x6, #8

    mov w12, #0
    mov w13, #1
    mov w14, #2
    mov w15, #3

ldr_za_full_tile_loop:
    
    sub x6, x6, #1

    ldr za[w12, #0], [x8]
    ldr za[w13, #0], [x9]
    ldr za[w14, #0], [x10]
    ldr za[w15, #0], [x11]

    add w12, w12, #4
    add w13, w13, #4
    add w14, w14, #4
    add w15, w15, #4 

    add x8, x8, #64*4
    add x9, x9, #64*4
    add x10, x10, #64*4
    add x11, x11, #64*4

    cbnz x6, ldr_za_full_tile_loop

    cbnz x4, ldr_za_inner_loop

    cbnz x0, ldr_za_outer_loop
    
    smstop


    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret



    .global _store_data_sme_str_za
    .align 4
_store_data_sme_str_za:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

str_za_outer_loop:
    sub x0, x0, #1

    mov x4, x1

    add x8, x2, #0
    add x9, x2, #16*4
    add x10, x2, #32*4
    add x11, x2, #48*4

str_za_inner_loop:
    sub x4, x4, #512
    mov x6, #8

    mov w12, #0
    mov w13, #1
    mov w14, #2
    mov w15, #3

str_za_full_tile_loop:
    
    sub x6, x6, #1

    str za[w12, #0], [x8]
    str za[w13, #0], [x9]
    str za[w14, #0], [x10]
    str za[w15, #0], [x11]

    add w12, w12, #4
    add w13, w13, #4
    add w14, w14, #4
    add w15, w15, #4 

    add x8, x8, #64*4
    add x9, x9, #64*4
    add x10, x10, #64*4
    add x11, x11, #64*4

    cbnz x6, str_za_full_tile_loop

    cbnz x4, str_za_inner_loop

    cbnz x0, str_za_outer_loop
    
    smstop


    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret

    .global _load_data_sme_ldr
    .align 4
_load_data_sme_ldr:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue p0.b


load_data_sme_ldr_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_ldr_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ldr z0, [x5]
    add x5, x5, #64
    ldr z1, [x5]
    add x5, x5, #64
    ldr z2, [x5]
    add x5, x5, #64
    ldr z3, [x5]
    add x5, x5, #64

    ldr z4, [x5]
    add x5, x5, #64
    ldr z5, [x5]
    add x5, x5, #64
    ldr z6, [x5]
    add x5, x5, #64
    ldr z7, [x5]
    add x5, x5, #64

    ldr z8, [x5]
    add x5, x5, #64
    ldr z9, [x5]
    add x5, x5, #64
    ldr z10, [x5]
    add x5, x5, #64
    ldr z11, [x5]
    add x5, x5, #64

    ldr z12, [x5]
    add x5, x5, #64
    ldr z13, [x5]
    add x5, x5, #64
    ldr z14, [x5]
    add x5, x5, #64
    ldr z15, [x5]
    add x5, x5, #64

    ldr z16, [x5]
    add x5, x5, #64
    ldr z17, [x5]
    add x5, x5, #64
    ldr z18, [x5]
    add x5, x5, #64
    ldr z19, [x5]
    add x5, x5, #64

    ldr z20, [x5]
    add x5, x5, #64
    ldr z21, [x5]
    add x5, x5, #64
    ldr z22, [x5]
    add x5, x5, #64
    ldr z23, [x5]
    add x5, x5, #64

    ldr z24, [x5]
    add x5, x5, #64
    ldr z25, [x5]
    add x5, x5, #64
    ldr z26, [x5]
    add x5, x5, #64
    ldr z27, [x5]
    add x5, x5, #64

    ldr z28, [x5]
    add x5, x5, #64
    ldr z29, [x5]
    add x5, x5, #64
    ldr z30, [x5]
    add x5, x5, #64
    ldr z31, [x5]
    add x5, x5, #64

    mov za0h.s[w12, 0:3], {z0.s - z3.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z4.s - z7.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z8.s - z11.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z12.s - z15.s}

    mov za1h.s[w13, 0:3], { z16.s - z19.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z20.s - z23.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z24.s - z27.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z28.s - z31.s}
    add w13, w13, #4

    cbnz x4, load_data_sme_ldr_inner_loop

    cbnz x0, load_data_sme_ldr_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret
    
    // ldr za0h.s za1h.s za2h.s za3h.s
    

    // ld1w 1r
    .global _load_data_sme_1_z
    .align 4
_load_data_sme_1_z:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue p0.b


load_data_sme_1_z_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_1_z_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1w {z0.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z1.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z2.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z3.s }, p0/z, [x5]
    add x5, x5, #64
    
    ld1w {z4.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z5.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z6.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z7.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z8.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z9.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z10.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z11.s }, p0/z, [x5]
    add x5, x5, #64
    
    ld1w {z12.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z13.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z14.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z15.s }, p0/z, [x5]
    add x5, x5, #64
    
    ld1w {z16.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z17.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z18.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z19.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z20.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z21.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z22.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z23.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z24.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z25.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z26.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z27.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z28.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z29.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z30.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z31.s }, p0/z, [x5]
    add x5, x5, #64

    mov za0h.s[w12, 0:3], {z0.s - z3.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z4.s - z7.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z8.s - z11.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z12.s - z15.s}

    mov za1h.s[w13, 0:3], { z16.s - z19.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z20.s - z23.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z24.s - z27.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z28.s - z31.s}
    add w13, w13, #4

    cbnz x4, load_data_sme_1_z_inner_loop

    cbnz x0, load_data_sme_1_z_outer_loop

    smstop

    // restore
    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret

// ld1w 1r lower
    .global _load_data_sme_1_z_lower
    .align 4
_load_data_sme_1_z_lower:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue p0.b


load_data_sme_1_z_lower_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_1_z_lower_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1w {z0.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z1.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z2.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z3.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z4.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z5.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z6.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z7.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z8.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z9.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z10.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z11.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z12.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z13.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z14.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z15.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z16.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z17.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z18.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z19.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z20.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z21.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z22.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z23.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z24.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z25.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z26.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z27.s }, p0/z, [x5]
    add x5, x5, #64

    ld1w {z28.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z29.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z30.s }, p0/z, [x5]
    add x5, x5, #64
    ld1w {z31.s }, p0/z, [x5]
    add x5, x5, #64

    mov za0h.s[w12, 0:1], {z0.s, z1.s}
    add w12, w12, #2
    mov za0h.s[w12, 0:1], {z2.s ,z3.s}
    add w12, w12, #2
    mov za0h.s[w12, 0:1], {z4.s , z5.s}
    add w12, w12, #2
    mov za0h.s[w12, 0:1], {z6.s , z7.s}
    add w12, w12, #2
    mov za0h.s[w12, 0:1], {z8.s , z9.s}
    add w12, w12, #2
    mov za0h.s[w12, 0:1], {z10.s , z11.s}
    add w12, w12, #2
    mov za0h.s[w12, 0:1], {z12.s , z13.s}
    add w12, w12, #2
    mov za0h.s[w12, 0:1], {z14.s , z15.s}
    add w12, w12, #2

    mov za0h.s[w13, 0:1], {z16.s, z17.s}
    add w13, w13, #2
    mov za0h.s[w13, 0:1], {z18.s ,z19.s}
    add w13, w13, #2
    mov za0h.s[w13, 0:1], {z20.s , z21.s}
    add w13, w13, #2
    mov za0h.s[w13, 0:1], {z22.s , z23.s}
    add w13, w13, #2
    mov za0h.s[w13, 0:1], {z24.s , z25.s}
    add w13, w13, #2
    mov za0h.s[w13, 0:1], {z26.s , z27.s}
    add w13, w13, #2
    mov za0h.s[w13, 0:1], {z28.s , z29.s}
    add w13, w13, #2
    mov za0h.s[w13, 0:1], {z30.s , z31.s}
    add w13, w13, #2


    cbnz x4, load_data_sme_1_z_lower_inner_loop

    cbnz x0, load_data_sme_1_z_lower_outer_loop

    smstop

    // restore
    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret


    // ld1h 1r
    .global _load_data_sme_1_h_z
    .align 4
_load_data_sme_1_h_z:
    stp d8, d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue p0.b

//num_reps, num_vals, l_a
//32 z.s -> 64 x 32 = 2048 bytes = 2 KiB
load_data_sme_1_h_z_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_1_h_z_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1h {z0.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z1.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z2.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z3.h }, p0/z, [x5]
    add x5, x5, #64
    
    ld1h {z4.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z5.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z6.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z7.h }, p0/z, [x5]
    add x5, x5, #64

    ld1h {z8.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z9.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z10.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z11.h }, p0/z, [x5]
    add x5, x5, #64
    
    ld1h {z12.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z13.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z14.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z15.h }, p0/z, [x5]
    add x5, x5, #64
    
    ld1h {z16.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z17.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z18.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z19.h }, p0/z, [x5]
    add x5, x5, #64

    ld1h {z20.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z21.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z22.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z23.h }, p0/z, [x5]
    add x5, x5, #64

    ld1h {z24.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z25.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z26.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z27.h }, p0/z, [x5]
    add x5, x5, #64

    ld1h {z28.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z29.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z30.h }, p0/z, [x5]
    add x5, x5, #64
    ld1h {z31.h }, p0/z, [x5]
    add x5, x5, #64

    //mov za0h.s[w12, 0:3], {z0.s - z3.s}
    //add w12, w12, #4
    //mov za0h.s[w12, 0:3], {z4.s - z7.s}
    //add w12, w12, #4
    //mov za0h.s[w12, 0:3], {z8.s - z11.s}
    //add w12, w12, #4
    //mov za0h.s[w12, 0:3], {z12.s - z15.s}
    //mov za1h.s[w13, 0:3], { z16.s - z19.s}
    //add w13, w13, #4
    //mov za1h.s[w13, 0:3], { z20.s - z23.s}
    //add w13, w13, #4
    //mov za1h.s[w13, 0:3], { z24.s - z27.s}
    //add w13, w13, #4
    //mov za1h.s[w13, 0:3], { z28.s - z31.s}
    //add w13, w13, #4

    mov za0h.h[w12, 0:3], {z0.h - z3.h}
    mov za0h.h[w12, 4:7], {z4.h - z7.h}
    add w12, w12, #8
    mov za0h.h[w12, 0:3], {z8.h - z11.h}
    mov za0h.h[w12, 4:7], {z12.h - z15.h}
    add w12, w12, #8

    mov za1h.h[w13, 0:3], { z16.h - z19.h}
    mov za1h.h[w13, 4:7], { z20.h - z23.h}
    add w13, w13, #8
    mov za1h.h[w13, 0:3], { z24.h - z27.h}
    mov za1h.h[w13, 4:7], { z28.h - z31.h}
    add w13, w13, #8


    cbnz x4, load_data_sme_1_h_z_inner_loop

    cbnz x0, load_data_sme_1_h_z_outer_loop

    smstop

    // restore
    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp d8, d9, [sp], #16

    ret




    // ld1w 2r consecutive
    .global _load_data_sme_2_z
    .align 4
_load_data_sme_2_z:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

load_data_sme_2_z_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_2_z_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1w {z0.s-z1.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z2.s-z3.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z4.s-z5.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z6.s-z7.s }, pn8/z, [x5]
    add x5, x5, #128

    ld1w {z8.s-z9.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z10.s-z11.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z12.s-z13.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z14.s-z15.s }, pn8/z, [x5]
    add x5, x5, #128

    ld1w {z16.s-z17.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z18.s-z19.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z20.s-z21.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z22.s-z23.s }, pn8/z, [x5]
    add x5, x5, #128

    ld1w {z24.s-z25.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z26.s-z27.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z28.s-z29.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z30.s-z31.s }, pn8/z, [x5]
    add x5, x5, #128

    mov za0h.s[w12, 0:3], {z0.s - z3.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z4.s - z7.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z8.s - z11.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z12.s - z15.s}

    mov za1h.s[w13, 0:3], { z16.s - z19.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z20.s - z23.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z24.s - z27.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z28.s - z31.s}
    add w13, w13, #4

    cbnz x4, load_data_sme_2_z_inner_loop

    cbnz x0, load_data_sme_2_z_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret


    // ld1h 4r consecutive
    .global _load_data_sme_4_h_z
    .align 4
_load_data_sme_4_h_z:
    stp d8, d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

load_data_sme_4_h_z_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_4_h_z_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1h {z0.h-z3.h }, pn8/z, [x5]
    add x5, x5, #256
    ld1h {z4.h-z7.h }, pn8/z, [x5]
    add x5, x5, #256
    ld1h {z8.h-z11.h }, pn8/z, [x5]
    add x5, x5, #256
    ld1h {z12.h-z15.h }, pn8/z, [x5]
    add x5, x5, #256

    ld1h {z16.h-z19.h }, pn8/z, [x5]
    add x5, x5, #256
    ld1h {z20.h-z23.h }, pn8/z, [x5]
    add x5, x5, #256
    ld1h {z24.h-z27.h }, pn8/z, [x5]
    add x5, x5, #256
    ld1h {z28.h-z31.h }, pn8/z, [x5]
    add x5, x5, #256

    //mov za0h.h[w12, 0:3], {z0.h - z3.h}
    //add w12, w12, #4
    //mov za0h.h[w12, 0:3], {z4.h - z7.h}
    //add w12, w12, #4
    //mov za0h.h[w12, 0:3], {z8.h - z11.h}
    //add w12, w12, #4
    //mov za0h.h[w12, 0:3], {z12.h - z15.h}
    //add w12, w12, #4

    //mov za1h.h[w13, 0:3], { z16.h - z19.h}
    //add w13, w13, #4
    //mov za1h.h[w13, 0:3], { z20.h - z23.h}
    //add w13, w13, #4
    //mov za1h.h[w13, 0:3], { z24.h - z27.h}
    //add w13, w13, #4
    //mov za1h.h[w13, 0:3], { z28.h - z31.h}
    //add w13, w13, #4


    mov za0h.h[w12, 0:3], {z0.h - z3.h}
    mov za0h.h[w12, 4:7], {z4.h - z7.h}
    add w12, w12, #8
    mov za0h.h[w12, 0:3], {z8.h - z11.h}
    mov za0h.h[w12, 4:7], {z12.h - z15.h}
    add w12, w12, #8

    mov za1h.h[w13, 0:3], { z16.h - z19.h}
    mov za1h.h[w13, 4:7], { z20.h - z23.h}
    add w13, w13, #4
    mov za1h.h[w13, 0:3], { z24.h - z27.h}
    mov za1h.h[w13, 4:7], { z28.h - z31.h}
    add w13, w13, #4

    cbnz x4, load_data_sme_4_z_inner_loop

    cbnz x0, load_data_sme_4_z_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp d8, d9, [sp], #16

    ret



    // ld1w 4r consecutive
    .global _load_data_sme_4_z
    .align 4
_load_data_sme_4_z:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

load_data_sme_4_z_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_4_z_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1w {z0.s-z3.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z4.s-z7.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z8.s-z11.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z12.s-z15.s }, pn8/z, [x5]
    add x5, x5, #256

    ld1w {z16.s-z19.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z20.s-z23.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z24.s-z27.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z28.s-z31.s }, pn8/z, [x5]
    add x5, x5, #256

    mov za0h.s[w12, 0:3], {z0.s - z3.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z4.s - z7.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z8.s - z11.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z12.s - z15.s}

    mov za1h.s[w13, 0:3], { z16.s - z19.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z20.s - z23.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z24.s - z27.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z28.s - z31.s}
    add w13, w13, #4

    cbnz x4, load_data_sme_4_z_inner_loop

    cbnz x0, load_data_sme_4_z_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret


    // ld1w 4r  -> mov za4h.s[w15,0:3], {z48.s - z51.s}

    // ld1w 8r  -> z32.s


    // ld1w 2r strided
    .global _load_data_sme_2_z_strided
    .align 4
_load_data_sme_2_z_strided:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

load_data_sme_2_z_strided_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_2_z_strided_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1w {z0.s, z8.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z1.s, z9.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z2.s, z10.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z3.s, z11.s }, pn8/z, [x5]
    add x5, x5, #128

    ld1w {z4.s, z12.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z5.s, z13.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z6.s, z14.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z7.s, z15.s }, pn8/z, [x5]
    add x5, x5, #128

    ld1w {z16.s, z24.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z17.s, z25.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z18.s, z26.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z19.s, z27.s }, pn8/z, [x5]
    add x5, x5, #128

    ld1w {z20.s, z28.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z21.s, z29.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z22.s, z30.s }, pn8/z, [x5]
    add x5, x5, #128
    ld1w {z23.s, z31.s }, pn8/z, [x5]
    add x5, x5, #128  
    

    mov za0h.s[w12, 0:3], {z0.s - z3.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z4.s - z7.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z8.s - z11.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z12.s - z15.s}

    mov za1h.s[w13, 0:3], { z16.s - z19.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z20.s - z23.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z24.s - z27.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z28.s - z31.s}
    add w13, w13, #4

    cbnz x4, load_data_sme_2_z_strided_inner_loop

    cbnz x0, load_data_sme_2_z_strided_outer_loop

    smstop

    // restore
    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret

    // ld1w 4r strided
    .global _load_data_sme_4_z_strided
    .align 4
_load_data_sme_4_z_strided:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

load_data_sme_4_z_strided_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_4_z_strided_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1w {z0.s, z4.s, z8.s, z12.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z1.s, z5.s, z9.s, z13.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z2.s, z6.s, z10.s, z14.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z3.s, z7.s, z11.s, z15.s }, pn8/z, [x5]
    add x5, x5, #256

    ld1w {z16.s, z20.s, z24.s, z28.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z17.s, z21.s, z25.s, z29.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z18.s, z22.s, z26.s, z30.s }, pn8/z, [x5]
    add x5, x5, #256
    ld1w {z19.s, z23.s, z27.s, z31.s }, pn8/z, [x5]
    add x5, x5, #256    

    mov za0h.s[w12, 0:3], {z0.s - z3.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z4.s - z7.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z8.s - z11.s}
    add w12, w12, #4
    mov za0h.s[w12, 0:3], {z12.s - z15.s}

    mov za1h.s[w13, 0:3], { z16.s - z19.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z20.s - z23.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z24.s - z27.s}
    add w13, w13, #4
    mov za1h.s[w13, 0:3], { z28.s - z31.s}
    add w13, w13, #4

    cbnz x4, load_data_sme_4_z_strided_inner_loop

    cbnz x0, load_data_sme_4_z_strided_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret


// ld1d 4r strided
    .global _load_data_sme_4_d_z_strided
    .align 4
_load_data_sme_4_d_z_strided:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

load_data_sme_4_d_z_strided_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

load_data_sme_4_d_z_strided_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    ld1d {z0.d, z4.d, z8.d, z12.d }, pn8/z, [x5]    //ZA0.D[0], ZA1.D[0], ZA2.D[0], ZA3.D[0]
    add x5, x5, #256
    ld1d {z1.d, z5.d, z9.d, z13.d }, pn8/z, [x5]    //ZA0.D[1], ZA1.D[1], ZA2.D[1], ZA3.D[1]
    add x5, x5, #256
    ld1d {z2.d, z6.d, z10.d, z14.d }, pn8/z, [x5]   //ZA0.D[2], ZA1.D[2], ZA2.D[2], ZA3.D[2]
    add x5, x5, #256
    ld1d {z3.d, z7.d, z11.d, z15.d }, pn8/z, [x5]   //ZA0.D[3], ZA1.D[3], ZA2.D[3], ZA3.D[3]
    add x5, x5, #256

    ld1d {z16.d, z20.d, z24.d, z28.d }, pn8/z, [x5]
    add x5, x5, #256
    ld1d {z17.d, z21.d, z25.d, z29.d }, pn8/z, [x5]
    add x5, x5, #256
    ld1d {z18.d, z22.d, z26.d, z30.d }, pn8/z, [x5]
    add x5, x5, #256
    ld1d {z19.d, z23.d, z27.d, z31.d }, pn8/z, [x5]
    add x5, x5, #256

    mov za0h.d[w12, 0:3], {z0.d - z3.d}
    add w12, w12, #4
    mov za0h.d[w12, 0:3], {z4.d - z7.d}
    add w12, w12, #4
    mov za0h.d[w12, 0:3], {z8.d - z11.d}
    add w12, w12, #4
    mov za0h.d[w12, 0:3], {z12.d - z15.d}

    mov za0h.d[w13, 0:3], { z16.d - z19.d}
    add w13, w13, #4
    mov za0h.d[w13, 0:3], { z20.d - z23.d}
    add w13, w13, #4
    mov za0h.d[w13, 0:3], { z24.d - z27.d}
    add w13, w13, #4
    mov za0h.d[w13, 0:3], { z28.d - z31.d}
    add w13, w13, #4

    cbnz x4, load_data_sme_4_d_z_strided_inner_loop

    cbnz x0, load_data_sme_4_d_z_strided_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret



    .global _store_data_sme_str
    .align 4
_store_data_sme_str:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

store_data_sme_str_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

store_data_sme_str_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    mov {z0.s - z3.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z4.s - z7.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z8.s - z11.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z12.s - z15.s }, za0h.s[w12, 0:3]

    mov {z16.s - z19.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z20.s - z23.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z24.s - z27.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z28.s - z31.s }, za1h.s[w13, 0:3]

    str z0, [x5]
    add x5, x5, #64
    str z1, [x5]
    add x5, x5, #64
    str z2, [x5]
    add x5, x5, #64
    str z3, [x5]
    add x5, x5, #64

    str z4, [x5]
    add x5, x5, #64
    str z5, [x5]
    add x5, x5, #64
    str z6, [x5]
    add x5, x5, #64
    str z7, [x5]
    add x5, x5, #64

    str z8, [x5]
    add x5, x5, #64
    str z9, [x5]
    add x5, x5, #64
    str z10, [x5]
    add x5, x5, #64
    str z11, [x5]
    add x5, x5, #64

    str z12, [x5]
    add x5, x5, #64
    str z13, [x5]
    add x5, x5, #64
    str z14, [x5]
    add x5, x5, #64
    str z15, [x5]
    add x5, x5, #64

    str z16, [x5]
    add x5, x5, #64
    str z17, [x5]
    add x5, x5, #64
    str z18, [x5]
    add x5, x5, #64
    str z19, [x5]
    add x5, x5, #64

    str z20, [x5]
    add x5, x5, #64
    str z21, [x5]
    add x5, x5, #64
    str z22, [x5]
    add x5, x5, #64
    str z23, [x5]
    add x5, x5, #64

    str z24, [x5]
    add x5, x5, #64
    str z25, [x5]
    add x5, x5, #64
    str z26, [x5]
    add x5, x5, #64
    str z27, [x5]
    add x5, x5, #64

    str z28, [x5]
    add x5, x5, #64
    str z29, [x5]
    add x5, x5, #64
    str z30, [x5]
    add x5, x5, #64
    str z31, [x5]
    add x5, x5, #64

    cbnz x4, store_data_sme_str_inner_loop

    cbnz x0, store_data_sme_str_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret


    .global _store_data_sme_1_z
    .align 4
_store_data_sme_1_z:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue p0.b

store_data_sme_1_z_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

store_data_sme_1_z_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1
    
    mov {z0.s - z3.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z4.s - z7.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z8.s - z11.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z12.s - z15.s }, za0h.s[w12, 0:3]

    mov {z16.s - z19.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z20.s - z23.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z24.s - z27.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z28.s - z31.s }, za1h.s[w13, 0:3]

    st1w { z0.s }, p0, [x5]
    add x5, x5, #64
    st1w { z1.s }, p0, [x5]
    add x5, x5, #64
    st1w { z2.s }, p0, [x5]
    add x5, x5, #64
    st1w { z3.s }, p0, [x5]
    add x5, x5, #64

    st1w { z4.s }, p0, [x5]
    add x5, x5, #64
    st1w { z5.s }, p0, [x5]
    add x5, x5, #64
    st1w { z6.s }, p0, [x5]
    add x5, x5, #64
    st1w { z7.s }, p0, [x5]
    add x5, x5, #64

    st1w { z8.s }, p0, [x5]
    add x5, x5, #64
    st1w { z9.s }, p0, [x5]
    add x5, x5, #64
    st1w { z10.s }, p0, [x5]
    add x5, x5, #64
    st1w { z11.s }, p0, [x5]
    add x5, x5, #64

    st1w { z12.s }, p0, [x5]
    add x5, x5, #64
    st1w { z13.s }, p0, [x5]
    add x5, x5, #64
    st1w { z14.s }, p0, [x5]
    add x5, x5, #64
    st1w { z15.s }, p0, [x5]
    add x5, x5, #64

    st1w { z16.s }, p0, [x5]
    add x5, x5, #64
    st1w { z17.s }, p0, [x5]
    add x5, x5, #64
    st1w { z18.s }, p0, [x5]
    add x5, x5, #64
    st1w { z19.s }, p0, [x5]
    add x5, x5, #64

    st1w { z20.s }, p0, [x5]
    add x5, x5, #64
    st1w { z21.s }, p0, [x5]
    add x5, x5, #64
    st1w { z22.s }, p0, [x5]
    add x5, x5, #64
    st1w { z23.s }, p0, [x5]
    add x5, x5, #64

    st1w { z24.s }, p0, [x5]
    add x5, x5, #64
    st1w { z25.s }, p0, [x5]
    add x5, x5, #64
    st1w { z26.s }, p0, [x5]
    add x5, x5, #64
    st1w { z27.s }, p0, [x5]
    add x5, x5, #64

    st1w { z28.s }, p0, [x5]
    add x5, x5, #64
    st1w { z29.s }, p0, [x5]
    add x5, x5, #64
    st1w { z30.s }, p0, [x5]
    add x5, x5, #64
    st1w { z31.s }, p0, [x5]
    add x5, x5, #64    

    cbnz x4, store_data_sme_1_z_inner_loop

    cbnz x0, store_data_sme_1_z_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret

    .global _store_data_sme_2_z
    .align 4
_store_data_sme_2_z:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

store_data_sme_2_z_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

store_data_sme_2_z_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1

    mov {z0.s - z3.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z4.s - z7.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z8.s - z11.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z12.s - z15.s }, za0h.s[w12, 0:3]

    mov {z16.s - z19.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z20.s - z23.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z24.s - z27.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z28.s - z31.s }, za1h.s[w13, 0:3]
    
    st1w {z0.s-z1.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z2.s-z3.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z4.s-z5.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z6.s-z7.s}, pn8, [x5]
    add x5, x5, #128

    st1w {z8.s-z9.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z10.s-z11.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z12.s-z13.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z14.s-z15.s}, pn8, [x5]
    add x5, x5, #128

    st1w {z16.s-z17.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z18.s-z19.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z20.s-z21.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z22.s-z23.s}, pn8, [x5]
    add x5, x5, #128

    st1w {z24.s-z25.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z26.s-z27.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z28.s-z29.s}, pn8, [x5]
    add x5, x5, #128
    st1w {z30.s-z31.s}, pn8, [x5]
    add x5, x5, #128


    cbnz x4, store_data_sme_2_z_inner_loop

    cbnz x0, store_data_sme_2_z_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret


    .global _store_data_sme_4_z
    .align 4
_store_data_sme_4_z:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

store_data_sme_4_z_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

store_data_sme_4_z_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1
    
    mov {z0.s - z3.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z4.s - z7.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z8.s - z11.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z12.s - z15.s }, za0h.s[w12, 0:3]

    mov {z16.s - z19.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z20.s - z23.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z24.s - z27.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z28.s - z31.s }, za1h.s[w13, 0:3]
    
    st1w { z0.s - z3.s}, pn8, [x5]
    add x5, x5, #256
    st1w { z4.s - z7.s}, pn8, [x5]
    add x5, x5, #256
    st1w { z8.s - z11.s}, pn8, [x5]
    add x5, x5, #256
    st1w { z12.s - z15.s}, pn8, [x5]
    add x5, x5, #256

    st1w { z16.s - z19.s}, pn8, [x5]
    add x5, x5, #256
    st1w { z20.s - z23.s}, pn8, [x5]
    add x5, x5, #256
    st1w { z24.s - z27.s}, pn8, [x5]
    add x5, x5, #256
    st1w { z28.s - z31.s}, pn8, [x5]
    add x5, x5, #256
    

    cbnz x4, store_data_sme_4_z_inner_loop

    cbnz x0, store_data_sme_4_z_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret

    .global _store_data_sme_2_z_strided
    .align 4
_store_data_sme_2_z_strided:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

store_data_sme_2_z_strided_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

store_data_sme_2_z_strided_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1
    
    mov {z0.s - z3.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z4.s - z7.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z8.s - z11.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z12.s - z15.s }, za0h.s[w12, 0:3]

    mov {z16.s - z19.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z20.s - z23.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z24.s - z27.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z28.s - z31.s }, za1h.s[w13, 0:3]
    
    st1w { z0.s, z8.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z1.s, z9.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z2.s, z10.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z3.s, z11.s}, pn8, [x5]
    add x5, x5, #128

    st1w { z4.s, z12.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z5.s, z13.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z6.s, z14.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z7.s, z15.s}, pn8, [x5]
    add x5, x5, #128

    st1w { z16.s, z24.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z17.s, z25.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z18.s, z26.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z19.s, z27.s}, pn8, [x5]
    add x5, x5, #128

    st1w { z20.s, z28.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z21.s, z29.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z22.s, z30.s}, pn8, [x5]
    add x5, x5, #128
    st1w { z23.s, z31.s}, pn8, [x5]
    add x5, x5, #128

    cbnz x4, store_data_sme_2_z_strided_inner_loop

    cbnz x0, store_data_sme_2_z_strided_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret
    



    .global _store_data_sme_4_z_strided
    .align 4
_store_data_sme_4_z_strided:
    stp  d8,  d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!

    smstart

    ptrue pn8.b

store_data_sme_4_z_strided_outer_loop:
    sub x0, x0, #1
    mov x4, x1
    mov x5, x2

store_data_sme_4_z_strided_inner_loop:
    sub x4, x4, #512
    mov w12, #0
    mov w13, #1
    
    mov {z0.s - z3.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z4.s - z7.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z8.s - z11.s }, za0h.s[w12, 0:3]
    add w12, w12, #4
    mov {z12.s - z15.s }, za0h.s[w12, 0:3]

    mov {z16.s - z19.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z20.s - z23.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z24.s - z27.s }, za1h.s[w13, 0:3]
    add w13, w13, #4
    mov {z28.s - z31.s }, za1h.s[w13, 0:3]
    
    st1w { z0.s, z4.s, z8.s, z12.s }, pn8, [x5]
    add x5, x5, #256
    st1w { z1.s, z5.s, z9.s, z13.s }, pn8, [x5]
    add x5, x5, #256
    st1w { z2.s, z6.s, z10.s, z14.s }, pn8, [x5]
    add x5, x5, #256
    st1w { z3.s, z7.s, z11.s, z15.s }, pn8, [x5]
    add x5, x5, #256

    st1w { z16.s, z20.s, z24.s, z28.s }, pn8, [x5]
    add x5, x5, #256
    st1w { z17.s, z21.s, z25.s, z29.s }, pn8, [x5]
    add x5, x5, #256
    st1w { z18.s, z22.s, z26.s, z30.s }, pn8, [x5]
    add x5, x5, #256
    st1w { z19.s, z23.s, z27.s, z31.s }, pn8, [x5]
    add x5, x5, #256


    cbnz x4, store_data_sme_4_z_strided_inner_loop

    cbnz x0, store_data_sme_4_z_strided_outer_loop

    smstop

    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp  d8,  d9, [sp], #16

    ret
