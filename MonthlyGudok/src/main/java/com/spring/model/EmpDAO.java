package com.spring.model;

import java.util.List;

public interface EmpDAO {

	public List<EmpDTO> getList();
	public List<DeptDTO> deptList();
	public int insertEmp(EmpDTO dto);
	public EmpDTO getCont(int empno);
	public int updateEmp(EmpDTO dto);
	public int deleteEmp(int empno);
}
