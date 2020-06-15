package com.spring.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate sql;
	
	@Override
	public List<MemberDTO> memList() {
		return sql.selectList("memList");
	}

	@Override
	public MemberDTO memCont(int num) {
		return sql.selectOne("memCont", num);
	}

	@Override
	public int memInsert(MemberDTO dto) {
		return sql.insert("memInsert", dto);
	}

	@Override
	public int memNum() {
		return sql.selectOne("memNum");
	}

	@Override
	public int memUpdate(MemberDTO dto) {
		return sql.update("memUpdate", dto);
	}

	@Override
	public int memDelete(int num) {
		return sql.delete("memDelete", num);
	}

}
