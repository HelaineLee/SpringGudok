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
		<h3>회원 탈퇴</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<form method="post"
			action="<%=request.getContextPath()%>/mem_delete_pwd.do">
			<c:set var="dto" value="${dto }" />
			<input type="hidden" name="num" value="${dto.getNum() }"> <input
				type="hidden" name="pwd" value="${dto.getPwd() }"> 비밀번호 입력 <br />
			<br /> <input type="password" name="check"> <input
				type="submit" value="확인">
		</form>
	</div>
</body>
</html>