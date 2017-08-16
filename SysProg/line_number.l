%{ 
	int line = 0;
%}

%%

.*"\n" { ++line; fprintf(yyout,"%d. ",line); fprintf(yyout,"%s",yytext);  }

%%

int main(){
	yyin = fopen("input.txt", "r");
	yyout = fopen("output.txt", "w");
	yylex();
	return 0;
}

int yywrap(){
	return 1;
}
