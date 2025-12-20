@ ; Program Penjumlahan Dua Bilangan
@ ; Mem[14] = 2
@ ; Mem[15] = 3
@ ; Mem[13] = hasil


@ LOAD 14
@ ADD 15
@ STORE 13
@ HALT

section .data
	hello:     db 'Hello, World!',10    ; 'Hello, World!' plus a linefeed character
	helloLen:  equ $-hello             ; Length of the 'Hello world!' string

section .text
	global _start

_start:
	mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 80h              ; Call the kernel
	mov eax,1            ; The system call for exit (sys_exit)
	mov ebx,0            ; Exit with return "code" of 0 (no error)
	int 80h;

section .data
    nama    db "Nama   : Muhammad Mufid Azhar", 10
    namaLen equ $ - nama

    usia    db "Usia   : 18", 10
    usiaLen equ $ - usia

    alamat1 db "Alamat :", 10
    alamat1Len equ $ - alamat1

    alamat2 db "- Jalan Pribadi", 10
    alamat2Len equ $ - alamat2

    alamat3 db "- RT/RW 003/005", 10
    alamat3Len equ $ - alamat3

    alamat4 db "- Tanah Baru", 10
    alamat4Len equ $ - alamat4

    alamat5 db "- Beji, Depok", 10
    alamat5Len equ $ - alamat5

    alamat6 db "- Jawa Barat", 10
    alamat6Len equ $ - alamat6

section .text
    global _start

_start:
    ; print nama
    mov eax, 4
    mov ebx, 1
    mov ecx, nama
    mov edx, namaLen
    int 0x80

    ; print usia
    mov eax, 4
    mov ebx, 1
    mov ecx, usia
    mov edx, usiaLen
    int 0x80

    ; print alamat
    mov eax, 4
    mov ebx, 1
    mov ecx, alamat1
    mov edx, alamat1Len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, alamat2
    mov edx, alamat2Len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, alamat3
    mov edx, alamat3Len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, alamat4
    mov edx, alamat4Len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, alamat5
    mov edx, alamat5Len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, alamat6
    mov edx, alamat6Len
    int 0x80

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
