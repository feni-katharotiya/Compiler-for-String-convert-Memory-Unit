%{
#include<stdio.h>
%}


%%
[1-9][0-9]+	    		{printf("%s - This is valid\n",yytext);}
[0-9]+	        		{printf("%s - This is valid\n",yytext);}
[0-9]*"."[0-9]+			{printf("%s - This is valid\n",yytext);}
is		        	{printf("%s - This is valid\n",yytext);}
how		        	{printf("%s - This is valid\n",yytext);}
many	 	    		{printf("%s - This is valid\n",yytext);}
KB	    			{printf("%s - This is valid\n",yytext);}
GB	    			{printf("%s - This is valid\n",yytext);}
MB	    			{printf("%s - This is valid\n",yytext);}
TB	    			{printf("%s - This is valid\n",yytext);}
PB	    			{printf("%s - This is valid\n",yytext);}
"?"		        	{printf("%s - This is valid\n",yytext);}
"="             		{printf("%s - This is valid\n",yytext);}
"."             		{printf("%s - This is valid\n",yytext);}

" "		        	{printf("This is whitespace\n"); }
\n		        	{return 0;}
.		        	{printf("This is invalid\n",yytext); return 0;}

%%


int yywrap(){return 1;}

int main(){
yylex();
return 0;
}
