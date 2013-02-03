 /* Simple Integer Language */

%{
	#include <stdlib.h>
	#include <stdio.h>
	int yylex(void);
	void yyerror(char *);
%}

 %token DECL ENDDECL THEBEGIN END IF ELSE DO ENDIF WHILE ENDWHILE RETURN READ THEN
 %token WRITE INTEGER BOOL MAIN Assignment_OP SemiColon
 %token Comma_Operator Right_Square_Bracket Left_Square_Bracket 
 %token Right_Curly_BRACKET Left_Curly_BRACKET Open_BRACKET Close_BRACKET PLUS
 %token MINUS MULTIPLY DIVIDE MODE LESSTHAN LESSTHANEQ NOT
 %token GREATERTHAN GREATERTHANEQ EQUAL NOTEQUAL ID Pointer_ID Integer_Constant

%%


Start : Global_Declaration Function_Definitions{printf("Syntax is correct\n");}
		;


Global_Declaration : 
					DECL Variable_Declaration ENDDECL {printf("Cool");}
					;

Variable_Declaration :  Variable_Declaration Data_Type Array_Variable_Function SemiColon 
						|Data_Type Array_Variable_Function SemiColon {printf("Cool");}
						;

Data_Type : INTEGER {printf("Cool\n");}
			| BOOL
			;

Array_Variable_Function: Array_Variable_Function Comma_Operator Array 
				| Array_Variable_Function Comma_Operator ID
				| Array_Variable_Function Comma_Operator Function
				| Array
				| ID
				| Function
				; 

Array: ID Right_Square_Bracket Integer_Constant Left_Square_Bracket ;

Function : ID Open_BRACKET ParaMeters Close_BRACKET {printf("Function \n");}
			;

ParaMeters: ParaMeters SemiColon Data_Type Parameter_Ids_Pointer
			|Data_Type Parameter_Ids_Pointer
			;

Parameter_Ids_Pointer: Parameter_Ids_Pointer Comma_Operator ID
						| Parameter_Ids_Pointer Comma_Operator Pointer_ID 
						| ID
						| Pointer_ID
						;


Function_Definitions: Function_Definitions Function_Head Inside_function {printf("Fun\n");}
						|Function_Head Inside_function {printf("Fun\n");}
						;
Inside_function : 
					Right_Curly_BRACKET Local_Declarations Function_Body Left_Curly_BRACKET {printf("Fun inside\n");}
					|Right_Curly_BRACKET Function_Body Left_Curly_BRACKET {printf("Func inside no local\n");}
					;	

Function_Head : Data_Type Function {printf("Function Head \n");};


Local_Declarations: DECL Function_Variable_Declaration ENDDECL {printf("Local_Declarations \n");}
					;


Function_Variable_Declaration: Function_Variable_Declaration  Data_Type Local_Variable SemiColon
								|  Data_Type Local_Variable SemiColon
								;

Local_Variable : Local_Variable Comma_Operator ID {printf("kure local variable \n");};
				|ID {printf("local variable \n");};
				;

Statements: Statements Stmnt
			|Stmnt {printf("Stmnt \n");};
			;

Function_Body : THEBEGIN Statements END
				;


Stmnt:  ID Assignment_OP Expressions SemiColon  {printf(" Assignment \n");}
		| IF Expressions THEN Statements ELSE Statements ENDIF SemiColon {printf("IF Else\n");} 
		| IF Expressions THEN Statements ENDIF SemiColon {printf(" IF \n");}
		| WHILE Expressions DO Statements ENDWHILE SemiColon
		| RETURN Expressions SemiColon
		| READ Open_BRACKET Elements Close_BRACKET SemiColon
		| WRITE Open_BRACKET Expressions Close_BRACKET SemiColon
		 ;

Expressions: Expressions Ari_OP Expressions
			| Expressions Log_OP Expressions
			| Open_BRACKET Expressions Close_BRACKET {printf(" In bra \n");}
			|Elements
			;

Array_Value: ID Right_Square_Bracket Elements Left_Square_Bracket ;

Elements:  
		 Integer_Constant
		 | ID
		 | Array_Value
		 | Function_In_Use
		 ;

Function_In_Use:
				ID Open_BRACKET Expressions Close_BRACKET {printf("Function in use \n");}
				;		 

Ari_OP: 
		PLUS
		|MINUS
		|MULTIPLY {printf("Multiply \n");}
		|DIVIDE
		|MODE
		;

Log_OP:
		LESSTHAN
		|LESSTHANEQ
		|GREATERTHAN
		|GREATERTHANEQ
		|EQUAL
		|NOTEQUAL
		;

Main_Function: INTEGER MAIN Open_BRACKET Close_BRACKET Right_Curly_BRACKET Main_Body Left_Curly_BRACKET ;

Main_Body : Local_Declarations	Function_Body
			| Function_Body
			;



%%

void yyerror( char *s) 
{
	printf("\t%s\n" , s);
}

int main () 
{
	return yyparse();
	return 0;
}
