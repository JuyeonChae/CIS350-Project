/**  a very fundamental code for http://localhost:3000 **/
// use the built-in http module
// require() is used to load and cache js modules
// used when loading a local, relative js module into a Node.js app
const http = require('http');

// createServer is a method
const server = http.createServer(function(req, res) {
    res.writeHead(200, {"Content-type" : "text/plain"});
    res.end("I made a server and this is it!!!!!! ;)\n");
});

server.listen(3000, function() {
    console.log('server is so hard to make');
});

// and type "node server" on terminal

const { MongoClient, ServerApiVersion } = require('mongodb');
const uri = "mongodb+srv://jchae1126:<password>@cis350project.7liavoi.mongodb.net/?retryWrites=true&w=majority";
const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true, serverApi: ServerApiVersion.v1 });
client.connect(err => {
  const collection = client.db("test").collection("devices");
  // perform actions on the collection object
  client.close();
});