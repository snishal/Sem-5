%{
	char stack[100];
	int tos = -1;
	int valid = 1;
	int brace_count = 0;
%}

%%

"(" { tos++; stack[tos] = *yytext; brace_count++;}
[a-zA-Z] { if((65<=stack[tos] && stack[tos]<=90) || (97<=stack[tos] && stack[tos]<=122)){ printf(yytext);printf("invalid\n"); exit(0); } else{ tos++; stack[tos] = *yytext; } }
[+-/\*] { if((65<=stack[tos] && stack[tos]<=90) || (97<=stack[tos] && stack[tos]<=122) || stack[tos] == '(' ){ tos++; stack[tos] = *yytext; } else{ printf("%d", stack[tos-1]); printf("invalid\n"); exit(0); } }
")" { stack[tos] = ' ';  tos--;  brace_count--;}
.|"\n" {}
%%

int main(){

	yyin = fopen("input.txt", "r");
	yylex();
	if(valid == 1 && brace_count == 0) printf("valid\n");
	else printf("invalid\n");
	return 0;
	
} 

int yywrap(){
	return 1;
}

