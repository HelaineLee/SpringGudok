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
		<h3>회원 정보 수정</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<form method="post"
			action="<%=request.getContextPath()%>/mem_update_ok.do">
			<c:set var="dto" value="${dto }" />
			<table width="400">
				<tr>
					<th>번호</th>
					<td><input name="num" value="${dto.getNum() }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>id</th>
					<td><input name="memid" value="${dto.getMemid() }"
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input name="memname" value="${dto.getMemname() }"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><input name="age" value="${dto.getAge() }"></td>
				</tr>
				<tr>
					<th>마일리지</th>
					<td><input name="mileage" value="${dto.getMileage() }"></td>
				</tr>
				<tr>
					<th>직업</th>
					<td><input name="job" value="${dto.getJob() }"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input name="addr" value="${dto.getAddr() }"></td>
				</tr>
			</table>
			<br /> <br /> <input type="submit" value="수정">
		</form>
	</div>
</body>
</html>