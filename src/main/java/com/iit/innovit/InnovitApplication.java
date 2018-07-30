package com.iit.innovit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class InnovitApplication {
	protected SpringApplicationBuilder configure(SpringApplicationBuilder springApplicationBuilder) {
        return springApplicationBuilder.sources(InnovitApplication.class);
    }
	public static void main(String[] args) {
		SpringApplication.run(InnovitApplication.class, args);
	}
}
