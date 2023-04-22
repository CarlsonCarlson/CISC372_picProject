pthread_image: pthread_image.c image.h
	gcc -g pthread_image.c -o pthread_image -lm -lpthread
open_mp_image:open_mp_image.c image.h
	gcc -g -fopenmp open_mp_image.c -o open_mp_image -lm
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image open_mp_image pthread_image my_pthread_image a.out output.png