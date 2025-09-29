# Linux Kernel and Filesystem Development

This directory contains Linux kernel and filesystem development projects.

## Structure

- `siddarth/` - Siddarth's kernel and filesystem projects
- `avantika/` - Avantika's kernel and filesystem projects

## Getting Started

Each subdirectory contains projects focusing on:

- Kernel module development
- Device drivers
- Filesystem implementations
- System call interfaces
- Memory management
- Process scheduling
- Interrupt handling

## Building

Use the main Makefile from the repository root:
```bash
make kernel
```

Or build individual projects:
```bash
cd siddarth/
make
```

## Prerequisites

- Linux development headers
- Build tools (gcc, make)
- Kernel source (for module development)