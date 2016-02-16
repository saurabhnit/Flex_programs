%{
#include<stdio.h>
int i;
int count=0;
int max=-1;
%}

%%
[\n][\t]* {for(i=0;i<yyleng;i++){if(yytext[i]=='\t')count++;} if(count>max)max=count; count=0;}
. {}
%%

int main()
{
yyin=fopen("input2.txt","r");
yylex();
printf("maximum level of indentation is=%d\n",max);
return 0;
}
