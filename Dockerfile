FROM            node   
COPY            node_modules/ node_modules/
COPY            server.js  .
COPY            package.json  .
RUN             mkdir -p /home/roboshop/
COPY            global-bundle.pem    /home/roboshop/global-bundle.pem
ENTRYPOINT      [ "node" , "server.js" ]