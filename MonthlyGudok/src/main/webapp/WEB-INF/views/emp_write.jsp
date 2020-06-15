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
		<form method="post"
			action="<%=request.getContextPath()%>/emp_write_ok.do">
			<table width="400">
				<tr>
					<th>사원번호</th>
					<td><input name="empno"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input name="ename"></td>
				</tr>
				<tr>
					<th>담당업무</th>
					<td><input name="job"></td>
				</tr>
				<tr>
					<th>담당자</th>
					<td><input name="mgr"></td>
				</tr>
				<tr>
					<th>급여</th>
					<td><input name="sal"></td>
				</tr>
				<tr>
					<th>보너스</th>
					<td><input name="comm"></td>
				</tr>
				<tr>
					<th>부서번호</th>
					<td><c:set var="dept" value="${dept }" /> <c:if
							test="${!empty dept }">
							<select name="deptno">
								<c:forEach items="${dept }" var="dto">
									<option value="${dto.getDeptno() }">${dto.getDname() }</option>
								</c:forEach>
							</select>
						</c:if> <c:if test="${empty dept }">
							<input name="deptno">
						</c:if></td>
				</tr>
			</table>
			<input type="submit" value="사원 등록">
		</form>
	</div>
</body>
</html>