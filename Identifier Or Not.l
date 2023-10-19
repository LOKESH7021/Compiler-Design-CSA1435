%{
#include<stdio.h>
%}

%%

if|else|while|int|switch|for|char { printf("\n%s is Not a IDENTIFIER", yytext);}
[a-zA-Z0-9]+ { printf("\n%s is IDENTIFIER", yytext);}

%%
int yywrap( ){}
int main()
{
	yylex();
}

/*output:
Microsoft Windows [Version 10.0.22621.2428]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LOKESH KUMAR>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\LOKESH KUMAR>flex identifierORnot.l.txt

C:\Users\LOKESH KUMAR>set path=C:\MinGW\bin

C:\Users\LOKESH KUMAR>gcc lex.yy.c

C:\Users\LOKESH KUMAR>a
int a if a else b

int is Not a IDENTIFIER
a is IDENTIFIER
if is Not a IDENTIFIER
a is IDENTIFIER
else is Not a IDENTIFIER
b is IDENTIFIER*/
