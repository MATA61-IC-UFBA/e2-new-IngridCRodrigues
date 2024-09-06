%option noyywrap nodefault yylineno
%{
#include "token.h"
%}

%%
[0-9]+        { yylval.num = atoi(yytext); return NUMBER; }
[+\-*/()]     { return yytext[0]; }
\n            { return '\n'; }
[ \t]+         { /* ignore whitespace */ }
.              { return ERROR; }
%%

int main() {
    yylex();
    return 0;
}
