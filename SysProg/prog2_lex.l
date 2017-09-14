%{
	#include "y.tab.h"
	int yylval;
%}

%%

[a-z] { yylval = *yytext; return Id; }
[+] { return Plus; }
[\-] { return Sub; }
[*] { return Mul; }
[/] { return Div; }
"\n"|[()] { return *yytext; }

%%

int yywrap(){
	return 1;
}

