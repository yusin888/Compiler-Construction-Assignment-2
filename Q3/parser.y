%{
#include <stdio.h>
int yylex(void);
void yyerror(char *s);
%}

%token NUMBER PLUS MINUS NL

%%
input: /* empty */
     | input line
     ;

line: NL
    | expr NL    { printf("Result: %d\n", $1); }
    ;

expr: NUMBER           { $$ = $1; }
    | expr PLUS NUMBER { $$ = $1 + $3; }
    | expr MINUS NUMBER { $$ = $1 - $3; }
    ;
%%

void yyerror(char *s) {
    printf("Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}
