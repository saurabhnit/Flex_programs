%{
int ch=0,line=0,words=0,ch10=0;
%}

%%
[a-zA-Z] {ch=ch+yyleng;words++; if(yyleng>10)ch10++; }
[\n] {line++;}
.   {}
%%

int main()
{
yylex();
printf("no of characters=%d\n",ch);
printf("no of words=%d\n",words);
printf("no of lines=%d\n",line);
printf("no of words with length >10=%d\n",ch10);
return 0;
}
