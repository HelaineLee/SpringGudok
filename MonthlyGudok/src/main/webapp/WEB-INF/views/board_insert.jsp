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
		<h3>게시글 작성하기</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<form method="post"
			action="<%=request.getContextPath()%>/board_insert_ok.do">
			<table width="400">
				<tr hidden="">
					<th>번호</th>
					<c:set var="boardNo" value="${boardNo }" />
					<td><input name="board_no" value="${boardNo }"></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input name="board_writer"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><textarea rows="1" cols="40" name="board_title"></textarea>
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="40" name="board_cont"></textarea>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="board_pwd"></td>
				</tr>
			</table>
			<br /> <input type="submit" value="작성하기">
		</form>
	</div>
</body>
</html>