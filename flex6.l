%{
#include<stdio.h>
int i;
%}

printf printf
scanf scanf

%%
{printf} { for(i=0;i<yyleng;i++);printf("writef");}
{scanf} { for(i=0;i<yyleng;i++);printf("readf");}
%%

int main()
{
yyin=fopen("input2.txt","r");
yylex();
return 0;
}
