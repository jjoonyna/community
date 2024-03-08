package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;

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
}
