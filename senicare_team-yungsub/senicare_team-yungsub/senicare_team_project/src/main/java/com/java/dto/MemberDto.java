package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MemberDto {
	
	private String auth_id;
	private String auth_password;
	private String auth_sex;
	private Timestamp auth_birth;
	private String auth_name;
	private String auth_nickname;
	private String auth_email;
	private String auth_address;
	private String auth_address_detail;
	private String auth_phone_number;
	private String auth_clause_yn;
	private String auth_personal_yn;
	private Timestamp auth_join_dt;
	private Timestamp auth_del_dt;
	private String auth_user_status;
	private String auth_user_type;
	private String auth_under_disease;
	private String auth_certi;
	private String auth_career;
	private String auth_info;

}
