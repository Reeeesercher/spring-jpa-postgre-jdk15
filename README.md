# spring-jpa-postgre-jdk15
Connect to PG

ENV
spring.datasource.url=jdbc:postgresql://yourhost:yourport/student
spring.datasource.username=yourname  
spring.datasource.password=yourpass 
spring.jpa.hibernate.ddl-auto=create-drop 
spring.jpa.show-sql=true 
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect 
spring.jpa.properties.hibernate.format_sql=true 

server.error.include-message=always 


Docker hub erdnusskerne/spring-jpa-demo