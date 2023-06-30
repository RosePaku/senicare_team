// 파일이름 : ImageConfig.java
// 이름: 박지인
// 날짜: 2023-06-22
// 파일 설명 요약: 이 코드는 스프링 MVC 설정에서 정적 리소스 핸들러를 등록하는 ImageConfig 클래스입니다.

package com.java.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class ImageConfig implements WebMvcConfigurer {
    // 정적 리소스 핸들러를 등록하는 메서드
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // 리소스 핸들러 등록
        registry.addResourceHandler("/images/**") // 정적 리소스의 URL 패턴을 지정
                .addResourceLocations("classpath:/static/images/"); // 정적 리소스가 위치한 디렉토리를 지정
    }
}
