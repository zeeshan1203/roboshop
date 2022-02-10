FROM        node
RUN         mkdir /app
RUN         useradd roboshop
RUN         chown roboshop:roboshop /app
WORKDIR     /app
COPY        server.js .
COPY        package.json .
RUN         npm install
CMD         ["node", "server.js"]
