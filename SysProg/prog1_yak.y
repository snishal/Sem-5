%{
	#include<stdio.h>
	int yylex();
	void yyerror(char *);
%}

%token Id
%token Plus
%token Sub
%token Div
%token Mul

%left Sub,Plus
%left Mul,Div

%%

P : P E '\n'{ printf("Answer : %d\n", $2); }
	|
	; 

E : E Plus E { $$ = $1 + $3; }
	| E Sub E { $$ = $1 - $3; }
	| E Div E { $$ = $1 / $3; }
	| E Mul E { $$ = $1 * $3; }
	| Id { $$ = $1; }
	;
	

%%
int main(){

	yyparse();
	return 0;

}
void yyerror(char *c){

	fprintf(stderr, "Error: %s", c);

}
