package com.java.service;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.Auth;
import com.java.mapper.AuthMapper;

@Service
public class AuthServiceImpl implements AuthService {

    @Autowired
    HttpSession session;

    // pirvate을 쓰거나 autowired를 쓰거나
    // @Autowired
    private AuthMapper authMapper;

    @Autowired
    public AuthServiceImpl(AuthMapper authMapper) {
        this.authMapper = authMapper;
    }

    // 멤버 값 저장
    @Override
    public void insert(Auth auth) {

        Timestamp now = new Timestamp(System.currentTimeMillis());
        auth.setAuth_join_dt(now);
        auth.setAuth_user_status("1");
        auth.setAuth_user_type("indi");
        authMapper.insert(auth);

    }

    @Override
    // 회원가입 구현
    public String select(Auth auth) {
        String resultCode = "";
        // Auth authdto = authMapper.select(auth.getAuth_id(), auth.getAuth_password());
        // mapper에서 void가 아닌 Auth값으로 설정 되어 있어서 id,password 값만 찾음

        Auth authdto = authMapper.select(auth);

        if (authdto != null) {
        	session.setAttribute("login", 1);
            session.setAttribute("session_id", authdto.getAuth_id());
            session.setAttribute("session_password", authdto.getAuth_password());
            session.setAttribute("sessionName", authdto.getAuth_name());
            session.setAttribute("sessionNickName", authdto.getAuth_nickname());
            resultCode = "s_login";
        } else {
            resultCode = "f_login";
        }

        return resultCode;
    }



    // @Override
    // public void select(String id, String pw, Auth auth) {
    // String resultCode = "";

    // authMapper.select(auth);

    // }

}
