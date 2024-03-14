package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Member;
import com.example.demo.service.MemberService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@RequestMapping(value="/login")
	public String login() {
		return "member/login";
	}
	@RequestMapping(value="/join")
	public String join() {
		return "member/join";
	}
	@RequestMapping(value = "/idcheck", method = RequestMethod.POST)
	public String idcheck(@RequestParam("memid") String id, Model model) {
		int result = service.checkMemberId(id);
		model.addAttribute("result", result);

		return "member/idcheckResult";
	}
	@RequestMapping(value = "/nicknamecheck", method = RequestMethod.POST)
	public String nicknamecheck(@RequestParam("memnickname") String nickname, Model model){
		
		int result = service.checkMemberNickname(nickname);
		model.addAttribute("result", result);
		
		return "member/nicknamecheckResult";
	}
	
	@RequestMapping(value="/join_ok", method=RequestMethod.POST)
	public String joinInsert(@ModelAttribute Member member,Model model) {
		int result = 0;
		Member db = service.userCheck(member.getId());
		if(db == null) {
			String encpwd = passwordEncoder.encode(member.getPwd());
			member.setPwd(encpwd);
			result = service.joinInsert(member);
		}else {
			result = -1;
		}
		model.addAttribute("result", result);
		return "member/insertResult";
	}
	
	@RequestMapping(value = "/login_ok", method = RequestMethod.POST)
	public String member_login_ok(String id,String pwd,HttpSession session, Model model){
		int result=0;		
		Member member = service.userCheck(id);

		if (member == null) {		// 등록되지 않은 회원일때			
			result = 1;
			model.addAttribute("result", result);
			
			return "member/loginResult";
			
		} else {				// 등록된 회원일때
			if (passwordEncoder.matches(pwd, member.getPwd())) {			// 비번이 같을때
				session.setAttribute("id", id);         	// 세션 설정
				session.setAttribute("nickname", member.getNickname());
				return "main";
				
			} else {									// 비번이 다를때
				result = 2;
				model.addAttribute("result", result);
				
				return "member/loginResult";				
			}
		}

	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "member/logout";
	}
	
	@RequestMapping("pwdchange")
	public String pwdchange() {
		return "member/pwdchange";				
			
		}
	@RequestMapping(value = "/pwdchange_ok", method = RequestMethod.POST)
	public String pwdchange_ok(String id, String pwd, String newpwd,HttpSession session,Model model) {
		Member member = service.userCheck(id);
		int result = 0;
		System.out.println();
		
		if(passwordEncoder.matches(pwd, member.getPwd())) {
			member.setPwd(newpwd);
			String encpwd = passwordEncoder.encode(member.getPwd());
			member.setPwd(encpwd);
			result = service.pwdchange(member);
			session.invalidate();
		}else {
			result = -1;
		}
		model.addAttribute("result",result);
		return "member/pwdchangeResult";
	}
	@RequestMapping("logincheck")
	public String logincheck() {
		return "member/logincheck";
	}
	
	
	}