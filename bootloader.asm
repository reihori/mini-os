bits 16     ; Set to 16-bit real mode
org 0x7C00  ; Set the origin to the address where the boot sector is loaded

start:

    mov si, msg
    mov ah, 0x0E    ; Set the function to print characters

print_loop:
    lodsb           ; Load a byte from SI to AL
    or al, al       ; Check if the msg is fully displayed
    jz halt
    int 0x10        ; Call BIOS interrupt to print the character in AL
    jmp print_loop

halt:
    hlt
    jmp halt

msg db 'Hello, World!', 13, 10, 0  ; 13=CR, 10=LF, 0=NUL

times 510 - ($ - $$) db 0  ; Fill with zeros until the boot sector signature
dw 0xAA55                  ; Boot sector signature
