/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2011 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     DECL = 258,
     ENDDECL = 259,
     THEBEGIN = 260,
     END = 261,
     IF = 262,
     ELSE = 263,
     DO = 264,
     ENDIF = 265,
     WHILE = 266,
     ENDWHILE = 267,
     RETURN = 268,
     READ = 269,
     THEN = 270,
     WRITE = 271,
     INTEGER = 272,
     BOOL = 273,
     MAIN = 274,
     Assignment_OP = 275,
     SemiColon = 276,
     Comma_Operator = 277,
     Right_Square_Bracket = 278,
     Left_Square_Bracket = 279,
     Right_Curly_BRACKET = 280,
     Left_Curly_BRACKET = 281,
     Open_BRACKET = 282,
     Close_BRACKET = 283,
     PLUS = 284,
     MINUS = 285,
     MULTIPLY = 286,
     DIVIDE = 287,
     MODE = 288,
     LESSTHAN = 289,
     LESSTHANEQ = 290,
     NOT = 291,
     GREATERTHAN = 292,
     GREATERTHANEQ = 293,
     EQUAL = 294,
     NOTEQUAL = 295,
     ID = 296,
     Pointer_ID = 297,
     Integer_Constant = 298
   };
#endif
/* Tokens.  */
#define DECL 258
#define ENDDECL 259
#define THEBEGIN 260
#define END 261
#define IF 262
#define ELSE 263
#define DO 264
#define ENDIF 265
#define WHILE 266
#define ENDWHILE 267
#define RETURN 268
#define READ 269
#define THEN 270
#define WRITE 271
#define INTEGER 272
#define BOOL 273
#define MAIN 274
#define Assignment_OP 275
#define SemiColon 276
#define Comma_Operator 277
#define Right_Square_Bracket 278
#define Left_Square_Bracket 279
#define Right_Curly_BRACKET 280
#define Left_Curly_BRACKET 281
#define Open_BRACKET 282
#define Close_BRACKET 283
#define PLUS 284
#define MINUS 285
#define MULTIPLY 286
#define DIVIDE 287
#define MODE 288
#define LESSTHAN 289
#define LESSTHANEQ 290
#define NOT 291
#define GREATERTHAN 292
#define GREATERTHANEQ 293
#define EQUAL 294
#define NOTEQUAL 295
#define ID 296
#define Pointer_ID 297
#define Integer_Constant 298




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


