%{
 void yyerror(char *s);
 int yylex();
 #include <stdio.h>
 #include <stdlib.h>
 #include <ctype.h>
 int symbols[52];
 int symbolVal(char symbol);
 void updateSymbolVal(char symbol, int val);
%}

%union {int num,char id}
%start line 
%token DOGRULUK
%token AC_PARANTEZ
%token KAPA_PARANTEZ
%token ISE
%token NOKTA
%token EGER
%token YADA
%token YOKSA
%token DIPNOT
%token DIP
%token NOT
%token ESITTIR
%token VEYA
%token DEGIL
%token DEMEK
%token ANCAKVEANCAK
%token VE
%token KUCUKESIT
%token KUCUK
%token BUYUKESIT
%token BUYUK
%token ESIT
%token YAZDIR
%token OKUT
%token SURDUR
%token ARTI
%token EKSI
%token BOLU
%token CARPI
%token KALAN
%token FORMUL
%token TANIM
%token <var> SAYI DEGISKEN SOZCUK
%token <id> identifier


%%
type : string | integer;
statement : labeled statement | if elseif else statement | while statement;
constatn : integer;
constant expression : expression;
expression : assignment expression | relational expression;
relational expression : expression + [== | < | <= | > | >= | <=> | 0>] + expression;
assignment expression : conditional expression | assignment;
assignment : left hand side | assignment operator | assignment expression;
conditional expression : EGER + expression + ISE + statement + YADA + expression + ISE + statement + YOKSA + statement + .;

assignment operator : ESITTIR;
sign : + | -;
math operator : + | - | / | * | % | ARTI | EKSI | BOLU | CARPI | KALAN;
boolean literal : KESIN | DOGRU | OLABILIR | YANLIS | IMKANSIZ;
digit : 0|1|2|3|4|5|6|7|8|9;
integer: digit| integerdigit;
string literal : ;
string character : string character | string character string character| string character digits;
string character : input character except escape character | escape character;
escape character : \;
singleline commnet operator : DIPNOT;
multiline comment : DIP + comment + NOT;
%%

