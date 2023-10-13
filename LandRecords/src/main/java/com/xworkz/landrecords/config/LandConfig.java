package com.xworkz.landrecords.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
@Configuration
public class LandConfig {

	
	@Bean
	public LocalEntityManagerFactoryBean getLocalEntityManagerFactoryBean()  {
		LocalEntityManagerFactoryBean lemf= new LocalEntityManagerFactoryBean();
		lemf.setPersistenceUnitName("databaseProperties");
		return lemf;
	}

}
