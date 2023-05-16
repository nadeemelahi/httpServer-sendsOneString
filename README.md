# A basic http server <br>
It just sends a single text string of html <br>
It is based on the code at <a href="https://beej.js/guide/bgnet/html/split/client-server-background.html#a-simple-stream-server">guide/bgnet/html/split/client-server-background.html#a-simple-stream-server</a> using the <a href="https://beej.us/guide/bgnet/examples/server.c">server.c code</a> example. <br>
The <a href="https://beej.us/guide/bgnet/examples/server.c">server.c code</a> example is for a basic tcp/ip server. All that same code is found in this project's tcp folder. <br>
This repo includes a basic programming for adding the http protocol. The http programmng is in the http folder. It write the http header and sends a string of html.<br>
Next I may write a route handler and file serving with mime types in the near future.
