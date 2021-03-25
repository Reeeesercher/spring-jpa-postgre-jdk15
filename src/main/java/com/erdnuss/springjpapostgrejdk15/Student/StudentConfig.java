package com.erdnuss.springjpapostgrejdk15.Student;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDate;
import java.time.Month;
import java.util.List;

@Configuration
public class StudentConfig {

    @Bean
    CommandLineRunner commandLineRunner(StudentRepository studentRepository){
        return args -> {
            Student mariam = new Student(
                    "Mariam",
                    "mariam.jamal@gmail.com",
                    LocalDate.of(2000, Month.JANUARY, 5)
            );
            Student alex = new Student(
                    "alex",
                    "alex@gmail.com",
                    LocalDate.of(2004, Month.JANUARY, 5)
            );

            studentRepository.saveAll(
                    List.of(
                            mariam,
                            alex
                    )
            );
        };
    }
}
