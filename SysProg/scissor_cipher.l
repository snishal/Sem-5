%{
%}

%%

[a-zA-Z] { 
			*yytext += 3;
			if(*yytext > 90 && *yytext < 97){
				*yytext = *yytext - 91 + 65; 
			}
			else if(*yytext > 122){
				*yytext = *yytext - 123 + 97;
			}
			printf("%s", yytext);}

%%

int main(){

	yyin = fopen("input.txt", "r");
	yylex();
	return 0;

}

int yywrap(){
	return 1;
}
