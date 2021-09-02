package com.mega.mvc13;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;

	public void create(MemberDTO dto) {
		mybatis.insert("member.create", dto);
	}
	
	public boolean login(MemberDTO dto) {
		String dbId = "root";
		String dbPw = "1234";
		boolean result = false;
		if (dbId.equals(dto.getId())  && dbPw.equals(dto.getPw())) {
			result = true;
		}
		return result;
	}
	

	
	public void read() {
		
	}
	
	public void update() {
		
	}
	
	public void delete() {
		
	}
	
}
