package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class CommentDto {
	
	private int comment_no;
	private int board_no;
	private String auth_id;
	private String auth_nickname;
	private String comment_content;
	private Timestamp comment_date;
	private Timestamp comment_modify;
	private int comment_private;

}
