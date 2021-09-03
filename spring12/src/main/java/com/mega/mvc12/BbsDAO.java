package com.mega.mvc12;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	public BbsDTO read(BbsDTO bbsDTO) {
		BbsDTO dto = mybatis.selectOne("bbs.one", bbsDTO);
		return dto;
	}

	public void create(BbsDTO bbsDTO) {
		mybatis.insert("bbs.add", bbsDTO);
	}

	public void update() {

	}

	public void delete() {

	}

}
