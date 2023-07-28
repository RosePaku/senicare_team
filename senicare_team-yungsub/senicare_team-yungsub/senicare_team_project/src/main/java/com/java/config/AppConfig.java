package com.java.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import com.java.service.FreeService;
import com.java.service.HobbyService;

@Configuration
public class AppConfig {
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{// SqlSessionFactory Bean 구성
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean(); // 객체생성
		sessionFactory.setDataSource(dataSource); // DB연결에 사용할 데이터 소스 설정
		
		//Mapper설정
		Resource[] res = new PathMatchingResourcePatternResolver()
				.getResources("classpath:/mapper/**/*.xml"); // 경로에서 MyBatis 매퍼파일들 가져오기
		sessionFactory.setMapperLocations(res); // 매퍼파일들의 위치 설정
		
		return sessionFactory.getObject();// IOC에 등록(반환)
	}//
	
	@Bean
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {// Bean 구성
		return new SqlSessionTemplate(sqlSessionFactory); // 
	}//
	
}