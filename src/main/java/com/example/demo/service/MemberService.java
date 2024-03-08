package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MemberDAO;
import com.example.demo.model.Member;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	public int checkMemberId(String id) throws Exception{
		int result = -1;	   // 사용 가능한 ID
		Member member = dao.idCheck(id);
		if(member != null)
		   result = 1; 	       // 중복 ID
		
		return result;
	}
	public int checkMemberNickname(String nickname) throws Exception{
		int result = -1;	   // 사용 가능한 닉네임
		Member member = dao.nicknameCheck(nickname);
		if(member != null)
			result = 1; 	       // 중복 닉네임
		
		return result;
	}
	public void joinInsert(Member member) {
		 dao.joinInsert(member);
	}
}
