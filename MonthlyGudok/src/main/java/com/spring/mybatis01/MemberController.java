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

import com.spring.model.MemberDAO;
import com.spring.model.MemberDTO;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("mem_list.do")
	public String memList(Model m) {
		List<MemberDTO> list = dao.memList();
		m.addAttribute("list", list);
		return "mem_list";
	}
	
	@RequestMapping("mem_cont.do")
	public String memCont(@RequestParam("num") int num, Model m) {
		MemberDTO dto = dao.memCont(num);
		m.addAttribute("dto", dto);
		return "mem_cont";
	}
	
	@RequestMapping("mem_insert.do")
	public String memInsert(Model m) {
		int memNum = dao.memNum()+1;
		m.addAttribute("memNum", memNum);
		return "mem_insert";
	}
	
	@RequestMapping("mem_insert_ok.do")
	public void memInsert(MemberDTO dto, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		int res = dao.memInsert(dto);
		if(res>0) {
			out.println("<script>");
			out.println("alert('success')");
			out.println("location.href='mem_list.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('fail')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	@RequestMapping("mem_delete.do")
	public String memDelete(@RequestParam("num") int num, Model m) {
		MemberDTO dto = dao.memCont(num);
		m.addAttribute("dto", dto);
		return "mem_delete";
	}
	
	@RequestMapping("mem_delete_pwd.do")
	public void memDelete(MemberDTO dto, @RequestParam("check") String check, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		if(check.equals(dto.getPwd())) {
			out.println("<script>");
			out.println("location.href='mem_delete_ok.do?num="+dto.getNum()+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('password wrong')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	@RequestMapping("mem_delete_ok.do")
	public void memDelete(@RequestParam("num") int num, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		int res = dao.memDelete(num);
		if(res>0) {
			out.println("<script>");
			out.println("alert('success')");
			out.println("location.href='mem_list.do'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('fail')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
	@RequestMapping("mem_update.do")
	public String memUpdate(@RequestParam("num") int num, Model m) {
		MemberDTO dto = dao.memCont(num);
		m.addAttribute("dto", dto);
		return "mem_update";
	}
	
	@RequestMapping("mem_update_ok.do")
	public void memUpdate(MemberDTO dto, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		int res = dao.memUpdate(dto);
		if(res>0) {
			out.println("<script>");
			out.println("alert('success')");
			out.println("location.href='mem_cont.do?num="+dto.getNum()+"'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('fail')");
			out.println("history.back()");
			out.println("</script>");
		}
	}
	
}
