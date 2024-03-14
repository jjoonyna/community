package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MemberDAO;
import com.example.demo.model.Member;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	public int checkMemberId(String id){
		int result = -1;	   // 사용 가능한 ID
		Member member = dao.idCheck(id);
		if(member != null)
		   result = 1; 	       // 중복 ID
		
		return result;
	}
	public int checkMemberNickname(String nickname){
		int result = -1;	   // 사용 가능한 닉네임
		Member member = dao.nicknameCheck(nickname);
		if(member != null)
			result = 1; 	       // 중복 닉네임
		
		return result;
	}
	public int joinInsert(Member member) {
		return dao.joinInsert(member);
	}
	public Member userCheck(String id) {
		return dao.userCheck(id);
	}
	public int pwdchange(Member member) {
		return dao.pwdchange(member);
	}
}
