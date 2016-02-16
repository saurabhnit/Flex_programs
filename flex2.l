

%{
#include<stdio.h>
#include<string.h>
char *key1[9]={"from","to","for","while","do","int","char","float","return"};
void matching(char *a,char **b);
%}


%%

[a-zA-Z]+ {  matching(yytext,key1); }
%%

void matching(char *a,char **b)
{

int l=strlen(a);
int i,j,f=0;
for(i=0;i<9;i++)
{
if(!strcmp(a,b[i]))
{
for(j=0;j<l;j++)
printf("%c",toupper(a[j]));
f=1;
}
}
if(!f)
{
printf("%s",yytext);
}
}



int main()
{
yyin=fopen("input1.txt","r");
yylex();
return 0;
}


