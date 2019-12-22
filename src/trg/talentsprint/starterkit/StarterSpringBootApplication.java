package trg.talentsprint.starterkit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class StarterSpringBootApplication extends SpringBootServletInitializer {
	
	public StarterSpringBootApplication() {
	    super();
	    setRegisterErrorPageFilter(false); // <- this one
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(StarterSpringBootApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(StarterSpringBootApplication.class, args);
	}
}
