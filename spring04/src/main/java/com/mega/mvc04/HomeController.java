package com.mega.mvc04;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	@RequestMapping("create.do")
	public void create(BbsDTO dto) {
		System.out.println("컨트롤러 create 메서드 호출");
		System.out.println("컨트롤러에서 받은 게시글 번호: " + dto.getNo());
		System.out.println("컨트롤러에서 받은 게시글 제목: " + dto.getTitle());
		System.out.println("컨트롤러에서 받은 게시글 내용: " + dto.getContent());
		System.out.println("컨트롤러에서 받은 게시글 작성자: " + dto.getWriter());
	}
}
	