#serverV01() 
serverV01: main.c \
	tcp/configureHints/configureHints.o \
	tcp/gai/gai.o \
	tcp/getSocketFD/getSocketFD.o \
	tcp/registerSigHandler/registerSigHandler.o \
	tcp/listenLoop/listenLoop.o \
	http/handleClient/handleClient.o \
	http/recvReq/recvReq.o \
	http/writeRespTextHtml/writeRespTextHtml.o 
	gcc -Wall -Wextra -o serverV01 \
		main.c \
		tcp/configureHints/configureHints.o \
		tcp/gai/gai.o \
		tcp/getSocketFD/getSocketFD.o \
		tcp/registerSigHandler/registerSigHandler.o \
		tcp/listenLoop/listenLoop.o \
		http/handleClient/handleClient.o \
		http/recvReq/recvReq.o \
		http/writeRespTextHtml/writeRespTextHtml.o

#configureHints()
configureHints.o: tcp/configureHints/configureHints.c
	cd tcp/configureHints && gcc -Wall -Wextra -c configureHints.c

#gai()
gai.o: tcp/gai/gai.c
	cd tcp/gai && gcc -Wall -Wextra -c gai.c

#getSocketFD()
getSocketFD.o: tcp/getSocketFD/getSocketFD.c
	cd tcp/getSocketFD && gcc -Wall -Wextra -c getSocketFD.c

#registerSigHandler()
registerSigHandler.o: tcp/registerSigHandler/registerSigHandler.c
	cd tcp/registerSigHandler && gcc -Wall -Wextra -c registerSigHandler.c

#listenLoop()
listenLoop.o: tcp/listenLoop/listenLoop.c
	cd tcp/listenLoop && gcc -Wall -Wextra -c listenLoop.c

#handleClient()
handleClient.o: http/handleClient/handleClient.c
	cd http/handleClient && gcc 

#recvReq()
recvReq.o: http/recvReq/recvReq.c
	cd http/recvReq && gcc -Wall -We

#writeRespTextHtml()
writeRespTextHtml.o: http/writeRespTextHtml/writeRespTextHtml.c
	cd http/writeRespTextHtml && gcc -Wall -Wextra -c writeRespTextHtml.c

clean: 
	rm serverV01 \
		tcp/configureHints/configureHints.o \
		tcp/gai/gai.o \
		tcp/getSocketFD/getSocketFD.o \
		tcp/registerSigHandler/registerSigHandler.o \
		tcp/listenLoop/listenLoop.o \
		http/handleClient/handleClient.o \
		http/recvReq/recvReq.o \
		http/writeRespTextHtml/writeRespTextHtml.o
