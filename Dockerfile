FROM openjdk:15
ADD ./target/spring-jpa-postgre-jdk15-0.0.1-SNAPSHOT.jar ms.jar

ARG SERVER_PORT=8080 \
    PG_URL="jdbc:postgresql://localhost" \
    PG_PORT=5432 \
    PG_DB=student

ENV spring.datasource.username = "" \
    spring.datasource.password = "" \
    server.port = $SERVER_PORT \
    spring.datasource.url= $PG_URL:$PG_PORT/$PG_DB

EXPOSE $SERVER_PORT

ENTRYPOINT ["java", "-jar", "ms.jar"]



