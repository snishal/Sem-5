%{
	#include "y.tab.h"
	int yylval;
%}

%%

"aaaaaaaaaa" { yylval = atoi(yytext); return Id; }
"a" { return *yytext; }
"b" { return *yytext; }
"\n" { return *yytext; }

%%

int yywrap(){
	return 1;
}

