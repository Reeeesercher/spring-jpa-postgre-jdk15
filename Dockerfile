FROM openjdk:15
ADD ./target/spring-jpa-postgre-jdk15-0.0.1-SNAPSHOT.jar ms.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "ms.jar"]





