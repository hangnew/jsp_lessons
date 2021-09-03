package com.mega.mvc12;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CmntDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public CmntDTO read(CmntDTO cmntDTO) {
		CmntDTO result = mybatis.selectOne("cmnt.one", cmntDTO);
		return result;
	}
	
	public void insert(CmntDTO cmntDTO) {
		mybatis.insert("cmnt.insert", cmntDTO);
	}
	
	
	
}
