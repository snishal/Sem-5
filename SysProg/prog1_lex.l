%{
	#include "y.tab.h"
	int yylval;
%}

%%

[0-9] { yylval = atoi(yytext); return Id; }
[+] { return Plus; }
[\-] { return Sub; }
[*] { return Mul; }
[/] { return Div; }
"\n" { return *yytext; }

%%

int yywrap(){
	return 1;
}

