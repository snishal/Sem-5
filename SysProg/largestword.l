%{
	int length = 0;
	char *word;
%}

%%

[a-zA-Z]+ { if(yyleng > length){length = yyleng; word = yytext; printf("word: %s \n",yytext);}}
[^a-zA-Z] { }

%%

int main(){

	yyin = fopen("input.txt", "r");
	yylex();
	printf("Length : %d \nLargest Word : %s", length, word);
	return 0;

}

int yywrap(){
	return 1;
}
