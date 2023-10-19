%{
%}

%%
[a-z.0-9]+@[a-z]+".com "|".in" {printf("\n It is valid mail.");}
.+ {printf("Not valid.");}
%%

int yywrap()
{}

int main()
{
printf("enter the mail::");
yylex();
}

/* Output:
Microsoft Windows [Version 10.0.22621.2428]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LOKESH KUMAR>set path=C:\Program Files (x86)\GnuWin32\bin

C:\Users\LOKESH KUMAR>flex Email.l.txt

C:\Users\LOKESH KUMAR>set path=C:\MinGW\bin

C:\Users\LOKESH KUMAR>gcc lex.yy.c
enter the mail::abcd123@gmail.com

It is valid mail.*/
