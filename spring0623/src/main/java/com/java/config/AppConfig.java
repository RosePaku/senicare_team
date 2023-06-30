package com.java.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class AppConfig {

    // sql 명령어 가져오기
    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        // DB연결
        sessionFactory.setDataSource(dataSource);

        // Mapper 설정
        Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath*:mapper/**/*.xml");
        sessionFactory.setMapperLocations(res);

        return sessionFactory.getObject(); // Bean으로 등록 시키기 (ioc 컨테이너에 저장하는)

    }

    @Bean
    public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
        return new SqlSessionTemplate(sqlSessionFactory);
    }

}
