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
%token%token <num> number
%token <id> identifier
%type <num> line exp term
%type <id> assigment


%%


%%
