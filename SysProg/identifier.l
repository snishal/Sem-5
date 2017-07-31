%{
	int identifier_count = 0;
%}

%%

"float" {}
"int" {}
"return" {}
"main" {}
"printf" {}
"return" {}
[\t\n ]+[_a-zA-Z][_a-zA-Z0-9]*/[ \t\n]*[=,;]+ {printf("%s\t",yytext);identifier_count++;}
.|"\n" {}

%%

int main(){

	yyin = fopen("input.txt", "r");
	yylex();
	printf("Identifier Count : %d",identifier_count);
	return 0;

}

int yywrap(){
	return 1;
}
