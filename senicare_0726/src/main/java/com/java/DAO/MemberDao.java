//package com.java.DAO;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import com.java.dto.Auth;
//
//@Repository
//public class MemberDao {
//
//    private SqlSession sqlSession;
//
//    public static final String MAPPER = "ezen.dev.spring.member";
//
//    @Autowired
//    public MemberDao(SqlSession sqlSession) {
//        this.sqlSession = sqlSession;
//    }
//
//    public int joinMember(Auth auth) {
//
//        return sqlSession.insert(MAPPER + ".joinMember", auth);
//    }
//}