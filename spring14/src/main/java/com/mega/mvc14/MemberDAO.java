package com.mega.mvc14;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;

	public boolean login(MemberDTO dto) {
		String dbId = "root";
		String dbPw = "1234";
		boolean result = false;
		if (dbId.equals(dto.getId())  && dbPw.equals(dto.getPw())) {
			result = true;
		}
		return result;
	}
	
	public void create() {
		
	}
	
	public void read() {
		
	}
	
	public void update() {
		
	}
	
	public void delete() {
		
	}
	
}
