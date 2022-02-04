org 100h
    mov     al, 93h
    int     0x10
    lds     bp, [bx]
M:  xor     si, si
    mov     ch, 253
L:  lodsb
    mov     [si-320], al
    and     al, [si]
    xor     al, [si+1]
    and     al, 16+8
    mov     [si+320], al
    loop    L
    hlt
    jmp     M
