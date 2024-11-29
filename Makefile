alt:
	nasm -f bin ./bootloader.asm -o ./bootloader.bin

clean:
	rm -f ./bootloader.bin