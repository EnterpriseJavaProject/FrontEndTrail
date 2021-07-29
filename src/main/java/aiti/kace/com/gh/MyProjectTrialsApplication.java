package aiti.kace.com.gh;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class MyProjectTrialsApplication extends SpringBootServletInitializer {
	
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MyProjectTrialsApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(MyProjectTrialsApplication.class, args);
	}

}
