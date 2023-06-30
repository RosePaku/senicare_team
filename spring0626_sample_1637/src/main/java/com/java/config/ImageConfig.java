package com.java.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration //WebMvcConfigurer 구현해야 함.
public class ImageConfig implements WebMvcConfigurer {
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("images/**")
		.addResourceLocations("file:///c:/upload/");
	}

}
