# Lex and Yacc Program: Count 'a's in a String

This is a simple program that uses Lex (a lexical analyzer generator) and Yacc (a parser generator) to count the number of 'a' characters in a user-provided string. The program ignores all other characters except 'a', 'b', and newline (`\n`).

---

## How It Works

1. The **Lexical Analyzer** (Lex) reads the input character by character:
   - Counts occurrences of 'a'.
   - Recognizes 'b' and newline (`\n`).
   - Ignores all other characters.
2. The **Parser** (Yacc) processes the tokens generated by Lex and prints the total count of 'a's when a newline is encountered.

---

## Requirements

- **Lex** (or Flex): Lexical analyzer generator.
- **Yacc** (or Bison): Parser generator.
- **GCC**: C compiler.

---

## How to Compile and Run

1. Save the Lex file as `lex.l` and the Yacc file as `yacc.y`.
2. Generate the Lex and Yacc files:
   ```bash
   lex lex.l
   yacc -d parser.y

## Input:

Enter a string :
aabba

## Output:

Number of a's: 3