package com.java.service;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.A_B;
import com.java.mapper.A_BMapper;

@Service
public class A_BServiceImpl implements A_BService {

    public A_BMapper a_bMapper;

    @Autowired
    HttpSession session;

    @Autowired
    public A_BServiceImpl(A_BMapper a_bMapper) {
        this.a_bMapper = a_bMapper;
    }

    @Override
    public void insert(A_B a_b) {

        Timestamp now = new Timestamp(System.currentTimeMillis());
        a_b.setAuth_business_join_dt(now);
        a_b.setAuth_business_user_status("활동멤버");
        a_bMapper.insert(a_b);
    }

    @Override
    // 회원가입 구현
    public String select(A_B a_b) {
        String resultCode = "";
        // Auth authdto = authMapper.select(auth.getAuth_id(), auth.getAuth_password());
        // mapper에서 void가 아닌 Auth값으로 설정 되어 있어서 id,password 값만 찾음

        A_B a_bdto = a_bMapper.select(a_b);

        if (a_bdto != null) {
            session.setAttribute("session_id", a_bdto.getAuth_business_id());
            session.setAttribute("session_password", a_bdto.getAuth_business_password());
            resultCode = "a_b_s_login";
        } else {
            resultCode = "a_b_f_login";
        }

        return resultCode;
    }

}
