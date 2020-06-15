package com.spring.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSessionTemplate sql;

	@Override
	public List<BoardDTO> boardList() {
		return sql.selectList("boardList");
	}

	@Override
	public BoardDTO boardCont(int board_no) {
		return sql.selectOne("boardCont", board_no);
	}

	@Override
	public int boardHit(int board_no) {
		return sql.selectOne("boardHit", board_no);
	}

	@Override
	public int hitUp(int board_no) {
		return sql.update("hitUp", board_no);
	}

	@Override
	public int boardInsert(BoardDTO dto) {
		return sql.insert("boardInsert", dto);
	}

	@Override
	public int boardNo() {
		return sql.selectOne("boardNo");
	}

	@Override
	public int boardDelete(int board_no) {
		return sql.delete("boardDelete", board_no);
	}

	@Override
	public int boardUpdate(BoardDTO dto) {
		return sql.update("boardUpdate", dto);
	}

	@Override
	public List<BoardDTO> boardTitle(SearchDTO dto) {
		return sql.selectList("boardTitle", dto);
	}

	@Override
	public List<BoardDTO> contBoard(SearchDTO dto) {
		return sql.selectList("contBoard", dto);
	}

}
