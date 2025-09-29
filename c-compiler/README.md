# C Compiler Construction

This directory contains C compiler implementation projects.

## Structure

- `siddarth/` - Siddarth's compiler projects
- `avantika/` - Avantika's compiler projects

## Getting Started

Each subdirectory contains projects focusing on different phases of compiler construction:

- Lexical analysis (tokenization)
- Syntax analysis (parsing)
- Semantic analysis
- Intermediate code generation
- Code optimization
- Target code generation
- Linking and loading

## Building

Use the main Makefile from the repository root:
```bash
make compiler
```

Or build individual projects:
```bash
cd siddarth/
make
```

## Tools

Projects may use various parsing tools and techniques:
- Hand-written recursive descent parsers
- Parser generators (yacc/bison, flex/lex)
- LLVM backend integration