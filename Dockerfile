FROM            node   
COPY            node_modules/ node_modules/
COPY            server.js  .
COPY            package.json  .
RUN             mkdir -p /home/roboshop/global-bundle.pem
COPY            global-bundle.pem    /home/roboshop/global-bundle.pem
ENTRYPOINT      [ "node" , "server.js" ]