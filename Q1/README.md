# Simple Arithmetic Expression Evaluator

This is a simple C program that evaluates arithmetic expressions consisting of numbers, addition (`+`), multiplication (`*`), and parentheses. The program reads an expression from the user and computes the result by parsing and evaluating the expression using a recursive descent parser.

## Features

- Supports addition (`+`), multiplication (`*`), and parentheses.
- Error handling for invalid expressions.
- Recursive descent parsing technique.

## How It Works

The program uses three functions (`expression`, `term`, and `factor`) to parse and evaluate arithmetic expressions:

1. **expression**: Handles addition (`+`).
2. **term**: Handles multiplication (`*`).
3. **factor**: Handles individual numbers and parenthesized sub-expressions.

The program reads an input string, processes the expression according to the rules of arithmetic, and outputs the result.

## Usage

1. Compile the program:

   ```bash
   gcc calculator.c -o calculator 

## input
Enter an expression: 3+5*2

## output
Result: 13
