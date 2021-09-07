package com.mega.mvc14;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	public List<BbsDTO> list() {
		List<BbsDTO> list = mybatis.selectList("bbs.all");
		return list;
	}
	
	public BbsDTO read(BbsDTO bbsDTO) {
		BbsDTO dto = mybatis.selectOne("bbs.one", bbsDTO);
		return dto;
	}

	public void create(BbsDTO bbsDTO) {
		mybatis.insert("bbs.add", bbsDTO);
	}

	public void update() {

	}

	public void delete(BbsDTO bbsDTO) {
		mybatis.delete("bbs.del", bbsDTO);
	}

}
