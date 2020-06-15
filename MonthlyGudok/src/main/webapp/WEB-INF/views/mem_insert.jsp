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
		<h3>회원 등록</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<form method="post"
			action="<%=request.getContextPath()%>/mem_insert_ok.do">
			<table width="400">
				<tr hidden="">
					<th>번호</th>
					<c:set var="memNum" value="${memNum }"/>
					<td><input name="num" value="${memNum }"></td>
				</tr>
				<tr>
					<th>id</th>
					<td><input name="memid"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input name="memname"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><input name="age"></td>
				</tr>
				<tr>
					<th>마일리지</th>
					<td><input name="mileage"></td>
				</tr>
				<tr>
					<th>직업</th>
					<td><input name="job"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input name="addr"></td>
				</tr>
			</table>
			<br /> <br /> <input type="submit" value="가입">
		</form>
	</div>
</body>
</html>