package com.mega.mvc15;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("password")
	public String pass(String pass) {
		if (pass.equals("1234")) {
			return "pass";
		} else {
			return "redirect:index.jsp";
		}
	}
	
	@RequestMapping("login.mega")
	public String login(MemberDTO memberDTO) {
		System.out.println("DTO 주소: " + memberDTO);
		System.out.println("싱글톤 주소: " + dao);
		boolean result = dao.login(memberDTO);
		if (result) {
			return "ok";
		} else {
			return "no";
		}
	}
	
	@RequestMapping("check.mega")
	public String check(String nick) {
		System.out.println(nick);
		if (nick.equals("superman")) {
			return "super";
		} else {
			return "common";
		}
	}
	
}
