%{
#include <stdio.h>
extern int count;
void yyerror(char *s);
int yylex(void);  /* Add this declaration */
%}

%token A B NL

%%
start: S NL    { printf("Number of a's: %d\n", count); }
     ;

S: A S
 | B
 ;
%%

void yyerror(char *s) {
    printf("Error: %s\n", s);
}

int main() {
    printf("Enter a string:");
    yyparse();
    return 0;
}
