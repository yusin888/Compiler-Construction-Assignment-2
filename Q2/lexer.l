%{
#include "y.tab.h"
int count = 0;
%}

%%
a    { count++; return A; }
b    { return B; }
\n   { return NL; }
.    { /* ignore other characters */ }
%%

int yywrap() { return 1; }
