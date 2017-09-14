%{
	#include<stdio.h>
	int yylex();
	void yyerror(char *);
%}

%%

P : P E '\n'{ printf("Valid\n"); }
	|
	; 

E :  'a' X 'b'
	;
	
X : 'a'X'b'
	| 
	;
	
%%
int main(){

	yyparse();
	return 0;

}
void yyerror(char *c){

	fprintf(stderr, "Error: %s", c);

}
