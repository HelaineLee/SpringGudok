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
		<h3>Member list</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<table width="400">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>직업</th>
				<th>등록일자</th>
			</tr>
			<c:set var="list" value="${list }" />
			<c:if test="${!empty list }">
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${dto.getNum() }</td>
						<td><a href="mem_cont.do?num=${dto.getNum() }">${dto.getMemname() }</a></td>
						<td>${dto.getJob() }</td>
						<td>${dto.getRegdate().substring(0,10) }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty list }">
				<tr>
					<td colspan="4" align="center">레코드 X</td>
				</tr>
			</c:if>
		</table>
		<br />
		<br /> <input type="button" value="회원등록"
			onclick="location.href='mem_insert.do'">
	</div>
</body>
</html>