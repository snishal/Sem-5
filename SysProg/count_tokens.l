%{

	int identifiers = 0, keywords = 0, comments = 0, integers = 0, floats = 0, operators = 0;

%}

%%

"int"|"main"|"float"|"double"|"char"|"printf"|"if"|"return" { keywords++; }
"="|"+"|"-"|"*"|"/"|"%"|"=="|"<"|"<="|">"|">="|"!="|"++"|"--"|"+="|"-="|"*="|"/="|"&&"|"||"|"&"|"|" { operators++; }
[0-9]+\.[0-9]+ { floats++; }
[0-9]+ { integers++; }
"//".* { comments++;  }
"/*"[^("*/")]*"*/" { comments++; }
\"[_a-zA-Z0-9]*\" { }
[_a-zA-Z][_a-zA-Z0-9]* { printf("%s\n",yytext); identifiers++; }
.|"\n" {}

%%

int main(){

	yyin = fopen("input.txt", "r");
	yylex();
	printf("\nIdentifiers Count : %d", identifiers);
	printf("\nKeywords Count : %d", keywords);
	printf("\nComments Count : %d", comments);
	printf("\nIntegers Count : %d", integers);
	printf("\nFloats Count : %d", floats);
	printf("\nOperators Count : %d", operators);
	
	return 0;

}

int yywrap(){
	return 1;
}
