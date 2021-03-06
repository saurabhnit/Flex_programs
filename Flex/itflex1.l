digit [0-9]
letter [a-zA-Z]
keyword int|float|return|main
op [+/-]
%{
int count=0,c=0,operator=0;
%}
%%
{keyword} {c++;printf("Found keyword %s\n",yytext);}
{letter}({letter}|{digit})* {count++;printf("Found identifier %s\n",yytext);}
[0-9]+ {printf("Found an integer %s\n",yytext);}
{op} {operator++;printf("Found operator %s\n",yytext);}
. {}
%%
int main()
{
yyin=fopen("input1.txt","r");
yylex();
printf("Number of identifiers = %d",count);
printf("Number of keywords = %d",c);
printf("Number of operators = %d",operator);
return 0;
}
