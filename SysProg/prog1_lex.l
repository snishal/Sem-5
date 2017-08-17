%{
	#include 'y.tab.h'
	int yylval;
%}

%%

[0-9] { yyval = atoi(*yytext); return 'Id'; }
'+' { return 'Plus'; }
'-' { return 'Sub'; }
'*' { return 'Mul'; }
'/' { return 'Div'; }

%%

int yywarp(){
	return 1;
}

