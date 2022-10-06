const { MongoClient, ServerApiVersion } = require('mongodb');

async function main() {
  const uri = "mongodb+srv://jchae1126:<password>@cis350project.7liavoi.mongodb.net/?retryWrites=true&w=majority";
  const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true, serverApi: ServerApiVersion.v1 });

  // defines the code block to run (to try)
  try {
    // Connect to the MongoDB cluster
    client.connect(err => {
      const collection = client.db("test").collection("devices");
      // perform actions on the collection object
      client.close();
    });

    // lists the databases 
  await listDatabases(client);

  // catch the error when any error happens
  } catch (e) {
    // writes an error message
    console.error(e); 

    // defines a code block to run regardless of the result - optional
  } finally {
    await client.close();
  }
}

main().catch(console.error);