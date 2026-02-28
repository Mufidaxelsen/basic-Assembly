
; Program Biodata + Penjumlahan Dua Bilangan


section .data
    ; Data Penjumlahan
    angka1  dd 2
    angka2  dd 3
    hasil   dd 0

    teksHasil db "Hasil 2 + 3 = ", 0
    teksHasilLen equ $ - teksHasil

    newline db 10

    ; Biodata 
    nama    db "Nama   : Muhammad Mufid Azhar", 10
    namaLen equ $ - nama

    usia    db "Usia   : 18", 10
    usiaLen equ $ - usia

    alamat1 db "Alamat :", 10
    alamat1Len equ $ - alamat1

    alamat2 db "- jalan kabel", 10
    alamat2Len equ $ - alamat2

    alamat3 db "- RT|RW 04/07", 10
    alamat3Len equ $ - alamat3

    alamat4 db "- Beji", 10
    alamat4Len equ $ - alamat4

    alamat5 db "- Beji, Depok", 10
    alamat5Len equ $ - alamat5

    alamat6 db "- Jawa Barat", 10
    alamat6Len equ $ - alamat6

section .bss
    buffer resb 10      ; buffer untuk konversi angka ke string

section .text
    global _start

_start:

    ; Proses Penjumlahan
    mov eax, [angka1]
    add eax, [angka2]
    mov [hasil], eax

    ; Print teks hasil
    mov eax, 4
    mov ebx, 1
    mov ecx, teksHasil
    mov edx, teksHasilLen
    int 0x80

    ; Konversi hasil ke ASCII sederhana (karena hasil 1 digit)
    mov eax, [hasil]
    add eax, '0'
    mov [buffer], eax

    mov eax, 4
    mov ebx, 1
    mov ecx, buffer
    mov edx, 1
    int 0x80

    ; Print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Print Biodata

    mov eax, 4
    mov ebx, 1
    mov ecx, nama
    mov edx, namaLen
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, usia
    mov edx, usiaLen
    int 0x80

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

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80