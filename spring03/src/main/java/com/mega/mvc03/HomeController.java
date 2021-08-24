package com.mega.mvc03;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("in.mega")
	public void insert(MemberDTO dto) {
		System.out.println("컨트롤러 메서드 호출됨");
		System.out.println("컨트롤러에서 받은 아이디: " + dto.getId());
		System.out.println("컨트롤러에서 받은 비밀번호: " + dto.getPw());
		System.out.println("컨트롤러에서 받은 이름: " + dto.getName());
		System.out.println("컨트롤러에서 받은 전화번호: " + dto.getTel());
	}
	
	@RequestMapping("check.mega")
	public void login(MemberDTO dto) {
		System.out.println("login 메서드 호출");
		System.out.println("컨트롤러에서 받은 아이디: " + dto.getId());
		System.out.println("컨트롤러에서 받은 비밀번호: " + dto.getPw());
	}
}
