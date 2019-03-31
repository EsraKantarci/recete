# Recete Lang
Lex and Lexical Analysis for our language called "Recete" which means "presciption" or "recipe" in Turkish. 

This is initially done for Programming Language homework in Akdeniz University Computer Science Engineering program. Yacc file will be added as a next project.

Our language is designed as Turkish language syntax of the algorithms in CAPSLOCK form. Our language is mainly under effect of Java language syntax.
For example in Java:

if (a==2 && x == 3 ){b=4;}
elseif (a==3){ b=5;}
else { b=6; }

while (x==3){
      a=2;}
      
in Recete:

EGER ( a ESIT 2 VE x ESIT 3 ) ISE b ESITTIR 4.
YADA (a ESIT 3 ) ISE b ESITTIR 5.
YOKSA ISE b ESITTIR 6.


SURDUR (x ESIT 3) ISE
      a ESITTIR 2.

As one can see, { equals "ISE" and } equals "." in our language. 

Unfortunately, since there is no yacc file, we cannot initialize the lexical analyis as a file. However, you can view them in recete.l file. 

As an extra to the homework requirements, we added math operators, functions, methods (as "FORMUL") and classes (as "TANIM"). If it is a complex structure, we may postpone their implementation in our next project and focus on the initial requirements. 

If there is anything you want to contribute or comment, please help us to improve our code. Your feedbacks are important.
Thank you,
Esra Kantarcı & Alperen Keser
