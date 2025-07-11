CC = gcc
CFLAGS = -Wall -Wextra
FLAGS = -lpthread -lmpv

all:
	$(CC) $(CFLAGS) -o client.out client/*.c miscellaneous/*.c $(FLAGS)
	$(CC) $(CFLAGS) -o ss.out storage_server/*.c miscellaneous/*.c $(FLAGS)
	$(CC) $(CFLAGS) -o ns.out naming_server/*.c miscellaneous/*.c $(FLAGS)
	
clean:
	rm *.out *.log
