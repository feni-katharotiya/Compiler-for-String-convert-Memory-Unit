%{
	#include<stdio.h>
	#include<stdlib.h>
	#define YYERROR_VERBOSE 1
	void yyerror(char *err);
%}

%token K K1 K2 U O D E Q W

%% 
S: A {printf("\nthis sentence is valid.\n"); return 0;};
A: D U W K1 W K W K2 W U Q {}
 | D U O D U E {}
 | K W K2 W D U W K1 W U Q{} ;
 

%%


void main(){
	printf("Enter String: ");
	yyparse();
	printf("\n valid language\n");
}

void yyerror(char *err) {
	printf("Error: ");
	fprintf(stderr, "%s\n", err);
	exit(1);
}