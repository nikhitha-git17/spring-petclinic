FROM maven:3.9.11-eclipse-temurin-17 AS build
RUN git clone https://github.com/nikhitha-git17/spring-petclinic.git && \
    cd spring-petclinic && \
    mvn package




FROM eclipse-temurin:17-jre-alpine AS run 
RUN adduser -D -h /usr/share/demo -s/bin/sh nikhitha
USER nikhitha
WORKDIR /usr/share/demo
COPY --from=build /spring-petclinic/target/*.jar app.jar
EXPOSE 8080/tcp
CMD ["java","-jar"."app.jar"]
#hii
#hello iam
# iuabXBaib knxh 