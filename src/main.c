#include <stdio.h>
#include "lexer.h"

extern int yylex();
extern char* yytext;

int main(void) {
    int token;
    while ((token = yylex()) != 0) {
        printf("Token: %d, Text: %s\n", token, yytext);
    }
    return 0;
}
