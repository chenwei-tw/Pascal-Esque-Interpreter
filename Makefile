node.o: node.c
	gcc -Wall -g -c -o $@ $<

list.o: list.c
	gcc -Wall -g -c -o $@ $<

symtable.o: symtable.c
	gcc -Wall -g -c -o $@ $<

lexer.o: lexer.c
	gcc -Wall -g -c -o $@ $<

parser.o: parser.c
	gcc -Wall -g -c -o $@ $<

interpreter.o: interpreter.c
	gcc -Wall -g -c -o $@ $<

main: main.c node.o lexer.o parser.o interpreter.o list.o symtable.o
	gcc -Wall -g -o $@ $^

clean:
	rm *.o main
