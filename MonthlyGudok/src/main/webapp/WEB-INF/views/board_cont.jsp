<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr width="500" color="#D9D6FF" />
		<c:set var="dto" value="${dto }" />
		<h3>${dto.getBoard_writer() }님의작성글</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<table width="400">
			<tr>
				<th>제목</th>
				<td>${dto.getBoard_title() }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${dto.getBoard_hit() }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="40">${dto.getBoard_cont() }</textarea>
				</td>
			</tr>
			<tr>
				<th>작성일자</th>
				<td>${dto.getBoard_regdate().substring(0,10) }</td>
			</tr>
		</table>
		<br /> <br /> <input type="button" value="수정"
			onclick="location.href='board_update.do?no=${dto.getBoard_no()}'">
		&nbsp; &nbsp; <input type="button" value="삭제"
			onclick="location.href='board_delete.do?no=${dto.getBoard_no()}'">
		&nbsp; &nbsp; <input type="button" value="목록"
			onclick="location.href='board_list.do'"> &nbsp; &nbsp;
	</div>
</body>
</html>