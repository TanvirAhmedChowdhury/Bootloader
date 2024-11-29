# Bootloader
"A simple bootloader written in Assembly that demonstrates low-level system programming. Loads and executes a basic program at system startup. Perfect for learning or experimenting with bootloaders and x86 assembly."
# Simple Assembly Bootloader

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![GitHub stars](https://img.shields.io/github/stars/yourusername/simple-asm-bootloader.svg)
![GitHub forks](https://img.shields.io/github/forks/yourusername/simple-asm-bootloader.svg)

A simple bootloader written in Assembly that demonstrates how operating systems load and execute programs at startup. This project is ideal for learning or experimenting with low-level system programming concepts, particularly bootloaders and x86 assembly.

---

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
  - [On Linux](#on-linux)
  - [On Windows](#on-windows)
- [Usage](#usage)
  - [Building the Bootloader](#building-the-bootloader)
  - [Running the Bootloader](#running-the-bootloader)
- [File Structure](#file-structure)
- [How It Works](#how-it-works)
- [Author](#author)

---

## Features

- **Minimalistic Design**: Easy to understand for beginners in assembly language.
- **Educational**: Learn how to interact with hardware directly.
- **Lightweight**: Compact size, typically 512 bytes.

---

## Prerequisites

### Tools Required

- **Assembler**: [NASM (Netwide Assembler)](https://www.nasm.us/)
- **Emulator**:
  - **Linux**: [QEMU](https://www.qemu.org/) or [Bochs](http://bochs.sourceforge.net/)
- **Git**: For cloning the repository.

---

## Installation and Running the Bootloader on Linux

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install nasm qemu-system-x86 git -y
git clone https://github.com/TanvirAhmedChowdhury/Bootloader.git
cd Bootloader
make
qemu-system-x86_64 -hda bootloader.bin




   
