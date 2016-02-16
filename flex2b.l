%{
#include<stdio.h>
#include<string.h>
int i;
%}
keyword int|float|return|for|while|do|main
%%
{keyword} {for(i=0;i<yyleng;i++) printf("%c",toupper(yytext[i]));}
%%

int main()
{
yyin=fopen("input1.txt","r");
yylex();
return 0;
}

