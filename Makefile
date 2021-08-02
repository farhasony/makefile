#method 1
#final:
#	gcc main.c add.c hello.c -o final

#method 2
$(CC) = gcc
#final: main.o add.o hello.o
#	$(CC) main.o add.o hello.o -o final
#main.o: main.c 
#	$(CC) -c main.c
#hello.o: hello.c header.h
#	$(CC) -c hello.c
#add.o: add.c header.h
#	$(CC) -c add.c	
#Clean:
#	rm *.o final
#method 3
final: main.o add.o hello.o
	$(CC) -o $@ $^ 
#.c:.o 
.c: header.h
	$(CC) -c $<
