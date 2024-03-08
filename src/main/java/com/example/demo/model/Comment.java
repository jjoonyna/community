package com.example.demo.model;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("comment")
public class Comment {
	private int bno;
	private int cno;
	private String content;
	private String nickname;
	private Date c_date;
	
}
