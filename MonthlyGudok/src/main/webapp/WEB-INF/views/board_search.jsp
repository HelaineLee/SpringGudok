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
		<h3>Board List</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<table width="400">
			<tr>
				<th>번호</th>
				<th>글쓴이</th>
				<th>제목</th>
				<th>조회수</th>
				<th>작성일자</th>
			</tr>
			<c:set var="list" value="${list }" />
			<c:if test="${!empty list }">
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${dto.getBoard_no() }</td>
						<td>${dto.getBoard_writer() }</td>
						<td><a href="board_cont.do?no=${dto.getBoard_no() }">${dto.getBoard_title() }</a></td>
						<td>${dto.getBoard_hit() }</td>
						<td>${dto.getBoard_regdate().substring(0,10) }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty list }">
				<tr>
					<td colspan="4" align="center">글이 없어용</td>
				</tr>
			</c:if>
		</table>
		<br /> <input type="button" value="글쓰기"
			onclick="location.href='board_insert.do'"> <br /><br/>
		<form method="post" action="board_search.do">
			<select name="search">
				<option value="title">제목</option>
				<option value="cont">내용</option>
			</select> &nbsp; <input name="key"> <input type="submit" value="검색">
		</form>
	</div>
</body>
</html>