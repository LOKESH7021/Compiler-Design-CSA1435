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
2:int main(){
3:int a;
4:int i = 0;
5:for(i;i<=23;i++){
6:printf("Hello world");
7:}
8:return 0;
9:}*/
