SIL-Compiler
============

Part of Compiler Design Lab

Compiling
=========
lex SIL.l 

yacc -d SIL.y 

yacc -v SIL.y #This make a y.output file and helps to avoid Shift Reduce Conflicts

gcc y.tab.c lex.yy.c

./a.out < test.txt
