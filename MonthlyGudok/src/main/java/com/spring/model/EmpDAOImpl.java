package com.spring.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class EmpDAOImpl implements EmpDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<EmpDTO> getList() {
		return sqlSession.selectList("allList");
	}

	@Override
	public List<DeptDTO> deptList() {
		return sqlSession.selectList("deptList");
	}

	@Override
	public int insertEmp(EmpDTO dto) {
		return sqlSession.insert("add", dto);
	}

	@Override
	public EmpDTO getCont(int empno) {
		return sqlSession.selectOne("cont", empno);
	}

	@Override
	public int updateEmp(EmpDTO dto) {
		return sqlSession.update("update", dto);
	}

	@Override
	public int deleteEmp(int empno) {
		return sqlSession.delete("delete", empno);
	}

}
