%{
	int length = 0;
	char *word;
%}

%%

[a-zA-Z]+ { if(yyleng > length){length = yyleng; word = yytext; }}
[^a-zA-Z] { }

%%

int main(){

	yyin = fopen("input.txt", "r");
	yylex();
	printf("Length : %d \nWord : ", length);
	for(int i=0; i < length; i++){
		char c = *word;
		printf("%c", c);
		word = word + 1;
	}
	printf("\n");
	return 0;

}

int yywrap(){
	return 1;
}
