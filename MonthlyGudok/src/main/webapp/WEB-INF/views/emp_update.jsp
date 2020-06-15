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
		<h3>EMP 사원 정보 수정</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br />
		<form method="post"
			action="<%=request.getContextPath()%>/emp_update_ok.do">
			<table width="400">
				<c:set var="dto" value="${update }" />
				<table width="400">
					<tr>
						<th>사원번호</th>
						<td><input name="empno" value="${dto.getEmpno() }"
							readonly="readonly"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input name="ename" value="${dto.getEname() }"></td>
					</tr>
					<tr>
						<th>담당업무</th>
						<td><input name="job" value="${dto.getJob() }"></td>
					</tr>
					<tr>
						<th>담당자</th>
						<td><input name="mgr" value="${dto.getMgr() }"
							readonly="readonly"></td>
					</tr>
					<tr>
						<th>급여</th>
						<td><input name="sal" value="${dto.getSal() }"></td>
					</tr>
					<tr>
						<th>보너스</th>
						<td><input name="comm" value="${dto.getComm() }"></td>
					</tr>
					<tr>
						<th>부서번호</th>
						<td><c:set var="dept" value="${dept }" /> <c:if
								test="${!empty dept }">
								<select name="deptno">
									<c:forEach items="${dept }" var="dept">
										<c:if test="${dto.getDeptno()==dept.getDeptno() }">
											<option value="${dept.getDeptno() }" selected="selected">${dept.getDname() }</option>
										</c:if>
										<c:if test="${dto.getDeptno()!=dept.getDeptno() }">
											<option value="${dept.getDeptno() }">${dept.getDname() }</option>
										</c:if>
									</c:forEach>
								</select>
							</c:if> <c:if test="${empty dept }">
								<input name="deptno">
							</c:if></td>
					</tr>
				</table>
			</table>
			<input type="submit" value="수정">
		</form>
	</div>
</body>
</html>