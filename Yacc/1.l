%{
    #include "y.tab.h"
%}

%%
[0-9]+                  {return NUM;}//works only for positive numbers
[a-zA-Z_][_a-zA-Z0-9]*  {return ID;}
\n			            {return NL;}
.			            {return yytext[0];}
%%

int yywrap()
{
	return 1;
}
