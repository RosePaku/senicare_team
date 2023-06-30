package com.java.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * ImageConfig
 */
@Configuration
public class ImageConfig implements WebMvcConfigurer {
    public void addResourceHandler(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("images/**")
                .addResourceLocations("file:///c:/upload/");
    }

}