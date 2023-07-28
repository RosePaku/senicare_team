package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.Auth_Vol;

@Mapper
public interface Auth_VolMapper {
    public List<Auth_Vol> getAll();
    public Auth_Vol getByNo(String auth_vol_no);
    public void insert(Auth_Vol auth_vol);
    public void update(Auth_Vol auth_vol);
    public void delete(String auth_vol_no);
//    찾기 기능
//    Auth_Vol find(String authVolNo);
//    List<Auth_Vol> findAll();
}
