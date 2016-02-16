%{
#include<stdio.h>
#include<string.h>
int i;
%}

%%
[/][*][a-zA-Z0-9" "\n]*[*][/] {for(i=0;i<yyleng;i++){if(yytext[i]=='\n')printf(" ");}}
%%

int main()
{
yyin=fopen("input1.txt","r");
yylex();
return 0;
}
