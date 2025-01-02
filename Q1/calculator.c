#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

// Function prototypes
int expression();
int term();
int factor();

// Global variable to keep track of the current character in the input
char *input;

// Function to handle errors
void error() {
    fprintf(stderr, "Syntax error\n");
    exit(1);
}

// Function to match the expected character
void match(char expected) {
    if (*input == expected) {
        input++;
    } else {
        error();
    }
}

// Function to parse an expression
int expression() {
    int result = term();
    while (*input == '+') {
        match('+');
        result += term();
    }
    return result;
}

// Function to parse a term
int term() {
    int result = factor();
    while (*input == '*') {
        match('*');
        result *= factor();
    }
    return result;
}

// Function to parse a factor
int factor() {
    int result;
    if (isdigit(*input)) {
        result = *input - '0';
        match(*input);
    } else if (*input == '(') {
        match('(');
        result = expression();
        match(')');
    } else {
        error();
    }
    return result;
}

int main() {
    char buffer[100];
    printf("Enter an expression: ");
    fgets(buffer, sizeof(buffer), stdin);
    input = buffer;

    int result = expression();
    printf("Result: %d\n", result);

    return 0;
}

