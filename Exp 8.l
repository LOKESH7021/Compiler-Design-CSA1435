%{
%}

%%

[6-9][0-9]{9} {printf("\n mobile number valid \n");}
.+ {printf("\n mobile number not valid \n");}

%%

int yywrap()
{}

int main()
{
printf("\n enter the mobile number:");
yylex();
}

/*Output:
enter the mobile number: 8681327856
mobile number valid */
