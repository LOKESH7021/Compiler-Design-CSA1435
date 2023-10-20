 %{
#include<stdio.h>
int ln=0;
%}

%%

.* {ln++; fprintf(yyout,"\n%d:%s",ln,yytext);}
%%
int yywrap(){}

int main()
{
yyin=fopen("simple.txt","r");
yyout=fopen("out.txt","w");
yylex();
return 0;
}

/*OUTPUT:
1:#include<stdio.h>
2:*/
