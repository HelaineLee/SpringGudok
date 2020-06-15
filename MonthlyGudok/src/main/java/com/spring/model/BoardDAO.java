package com.spring.model;

import java.util.List;

public interface BoardDAO {

	public List<BoardDTO> boardList();
	public BoardDTO boardCont(int board_no);
	public int boardHit(int board_no);
	public int hitUp(int board_no);
	public int boardInsert(BoardDTO dto);
	public int boardNo();
	public int boardDelete(int board_no);
	public int boardUpdate(BoardDTO dto);
	public List<BoardDTO> boardTitle(SearchDTO dto);
	public List<BoardDTO> contBoard(SearchDTO dto);
}
