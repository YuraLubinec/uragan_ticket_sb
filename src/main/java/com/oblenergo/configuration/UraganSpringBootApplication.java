package com.oblenergo.configuration;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.autoconfigure.security.SecurityAutoConfiguration;

@SpringBootApplication(exclude = { SecurityAutoConfiguration.class,
    HibernateJpaAutoConfiguration.class }, scanBasePackages = "com.oblenergo")
public class UraganSpringBootApplication {

  public static void main(String[] args) {
    SpringApplication.run(UraganSpringBootApplication.class, args);
  }

}
