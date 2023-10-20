%{
#include<stdio.h>
%}

%%

if|else|while|int|switch|for|char { printf("\n%s is a KEYWORD", yytext);}
[a-zA-Z0-9]+ { printf("\n%s is IDENTIFIER", yytext);}

%%
int yywrap( ){}
int main()
{
	yylex();
}

/*OUTPUT:
a = 0;
if a < 9
a = 10;

a is IDENTIFIER
0 is IDENTIFIER
if is a KEYWORD
a is IDENTIFIER
9 is IDENTIFIER
a is IDENTIFIER
10 is IDENTIFIER*/
