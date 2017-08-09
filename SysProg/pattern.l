%{
%}

%%

"abcd" { printf("%s\n", yytext); REJECT;}
"abc" { printf("%s\n", yytext); REJECT;}
"ab" { printf("%s\n", yytext); REJECT;}
"a" { printf("%s\n", yytext);}
. { }

%%

int main(){

	yyin = fopen("input.txt", "r");
	yylex();
	return 0;

}

int yywrap(){
	return 1;
}
