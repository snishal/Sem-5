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

E :  Y X 'b'
	;
	
Y : Id Y
	| Id
	;
		
X : 'a' X
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
