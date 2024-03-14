package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ViewController {
	
	
	@RequestMapping("main")
	public String main() {
		return "main";
	}
	@RequestMapping("qna")
	public String qna() {
		return "qna";
	}
	@RequestMapping("community")
	public String community() {
		return "community";
	}
	@RequestMapping("coding")
	public String coding() {
		return "coding";
	}
	@RequestMapping("noticeboard")
	public String noticeboard() {
		return "noticeboard";
	}
	@RequestMapping("study")
	public String study() {
		return "study";
	}
	
	
	
}
