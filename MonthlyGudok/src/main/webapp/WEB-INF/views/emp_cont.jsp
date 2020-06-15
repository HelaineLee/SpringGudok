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
		<h3>EMP 사원 등록</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<table width="400">
			<c:set var="dto" value="${cont }" />
			<tr>
				<th>사원번호</th>
				<td>${dto.getEmpno() }</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${dto.getEname() }</td>
			</tr>
			<tr>
				<th>담당업무</th>
				<td>${dto.getJob() }</td>
			</tr>
			<tr>
				<th>담당자</th>
				<td>${dto.getMgr() }</td>
			</tr>
			<tr>
				<th>입사 일자</th>
				<td>${dto.getHiredate().substring(0,10) }</td>
			</tr>
			<tr>
				<th>급여</th>
				<td>${dto.getSal() }</td>
			</tr>
			<tr>
				<th>보너스</th>
				<td>${dto.getComm() }</td>
			</tr>
			<tr>
				<th>부서번호</th>
				<td>${dto.getDeptno() }</td>
			</tr>
		</table>
		<input type="button" value="삭제"
			onclick="location.href='emp_delete.do?no=${dto.getEmpno()}'">
		&nbsp; &nbsp; <input type="button" value="수정"
			onclick="location.href='emp_update.do?no=${dto.getEmpno()}'">
		&nbsp; &nbsp; <input type="button" value="목록"
			onclick="location.href='emp_list.do'">
	</div>
</body>
</html>