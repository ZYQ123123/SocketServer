/*
 ============================================================================
 Name        : wifi_video.c
 Author      : Feng
 Version     :
 Copyright   : Your copyright notice
 Description : Stream local video to a TCP socket, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int video_main(int);
extern int socket_main(void);

int main(void) {
	int socketId = socket_main();
	video_main(socketId);
	puts("!!!Hello World!!!"); /* prints !!!Hello World!!! */
	return EXIT_SUCCESS;
}
