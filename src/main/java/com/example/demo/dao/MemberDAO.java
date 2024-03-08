package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.Member;

@Mapper
public interface MemberDAO {

	Member idCheck(String id);

	Member nicknameCheck(String nickname);

	void joinInsert(Member member);



}
