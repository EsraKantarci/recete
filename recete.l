%{
  #include <stdio.h>
  #include <stdlib.h>
  #include <assert.h>
  #include <string.h>
  #include <regex.h>
  #include <errno.h>
  int yydebug = 0;
  FILE* result;
  extern FILE* yyin;
  extern int errno;
%}

/* Booleans with truth levels, kesin:100, dogru:75, olabilir:50, yanlis:25, imkansiz:0 */
DOGRULUK		("KESIN"|"DOGRU"|"BELIRSIZ"|"YANLIS"|"IMKANSIZ")

/* brackets for parameters	*/
AC_PARANTEZ		(\()
KAPA_PARANTEZ		(\))

/* "ise" is for { and "." is for }	*/
ISE			ISE
NOKTA			NOKTA

/* conditional statements	*/
EGER			EGER
YADA			YADA
YOKSA			YOKSA

/* for multiple lines, you will use DIP and NOT, for a single line it is DIPNOT	*/
DIPNOT		DIPNOT
DIP		DIP
NOT		NOT

/* Assigning and initialization of the values */
ESITTIR			ESITTIR

/* Logical operators */

ANCAKVEANCAK	(ANCAKVEANCAK|<=>)
VE			(VE|\&&)
VEYA			(VEYA|\|)
DEGIL			(DEGIL|\^)
DEMEK			(DEMEK|\=>)
KUCUKESIT		(KUCUKESIT|\<=)
KUCUKTUR		(KUCUK|\<)
BUYUKESIT		(BUYUKESIT|\>=)
BUYUKTUR		(BUYUK|\>)
ESIT			(ESIT|\==)

/* Print and scan functions for IO */
YAZDIR			YAZDIR
OKUT			OKUT		

/* While loop */
SURDUR			SURDUR	

/* Operators */
ARTI			(ARTI|\+)			
EKSI			(EKSI|\-)
BOLU			(BOLU|\/)
CARPI			(CARPI|\*)
KALAN			(KALAN|\%)

/* Functions and classes, TANIM equals class, FORMUL equals functions */
FORMUL			FORMUL
TANIM			TANIM


/* Variables and constants	*/
SOZCUK			[a-zA-Z]+
SAYI			[0-9]+
DEGISKEN		[a-zA-Z][a-zA-Z]*[0-9]*


%%

{DOGRULUK}							printf("DOGRULUK IBARESI ");
SOZCUK								printf("SOZCUK ");
SAYI								printf("SAYI ");
DEGISKEN							printf("DEGISKEN ");
{AC_PARANTEZ}							printf("AC PARANTEZ ");
{KAPA_PARANTEZ}							printf("KAPA PARANTEZ ");
{ISE}								printf("ISE \n");
{NOKTA}								printf(". \n");
{EGER}								printf("EGER ");
{YADA}								printf("YA DA ");
{YOKSA}								printf("YOKSA ");
{DIPNOT}							printf("YORUM: ");
{DIP}								printf("YORUM BASI ");
{NOT}								printf("YORUM SONU	");
{ESITTIR}							printf("ESITTIR	");
{VEYA}								printf("VEYA ");
{DEGIL}								printf("DEGIL ");
{DEMEK}								printf("DEMEK ");
{ANCAKVEANCAK}							printf("ANCAKVEANCAK ");
{VE}								printf("VE ");
{KUCUKESIT}							printf("KUCUKESIT	");
{KUCUKTUR}							printf("KUCUKTUR	");
{BUYUKESIT}							printf("BUYUKESIT	");
{BUYUKTUR}							printf("BUYUKTUR	");
{ESIT}								printf("ESIT ");
{YAZDIR}							printf("ŞUNU YAZDIR: ");
{OKUT}								printf("ŞUNU OKU: ");
{SURDUR}							printf("SURDUR: ");
{ARTI}								printf("ARTI ");
{EKSI}								printf("EKSI ");
{BOLU}								printf("BOLU ");
{CARPI}								printf("CARPI ");
{KALAN}								printf("KALAN ");
{FORMUL}							printf("FORMULU ");
{TANIM}								printf("TANIMI ");
[ \t\n]  							;
";"								printf("SON \n");
.								printf("ANLASILMAYAN KARAKTER ");
%%

int yywrap(void)
{
	return 1;
}
