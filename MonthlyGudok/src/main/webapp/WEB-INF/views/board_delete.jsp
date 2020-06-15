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
		<h3>게시글 삭제하기</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<form method="post"
			action="<%=request.getContextPath()%>/board_delete_pwd.do">
			<c:set var="dto" value="${dto }" />
			<input type="hidden" name="board_no" value="${dto.getBoard_no() }">
			<input type="hidden" name="board_pwd" value="${dto.getBoard_pwd() }">
			<br /> 비밀번호 입력 <input type="password" name="pwd"> <br /> <input
				type="submit" value="삭제하기">
		</form>
	</div>
</body>
</html>