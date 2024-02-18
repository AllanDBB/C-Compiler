%{
#include <stdio.h>
#include "tokens.h"
%}

%option noyywrap
%x COMMENT

%%

"//"                { }
"/*"                { BEGIN(COMMENT); }
<COMMENT>"*/"       { BEGIN(INITIAL); }
<COMMENT>.|\n       { }
int                 { return TOK_INT; }
return              { return TOK_RETURN; }
if                  { return TOK_IF; }
else                { return TOK_ELSE; }
while               { return TOK_WHILE; }
for                 { return TOK_FOR; }
[0-9]+              { return TOK_NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]* { return TOK_IDENTIFIER; }
[ \t]+              { }
\n                  { return TOK_NEWLINE; }
";"                 { return TOK_SEMICOLON; }
"="                 { return TOK_ASSIGN; }
"+"                 { return TOK_PLUS; }
"-"                 { return TOK_MINUS; }
"*"                 { return TOK_ASTERISK; }
"/"                 { return TOK_SLASH; }
"("                 { return TOK_LPAREN; }
")"                 { return TOK_RPAREN; }
"{"                 { return TOK_LBRACE; }
"}"                 { return TOK_RBRACE; }
","                 { return TOK_COMMA; }
"&&"                { return TOK_AND; }
"||"                { return TOK_OR; }
"!"                 { return TOK_NOT; }
"=="                { return TOK_EQ; }
"!="                { return TOK_NEQ; }
"<"                 { return TOK_LT; }
">"                 { return TOK_GT; }
"<="                { return TOK_LE; }
">="                { return TOK_GE; }
"++"                { return TOK_INC; }
"--"                { return TOK_DEC; }
"&"                 { return TOK_BITAND; }
"|"                 { return TOK_BITOR; }
"^"                 { return TOK_XOR; }
"%"                 { return TOK_MOD; }
\"(\\.|[^\\"])*\"    { return TOK_STRING_LITERAL; }
"'"                 { return TOK_CHAR_LITERAL; }
[0-9]+"."[0-9]*     { return TOK_FLOAT_LITERAL; }

%%

int main() {
    int token;
    while ((token = yylex())) {
        printf("Token: %d\n", token);
    }
    return 0;
}
