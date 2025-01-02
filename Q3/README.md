# Simple Calculator Using Flex and Yacc

This project implements a simple calculator that supports basic arithmetic operations (`+` and `-`) on integers. It uses **Flex** for lexical analysis and **Yacc** for parsing.

---

## Features
- Handles addition and subtraction of integers.
- Supports multiple lines of input.
- Provides error messages for invalid characters or syntax errors.

---

## Prerequisites
To compile and run this project, ensure you have:
- **Flex**
- **Yacc**
- A C compiler (e.g., `gcc`)

---

## Files
- `lexer.l`: Flex file (lexer) for tokenizing input.
- `parser.y`: Yacc file (parser) for processing tokens and evaluating expressions.

---

## How to Run
1. **Compile the files**
   ```bash
   yacc -d parser.y   # Generates y.tab.c and y.tab.h
   flex lexer.l       # Generates lex.yy.c
   gcc  y.tab.c lex.yy.c -o calculator
   ```

2. **Run the program**
   ```bash
   ./calculator
   ```

3. **Provide input**
   Enter your arithmetic expressions line by line. Press `Enter` to compute the result.

   - To exit, press `Ctrl+D` (Linux/Mac) or `Ctrl+Z` (Windows).

---

## Example Input and Output

### Input
```
5 + 3 - 2
7 - 4 + 6

+ 2
```

### Output
```
Result: 6
Result: 9
Invalid character
Error: syntax error
```

---

## Explanation
- **`5 + 3 - 2`**: The program evaluates this expression to `6` and prints the result.
- **`7 - 4 + 6`**: The program evaluates this expression to `9` and prints the result.
- **`+ 2`**: An error occurs as the input is syntactically incorrect (no left-hand operand for `+`).

---

## Error Handling
- The program will display `Invalid character` for any unrecognized symbols.
- It will show `Error: syntax error` for invalid syntax.

---

## Extending the Calculator
To add more operators or features:
1. Modify the grammar rules in `calculator.y`.
2. Update the token definitions in `calculator.l`.
3. Recompile the files as shown in the **How to Run** section.

---


Happy Coding! 🎉
