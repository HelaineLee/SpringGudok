package com.spring.mybatis01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.BoardDAO;
import com.spring.model.BoardDTO;
import com.spring.model.SearchDTO;

@Controller
public class BoardController {

	@Autowired
	private BoardDAO dao;
	
	@RequestMapping("board_list.do")
	public String boardList(Model m) {
		List<BoardDTO> list = dao.boardList();
		m.addAttribute("list", list);
		return "board_list";
	}
	
	@RequestMapping("board_cont.do")
	public String boardCont(@RequestParam("no") int board_no, Model m) {
		dao.hitUp(board_no);
		BoardDTO dto = dao.boardCont(board_no);
		m.addAttribute("dto", dto);
		return "board_cont";
	}
	
	@RequestMapping("board_insert.do")
	public String boardInsert(Model m) {
		int boardNo = dao.boardNo()+1;
		m.addAttribute("boardNo", boardNo);
		return "board_insert";
	}
	
	@RequestMapping("board_insert_ok.do")
	public void boardInsert(BoardDTO dto, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		int res = dao.boardInsert(dto);
		if(res>0) {
			out.println("<script>");
			out.println("alert('success')");
			out.println("location.href='board_list.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('fail')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	@RequestMapping("board_delete.do")
	public String boardDelete(@RequestParam("no") int board_no, Model m) {
		BoardDTO dto = dao.boardCont(board_no);
		m.addAttribute("dto", dto);
		return "board_delete";
	}
	
	@RequestMapping("board_delete_pwd.do")
	public void boardDelete(BoardDTO dto, @RequestParam("pwd") String pwd, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		if(pwd.equals(dto.getBoard_pwd())) {
			out.println("<script>");
			out.println("location.href='board_delete_ok.do?no="+dto.getBoard_no()+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('password wrong')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	@RequestMapping("board_delete_ok.do")
	public void boardDelete(@RequestParam("no") int board_no, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		int res = dao.boardDelete(board_no);
		if(res>0) {
			out.println("<script>");
			out.println("alert('success')");
			out.println("location.href='board_list.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('fail')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	@RequestMapping("board_search.do")
	public String boardSearch(SearchDTO dto, Model m) {
		if(dto.getSearch().equals("title")) {
			List<BoardDTO> list = dao.boardTitle(dto);
			m.addAttribute("list", list);
		}else if(dto.getSearch().equals("cont")) {
			List<BoardDTO> list = dao.contBoard(dto);
			m.addAttribute("list", list);
		}
		return "board_search";
	}
	
	// board_update.do?no=
}
