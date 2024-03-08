package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Member;
import com.example.demo.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/login")
	public String login() {
		return "member/login";
	}
	@RequestMapping(value="/join")
	public String join() {
		return "member/join";
	}
	@RequestMapping(value = "/idcheck", method = RequestMethod.POST)
	public String idcheck(@RequestParam("memid") String id, Model model) throws Exception {
		int result = service.checkMemberId(id);
		model.addAttribute("result", result);

		return "member/idcheckResult";
	}
	@RequestMapping(value = "/nicknamecheck", method = RequestMethod.POST)
	public String nicknamecheck(@RequestParam("memnickname") String nickname, Model model) throws Exception {
		
		int result = service.checkMemberNickname(nickname);
		model.addAttribute("result", result);
		
		return "member/nicknamecheckResult";
	}
	
	@RequestMapping(value="/join_ok", method=RequestMethod.POST)
	public String joinInsert(@ModelAttribute Member member,Model model) {
		service.joinInsert(member);
		return "redirect:login";
	}
}
