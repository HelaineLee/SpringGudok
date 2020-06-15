package com.spring.model;

import java.util.List;

public interface MemberDAO {

	public List<MemberDTO> memList();
	public MemberDTO memCont(int num);
	public int memNum();
	public int memInsert(MemberDTO dto);
	public int memUpdate(MemberDTO dto);
	public int memDelete(int num);
}
