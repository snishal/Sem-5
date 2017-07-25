%{
	int word_count = 0;
	int character_count = 0;
	int line_count = 0;
%}

%%

[^\n\t ]+ {word_count++, character_count += yyleng ;}
"\n" { line_count++; character_count++; }
[ \t] { character_count++; } 

%%

int main(){

	yyin = fopen("input.txt", "r");
	yylex();
	printf("Word Count : %d\n",word_count);
	printf("Character Count : %d\n",character_count);
	printf("Line Count : %d\n",line_count);
	return 0;

}

int yywrap(){
	return 1;
}
