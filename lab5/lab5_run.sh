nasm code.asm -f bin -o code.bin
xxd code.bin
qemu-system-x86_64 code.bin
rm -f code.bin
