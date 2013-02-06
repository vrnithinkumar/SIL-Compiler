
%{
#include <stdio.h>
#include "y.tab.h"
%}


id [a-zA-Z][a-zA-Z0-9_]*
pointer [&][a-zA-Z][a-zA-Z0-9_]*
Logop (<|>|<=|>=|==|!=)
Ariop (\+|\%|\-|\*|\/) 
cmnt [\/][\/][ a-zA-Z0-9_.]*
digits [0-9]+
whitespace [ \t]+
newlines [\n][\n]*

%%

"decl"         {return DECL ;}
"enddecl"      {return ENDDECL ;}
"begin"        {return THEBEGIN ;}
"end"          {return END ;}
"if"           {return IF ;}
"then"		   {return THEN;}
"else"         {return ELSE ;}
"do"           {return DO;}
"endif"        {return ENDIF ;}
"while"        {return WHILE ;}
"endwhile"     {return ENDWHILE ;}
"return"       {return RETURN ;}
"read"         {return READ ;}
"write"        {return WRITE ;}
"integer"      {return INTEGER ;}
"boolean"      {return BOOL ;}
"main"         {return MAIN ;}
"AND" 		   {return L_AND;}
"OR"		   {return L_OR;}
"NOT" 	       {return L_NOT;}

"="					{return Assignment_OP;}        		
";"  				{return SemiColon ;}
"," 				{return Comma_Operator ;}
"[" 				{return Right_Square_Bracket ;}
"]" 				{return Left_Square_Bracket ;}
"{"					{return Right_Curly_BRACKET ;}				
"}"					{return Left_Curly_BRACKET ;}
"("					{return Open_BRACKET ;}
")"					{return Close_BRACKET ;}
"!"					{return NOT ;}

"+"					{return PLUS;}				
"-"					{return MINUS;}				
"*"					{return MULTIPLY;}				
"/"					{return DIVIDE;}								
"<"					{return LESSTHAN;}				
"<="				{return LESSTHANEQ;}					
">" 				{return GREATERTHAN;}
">="				{return GREATERTHANEQ;}					
"=="				{return EQUAL;}					
"!="				{return NOTEQUAL;}					

{id}   {return ID ;}
{pointer} {return Pointer_ID;}
{digits} {return Integer_Constant;}
{whitespace} {}
{newlines}		{}

%%

int yywrap(void) {
	return 1;
}