%{
	#include "y.tab.h"
	int yylval;
%}

%%

[a]{10,} { yylval = atoi(yytext); return Id; }
"b" { return *yytext; }
"\n" { return *yytext; }

%%

int yywrap(){
	return 1;
}

