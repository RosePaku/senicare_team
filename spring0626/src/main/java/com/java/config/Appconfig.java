package com.java.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

/**
 * ImageConfig
 */
/**
 * Appconfig
 */
public class Appconfig {

    public SqlSessionFactory SqlSessionFactory(DataSource dataSource) throws Exception {
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        sessionFactory.setDataSource(dataSource);

        // Mapper 설정
        Resource[] res = new PathMatchingResourcePatternResolver().getResource("classpath:/mapper/**/*.xml");
        sessionFactory.setMapperLocations(res);

        return sessionFactory.getObject();

    }

    public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
        return new SqlSessionTemplate(sqlSessionFactory);

    }
}
