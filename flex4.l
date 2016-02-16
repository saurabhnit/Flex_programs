%{
#include<stdio.h>
#include<string.h>
int i;
%}

%%
[a-zA-Z0-9] {for(i=0;i<yyleng;i++) printf("%c",(yytext[i]));}

. {}
%%

int main()
{
yyin=fopen("input1.txt","r");
yylex();
return 0;
}
