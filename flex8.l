%{
#include<stdio.h>
int i,n=1;
%}

special *|+|-|/|!|@|#|$|%|^|&|(|)

%%
([a-zA-Z][*+-/=])*([a-zA-Z]|[0-9]) {  printf("Valid arithmetic expression\n"); i=1;}
. {if(n==1)printf("Invalid");n=0;}
%%

int main()
{
yylex();
return 0;
}
