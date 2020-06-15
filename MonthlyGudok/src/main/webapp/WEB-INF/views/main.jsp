<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<div align="center">
		<hr width="500" color="#D9D6FF" />
		<h3>메인 페이지</h3>
		<hr width="500" color="#B5B2FF" />
		<br /> <br /> <a href="<%=request.getContextPath()%>/emp_list.do">[전체
			목록]</a> <br /> <br /> <a
			href="<%=request.getContextPath()%>/mem_list.do">[멤버 목록]</a> <br />
		<br />
		<a href="<%=request.getContextPath()%>/board_list.do">[게시판 목록]</a>
	</div>
</body>
</html>
