package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class HealthDto {
	
	private int scno;
	private String auth_id;
	private String demen;
	private String arth;
	private String hyper;
	private String diabet;
	private String cerebro;
	private Timestamp test_date;

}
