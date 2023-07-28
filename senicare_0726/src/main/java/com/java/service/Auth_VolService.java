package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.java.dto.Auth_Vol;
import com.java.mapper.Auth_VolMapper;

@Service
public class Auth_VolService {
    private final Auth_VolMapper auth_volMapper;

    @Autowired
    public Auth_VolService(Auth_VolMapper auth_volMapper) {
        this.auth_volMapper = auth_volMapper;
    }

    public List<Auth_Vol> getAll() {
        return auth_volMapper.getAll();
    }

    public Auth_Vol getByNo(String auth_vol_no) {
        return auth_volMapper.getByNo(auth_vol_no);
    }

    public void insert(Auth_Vol auth_vol) {
        auth_volMapper.insert(auth_vol);
    }

    public void update(Auth_Vol auth_vol) {
        auth_volMapper.update(auth_vol);
    }

    public void delete(String auth_vol_no) {
        auth_volMapper.delete(auth_vol_no);
    }
}
