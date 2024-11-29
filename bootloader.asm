                                                    ;A Simple Bootloader 

                                ;My Github Profile:-    https://github.com/TanvirAhmedChowdhury



[BITS 16]
[ORG 0x7c00]

start:
    cli                 ; Clear interrupts
    mov ax, 0x0000
    mov ds, ax          ; Data segment to 0
    mov es, ax          ; Extra segment to 0
    mov ss, ax          ; Stack segment to 0
    mov sp, 0x7c00      ; Set stack pointer
    sti                 ; Enable interrupts
    mov si, msg         ; Load address of the message into SI

print:
    lodsb               ; Load byte at DS:SI into AL, increment SI
    cmp al, 0           ; Check for null terminator
    je done             ; If null terminator, jump to done
    mov ah, 0x0E        ; Teletype output function
    int 0x10            ; BIOS interrupt for character display
    jmp print           ; Loop to print the next character

done:
    cli
    hlt                 ; Halt CPU execution

msg: db 'Hello World', 0 ; Message to print

times 510 - ($ - $$) db 0 ; Pad the boot sector to 510 bytes
dw 0xAA55                ; Boot signature
