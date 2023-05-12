#include<stdio.h>
#include<string.h>
#include<sys/socket.h> // send()

void writeRespTextHtml( int fd ){
	printf("writeRespTextHtml()\n");
	


	char html[1024] =
		"<!DOCTYPE html>\n"
		"<html>\n"
		"<head>\n"
		"   <title>basic http web service</title>\n"
		"</head>\n"
		"<body>\n"
		"   <h1>hello World - web server</h1>\n"
		"</body>\n"
		"</html>\n";

	int len = strlen(html); // not including header
	// for Content-length: 
	printf("len html[] = %d\n", len);

	char header[256];
	sprintf(header, "HTTP/1.1 200 OK\r\nContent-Length: %d\r\nContent-Type: text/html; charset=UTF-8\r\n\r\n", 
			len );

	char resp[1280]; // 1024 + 256
	sprintf(resp, "%s%s", 
			header,
			html );
	
	len = strlen(resp); // including header
	// for len passed to send()

	int ret = send(fd, resp, (size_t)len, 0);

	if(ret == -1) perror("perror send: ");	
}
