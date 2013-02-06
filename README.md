SIL-Compiler
============

Part of Compiler Design Lab

Compiling
=========
lex SIL.l \n
yacc -d SIL.y \n
yacc -v SIL.y #This make a y.output file and helps to avoid Shift Reduce Conflicts \n
gcc y.tab.c lex.yy.c \n
./a.out < test.txt \n
