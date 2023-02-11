main: main.c shm.o xdg-shell.o xdg-shell.h libwayland-client.a libffi.a
	gcc -static -o main main.c shm.o xdg-shell.o libwayland-client.a libffi.a -lrt

shm.o: shm.h shm.c
	gcc -c shm.c

xdg-shell.o: xdg-shell.c
	gcc -c xdg-shell.c

.PHONY: clean
clean:
	rm -f *.o

