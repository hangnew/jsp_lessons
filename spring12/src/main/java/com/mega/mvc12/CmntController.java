package com.mega.mvc12;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CmntController {

	@Autowired
	CmntDAO dao;
	
	@RequestMapping("one.do")
	public void one(CmntDTO cmntDTO, Model model) {
		CmntDTO result = dao.read(cmntDTO);
		model.addAttribute("result", result);
	}
	
	@RequestMapping("cmntIn.do")
	public void cmntIn(CmntDTO cmntDTO) {
		dao.insert(cmntDTO);
	}
	
}
