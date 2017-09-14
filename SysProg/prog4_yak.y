%{
	#include<stdio.h>
	int yylex();
	void yyerror(char *);
%}

%token Id

%%

P : P E '\n'{ printf("Valid\n"); }
	|
	; 

E :  Id 'b'
	;
	
%%
int main(){

	yyparse();
	return 0;

}
void yyerror(char *c){

	fprintf(stderr, "Error: %s", c);

}
