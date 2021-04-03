FROM tomcat:9.0
LABEL maintainer=”nikolay.maslianikov@gmail.com”
RUN apt update && apt install maven -y
WORKDIR tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello && mvn package
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD [“catalina.sh”, “run”]
