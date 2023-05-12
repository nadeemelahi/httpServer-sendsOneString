#include<stdio.h>
#include<stdlib.h> // exit()
#include<string.h>
#include<sys/socket.h> // recv()

void recvReq( int fd ){
	printf("recvReq()\n");

	// must read the request first
	// http request
	int reqSizeLim = 512;
	char reqBuf[reqSizeLim];

	memset(reqBuf, 0x00, reqSizeLim);

	int readByteCnt = recv(fd, reqBuf, reqSizeLim-1, 0);
	if(readByteCnt == -1){
		perror("recv");
		exit(1);
	}

	reqBuf[readByteCnt] = '\0';
	int len = strlen(reqBuf);
	printf("req recv() len: %d, : %s\n", len, reqBuf);


}
