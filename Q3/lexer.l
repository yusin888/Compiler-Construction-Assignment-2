%{
#include <stdlib.h>
#include "y.tab.h"
%}

%%
[0-9]+    { yylval = atoi(yytext); return NUMBER; } // Convert digit string to integer
"+"       { return PLUS; }
"-"       { return MINUS; }
\n        { return NL; }
[ \t]     ; /* skip whitespace */
.         { printf("Invalid character\n"); }
%%

int yywrap() { return 1; }
