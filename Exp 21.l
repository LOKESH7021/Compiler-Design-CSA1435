%{
#include<stdio.h>
int lc=0,sc=0,ch=0,wc=0;        
%}
 
 
%%
[\n] { lc++; ch+=yyleng;}
[  \t] { sc++; ch+=yyleng;}
[^\t\n ]+ { wc++;  ch+=yyleng;} 
%%
 
int yywrap(){ return 1;    }
/*        After inputting press ctrl+c        */
 
int main(){
    printf("Enter the Sentence : ");
    yylex();
    printf("Number of lines : %d\n",lc);
    printf("Number of spaces : %d\n",sc);
    printf("Number of  words: %d\n",wc);
     printf("Number of  charcters: %d\n",ch);
     
    return 0;
}

/*OUTPUT:
Enter the sentence:
hello have a nice day
i am a student

Number of lines: 2
Number of spaces: 9
Number of words: 12
Number of character: 47*/
