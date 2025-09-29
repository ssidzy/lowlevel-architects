.PHONY: all x86 kernel compiler test clean help

# Default target
all: x86 kernel compiler

# Build x86 assembly projects
x86:
	@echo "Building x86 assembly projects..."
	@$(MAKE) -C x86-assembly/siddarth 2>/dev/null || true
	@$(MAKE) -C x86-assembly/avantika 2>/dev/null || true

# Build Linux kernel/filesystem projects
kernel:
	@echo "Building Linux kernel/filesystem projects..."
	@$(MAKE) -C linux-kernel-fs/siddarth 2>/dev/null || true
	@$(MAKE) -C linux-kernel-fs/avantika 2>/dev/null || true

# Build C compiler projects
compiler:
	@echo "Building C compiler projects..."
	@$(MAKE) -C c-compiler/siddarth 2>/dev/null || true
	@$(MAKE) -C c-compiler/avantika 2>/dev/null || true

# Run tests
test:
	@echo "Running tests..."
	@$(MAKE) -C x86-assembly/siddarth test 2>/dev/null || true
	@$(MAKE) -C x86-assembly/avantika test 2>/dev/null || true
	@$(MAKE) -C linux-kernel-fs/siddarth test 2>/dev/null || true
	@$(MAKE) -C linux-kernel-fs/avantika test 2>/dev/null || true
	@$(MAKE) -C c-compiler/siddarth test 2>/dev/null || true
	@$(MAKE) -C c-compiler/avantika test 2>/dev/null || true

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	@rm -rf artifacts/*
	@rm -rf build/
	@$(MAKE) -C x86-assembly/siddarth clean 2>/dev/null || true
	@$(MAKE) -C x86-assembly/avantika clean 2>/dev/null || true
	@$(MAKE) -C linux-kernel-fs/siddarth clean 2>/dev/null || true
	@$(MAKE) -C linux-kernel-fs/avantika clean 2>/dev/null || true
	@$(MAKE) -C c-compiler/siddarth clean 2>/dev/null || true
	@$(MAKE) -C c-compiler/avantika clean 2>/dev/null || true

# Show help
help:
	@echo "Available targets:"
	@echo "  all      - Build all projects (x86, kernel, compiler)"
	@echo "  x86      - Build x86 assembly projects"
	@echo "  kernel   - Build Linux kernel/filesystem projects"
	@echo "  compiler - Build C compiler projects"
	@echo "  test     - Run all tests"
	@echo "  clean    - Clean all build artifacts"
	@echo "  help     - Show this help message"