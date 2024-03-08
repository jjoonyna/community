package com.example.demo.model;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("member")
public class Member {
	
	private String id;
	private String pwd;
	private String name;
	private String nickname;
	private Date join_date;
	private int join_state;
	private String join_delcont;
	private String join_deldate;
}
