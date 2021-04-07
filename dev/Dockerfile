FROM ubuntu:20.04
ENV TZ=Europe/Kiev
ENV EXPORTDIR=/tmp/webapps
RUN ln -snf /usr/share/zoneinfo/$TZ etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install maven git -y
WORKDIR tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
RUN mkdir $EXPORTDIR && cp target/hello-1.0.war $EXPORTDIR/


