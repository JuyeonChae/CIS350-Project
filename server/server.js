/**  a very fundamental code for http://localhost:3000 **/
// use the built-in http module
// require() is used to load and cache js modules
// used when loading a local, relative js module into a Node.js app
var http = require('http');

// createServer is a method
var server = http.createServer(function(req, res) {
    res.writeHead(200, {"Content-type" : "text/plain"});
    res.end("Hello world\n");
});

server.listen(3000, '0.0.0.0', function() {
    console.log('server is running at 3000')
});
// and type "node server" on terminal