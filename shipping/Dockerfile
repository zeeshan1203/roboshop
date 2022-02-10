FROM        maven
RUN         mkdir /app
WORKDIR     /app
ADD         src src
ADD         pom.xml ./
RUN         mvn package
