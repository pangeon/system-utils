#!/bin/bash

# CREATE ASM FILE
asm_schema="; $1.asm
section .data
section .bss
section .text
        global main
main:
; prolog
        push rbp
        mov  rbp, rsp
; epiloque
        mov  rsp, rbp
        pop  rbp
ret"

echo "$asm_schema" > "$1.asm"

# CREATE MAKEFILE
makefile_schema="$1: $1.o
	gcc -o $1 $1.o -no-pie
$1.o: $1.asm
	nasm -f elf64 -g -F dwarf $1.asm -l $1.lst"

echo "$makefile_schema" > makefile


