package com.java.dto;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDto {
    private int bno;
    private String id;
    private String btilte;
    private String bcontent;
    private Timestamp bdate;
    private int bhit;
    private int bgroup;
    private int bstep;
    private int bindent;
    private String bfile;

}