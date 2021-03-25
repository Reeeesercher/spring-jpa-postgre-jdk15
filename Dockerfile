FROM openjdk:15
ADD ./target/spring-jpa-postgre-jdk15-0.0.1-SNAPSHOT.jar ms.jar
ENV server.port = 8080 \
    spring.datasource.url = "jdbc:postgresql://localhost:5432/student" \
    spring.datasource.username = "" \
    spring.datasource.password = ""

EXPOSE server.port

RUN echo pwd
ENTRYPOINT ["java", "-jar", "ms.jar"]


