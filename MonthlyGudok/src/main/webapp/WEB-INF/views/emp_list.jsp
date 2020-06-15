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
		<h3>EMP list</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<table width="400">
			<tr>
				<th>사원번호</th>
				<th>사원명</th>
				<th>담당업무</th>
				<th>입사일자</th>
			</tr>
			<c:set var="list" value="${List }" />
			<c:if test="${!empty list }">
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${dto.getEmpno() }</td>
						<td><a href="emp_cont.do?no=${dto.getEmpno() }">${dto.getEname() }</a></td>
						<td>${dto.getJob() }</td>
						<td>${dto.getHiredate().substring(0,10) }</td>
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
		<br /> <input type="button" value="사원등록"
			onclick="location.href='emp_write.do'">
	</div>
</body>
</html>