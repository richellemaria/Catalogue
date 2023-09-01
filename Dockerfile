FROM            node   
COPY            node_modules/ node_modules/
COPY            server.js  .
COPY            package.json  .
# We also need to download the .pem key file , so that this will has the auth info to connect to Docdb.
ENTRYPOINT      [ "node" , "server.js" ]