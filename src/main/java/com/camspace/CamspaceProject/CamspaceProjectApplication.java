package com.camspace.CamspaceProject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
public class CamspaceProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(CamspaceProjectApplication.class, args);
	}

}
