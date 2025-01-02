# Simple Calculator and Interpreter

This repository addresses three tasks related to creating simple calculators and interpreters using different techniques such as Recursive Descent parsing, LEX, and YACC. The tasks include handling arithmetic operations and counting specific characters in strings using lexical analysis and parsing.

## Tasks Overview

### 1. **Recursive Descent Parser for Simple Arithmetic Calculator**
   - **Objective**: This task involves writing a C program using a recursive descent strategy to create a simple calculator that can perform integer arithmetic operations. The calculator supports addition (`+`) and multiplication (`*`) and uses mutually recursive routines.
   - **Key Features**:
     - Supports basic arithmetic operations: addition and multiplication.
     - Uses recursive descent parsing to evaluate expressions.
     - Handles operator precedence (multiplication before addition).

### 2. **Interpreter Using LEX and YACC to Count 'a's**
   - **Objective**: This task involves creating an interpreter using LEX and YACC based on the following grammar:
     ```
     S → a S | b
     ```
     The interpreter processes an input string and counts the number of 'a's present in the string.
   - **Key Features**:
     - Uses LEX to tokenize the input.
     - Uses YACC to parse the input string according to the grammar.
     - Outputs the number of occurrences of the character 'a' in the string.

### 3. **Small Calculator with LEX and YACC**
   - **Objective**: This task involves writing LEX and YACC specification files to create a simple calculator that can add and subtract numbers. The calculator reads input expressions, parses them, and performs the corresponding arithmetic operations.
   - **Key Features**:
     - Supports addition and subtraction operations.
     - Handles arithmetic expressions with proper syntax and error handling.
     - Parses the expressions using YACC and tokenizes using LEX.

## Tools Used

The following tools and technologies are used in this project:

- **C**: The core programming language used for the recursive descent parser and calculator logic. C is chosen for its efficiency and low-level control over the parsing process.
  
- **LEX**: A tool used to generate lexical analyzers (scanners). LEX reads the input string and breaks it into tokens, which are then processed by YACC or used directly in C code.
  
- **YACC**: A tool used to generate parsers based on context-free grammar. YACC is used to define the grammar and produce a parser that evaluates arithmetic expressions or counts specific characters based on the grammar.
  
- **GCC**: The GNU Compiler Collection is used to compile the C, LEX, and YACC code into executable programs.

## Usage

### 1. **Recursive Descent Parser (Simple Calculator)**
   - Compile the C program:
     ```bash
     gcc -o calculator calculator.c
     ```
   - Run the program:
     ```bash
     ./calculator
     ```
   - Input an arithmetic expression like `3+5*2` to see the result.

### 2. **Interpreter for Counting 'a's**
   - Create the LEX and YACC files (e.g., `lexer.l` for LEX and `parser.y` for YACC).
   - Generate the C code from LEX and YACC:
     ```bash
     lex lexer.l
     yacc -d parser.y
     gcc -o counter y.tab.c lex.yy.c
     ```
   - Run the program and input a string to count the number of 'a's:
     ```bash
     ./counter
     ```

### 3. **Small Calculator with LEX and YACC**
   - Write the LEX and YACC specification files for the calculator (e.g., `lexer.l` for LEX and `parser.y` for YACC).
   - Generate the C code from LEX and YACC:
     ```bash
     lex lexer.l
     yacc -d parser.y
     gcc -o calc y.tab.c lex.yy.c
     ```
   - Run the calculator program:
     ```bash
     ./calc
     ```
   - Input a mathematical expression involving addition or subtraction, such as `5+3-2`.

