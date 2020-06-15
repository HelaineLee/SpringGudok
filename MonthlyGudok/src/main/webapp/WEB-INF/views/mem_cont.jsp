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
		<h3>회원 정보 상세 내역</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<table width="400">
			<c:set var="dto" value="${dto }" />
			<tr>
				<th>번호</th>
				<td>${dto.getNum() }</td>
			</tr>
			<tr>
				<th>id</th>
				<td>${dto.getMemid() }</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${dto.getMemname() }</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>${dto.getAge() }</td>
			</tr>
			<tr>
				<th>마일리지</th>
				<td>${dto.getMileage() }</td>
			</tr>
			<tr>
				<th>직업</th>
				<td>${dto.getJob() }</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${dto.getAddr() }</td>
			</tr>
			<tr>
				<th>등록일자</th>
				<td>${dto.getRegdate().substring(0,10)  }</td>
			</tr>
		</table>
		<br /> <br /> <input type="button" value="수정"
			onclick="location.href='mem_update.do?num=${dto.getNum()}'">
		&nbsp; &nbsp; <input type="button" value="삭제"
			onclick="location.href='mem_delete.do?num=${dto.getNum()}'">
		&nbsp; &nbsp; <input type="button" value="목록"
			onclick="location.href='mem_list.do'">
	</div>
</body>
</html>