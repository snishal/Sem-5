%{
	char stack[100];
	int tos = -1;
	int valid = 1;
	int brace_count = 0;
%}

%%

"(" { 
		brace_count++;
		if(tos != -1){
				if( stack[tos] == '+' || stack[tos] == '-' || stack[tos] == '*' || stack[tos] == '/'  || stack[tos] == '(' ){
					stack[++tos] = *yytext;
				}else{
					printf("cinvalid\n");
					exit(0);
				}
		}
		else{
			stack[++tos] = *yytext;
		}
	}
[a-zA-Z]  {
						valid = 1;
						if(tos != -1){
							if( (65<=stack[tos] && stack[tos]<=90) || (97<=stack[tos] && stack[tos]<=122)){
								printf("cinvalid\n");
								exit(0);
							}else{
								stack[++tos] = *yytext;
							}
						}
						else{
							stack[++tos] = *yytext;
						}
				}
[+-/*] {
						valid = 0;
						if(tos != -1){
							if( (65<=stack[tos] && stack[tos]<=90) || (97<=stack[tos] && stack[tos]<=122)){
								stack[++tos] = *yytext;
							}else{
								printf("oinvalid\n");
								exit(0);
							}
						}
						else{
							stack[++tos] = *yytext;
						}
				}
")" { while( tos!=-1 ){ stack[tos] = ""; tos--;} brace_count--;}
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

