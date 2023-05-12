#include<stdio.h>

void recvReq( int fd );
void writeRespTextHtml( int fd );

void handleClient( int fd ){
	printf("handleClient()\n");

	recvReq( fd );

	writeRespTextHtml( fd );


}
