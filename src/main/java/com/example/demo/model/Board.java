package com.example.demo.model;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("board")
public class Board {
		private int bno;
		private String nickname;
		private String subject;
		private String content;
		private int readcount;
		private String category;
		private Date b_date;
		private String del;
	
		// page
		private int startRow;
		private int endRow;
		// 검색
		private String search;
		private String keyword;
}
