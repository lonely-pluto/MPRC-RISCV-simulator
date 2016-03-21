#!/bin/sh

if [ $# != 1 ]; then
	echo "Usage: " `basename $0` " filename"
fi

riscv64-unknown-elf-gcc -m32 -c $1
riscv64-unknown-elf-ld -m elf32lriscv -o ${1%%.c} -e main ${1%%.c}.o
