package com.mega.mvc12;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("bbs1.mega")
	public void one(BbsDTO bbsDTO, Model model) {
		BbsDTO result = dao.read(bbsDTO);
		model.addAttribute("result", result);
	}
	
	@RequestMapping("bbs.mega")
	public void insert(BbsDTO bbsDTO) {
		dao.create(bbsDTO);
	}
	
}
