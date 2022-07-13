%{
	#include<stdio.h>
	#include "y.tab.h"
%}

keyword "how"
keyword1 "is"
keyword2 "many"
unit "KB"|"GB"|"MB"|"TB"|"PB" 
op "="
eos "."
qm "?"
digit [0-9]
ws " "


%%
{keyword} { 
	printf("%10s : keyword\n",yytext); 
	return K;
	}
{keyword1} { 
	printf("%10s : keyword1\n",yytext); 
	return K1;
	}
{keyword2} { 
	printf("%10s : keyword2\n",yytext); 
	return K2;
	}
{unit} { 
	printf("%10s : unit\n",yytext); 
	return U;
	}
{op} { 
	printf("%10s : oprator\n",yytext); 
	return O;
	}

{digit}+ {  
	printf("%10s : digit\n",yytext); 
	return D;
	}

{digit}+"."{digit}* {  
	printf("%10s : digit\n",yytext); 
	return D;
	}

{eos} { 
	printf("%10s : enf of line 1\n",yytext);
	return E;
	}
{qm} { 
	printf("%10s : enf of line 2\n",yytext);
	return Q;
	}
{ws} {
	return W;
	}

.       { 
	printf("invalid Sentence");
	exit(1);
	}

%%

int yywrap()
{
	return 1;
}