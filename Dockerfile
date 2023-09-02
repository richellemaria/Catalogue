FROM            node   
COPY            node_modules/ node_modules/
COPY            server.js  .
COPY            package.json  .
RUN             mkdir -p /home/roboshop/global-bundle.pem
ADD             https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem  /home/roboshop/
ENTRYPOINT      [ "node" , "server.js" ]