nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o
ld -m elf_i386 -T link.ld -o hunt/boot/kernel.bin kasm.o kc.o
qemu -kernel hunt/boot/kernel.bin
grub-mkrescue -o HUNTER.iso hunt


read a
