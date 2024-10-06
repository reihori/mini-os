all: run

bootloader.bin: bootloader.asm
	nasm -f bin -o bootloader.bin bootloader.asm

run: bootloader.bin
	qemu-system-i386 -drive format=raw,file=bootloader.bin -nographic

.PHONY: run
