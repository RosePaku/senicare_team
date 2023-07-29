//회원 테이블
package com.java.dto;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Auth {

	public String getAuth_id() {
		return auth_id;
	}

	public void setAuth_id(String auth_id) {
		this.auth_id = auth_id;
	}

	public String getAuth_password() {
		return auth_password;
	}

	public void setAuth_password(String auth_password) {
		this.auth_password = auth_password;
	}

	public String getAuth_sex() {
		return auth_sex;
	}

	public void setAuth_sex(String auth_sex) {
		this.auth_sex = auth_sex;
	}

	public Date getAuth_birth() {
		return auth_birth;
	}

	public void setAuth_birth(Date auth_birth) {
		this.auth_birth = auth_birth;
	}

	public String getAuth_name() {
		return auth_name;
	}

	public void setAuth_name(String auth_name) {
		this.auth_name = auth_name;
	}

	public String getAuth_nickname() {
		return auth_nickname;
	}

	public void setAuth_nickname(String auth_nickname) {
		this.auth_nickname = auth_nickname;
	}

	public String getAuth_email() {
		return auth_email;
	}

	public void setAuth_email(String auth_email) {
		this.auth_email = auth_email;
	}

	public String getAuth_address() {
		return auth_address;
	}

	public void setAuth_address(String auth_address) {
		this.auth_address = auth_address;
	}

	public String getAuth_address_detail() {
		return auth_address_detail;
	}

	public void setAuth_address_detail(String auth_address_detail) {
		this.auth_address_detail = auth_address_detail;
	}

	public String getAuth_phone_number() {
		return auth_phone_number;
	}

	public void setAuth_phone_number(String auth_phone_number) {
		this.auth_phone_number = auth_phone_number;
	}

	public String getAuth_clause_yn() {
		return auth_clause_yn;
	}

	public void setAuth_clause_yn(String auth_clause_yn) {
		this.auth_clause_yn = auth_clause_yn;
	}

	public String getAuth_personal_yn() {
		return auth_personal_yn;
	}

	public void setAuth_personal_yn(String auth_personal_yn) {
		this.auth_personal_yn = auth_personal_yn;
	}

	public Timestamp getAuth_join_dt() {
		return auth_join_dt;
	}

	public void setAuth_join_dt(Timestamp auth_join_dt) {
		this.auth_join_dt = auth_join_dt;
	}

	public Timestamp getAuth_del_dt() {
		return auth_del_dt;
	}

	public void setAuth_del_dt(Timestamp auth_del_dt) {
		this.auth_del_dt = auth_del_dt;
	}

	public String getAuth_user_status() {
		return auth_user_status;
	}

	public void setAuth_user_status(String auth_user_status) {
		this.auth_user_status = auth_user_status;
	}

	public String getAuth_user_type() {
		return auth_user_type;
	}

	public void setAuth_user_type(String auth_user_type) {
		this.auth_user_type = auth_user_type;
	}

	public String getAuth_under_disease() {
		return auth_under_disease;
	}

	public void setAuth_under_disease(String auth_under_disease) {
		this.auth_under_disease = auth_under_disease;
	}

	public String getAuth_info() {
		return auth_info;
	}

	public void setAuth_info(String auth_info) {
		this.auth_info = auth_info;
	}

	private String auth_id;
	private String auth_password;
	private String auth_sex;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date auth_birth;
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
	private String auth_info;

}
