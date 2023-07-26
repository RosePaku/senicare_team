package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class HosDto {
	
	private int hno;
	private String hosnm;
	private String clnm;
	private int sbjcd;
	private String sbjnm;
	private String sdnm;
	private String sggnm;
	private String emdnm;
	private String addr;
	private String tel;
	private int drcnt;
	private int estdate;
	private String xpos;
	private String ypos;
	
}
