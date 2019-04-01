lex:
	lex recete.l
	gcc -o recete lex.yy.c -ll

clean:
	rm recete
	rm lex.yy.c
