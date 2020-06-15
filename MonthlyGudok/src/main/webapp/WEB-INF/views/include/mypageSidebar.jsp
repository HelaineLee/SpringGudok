<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

html, body{
	height: 100%;
}

nav, section {
	float: left;
	height: 100%;
	text-align: left;
}

</style>
</head>
<body>
	<c:if test="${cnum==1 }">
		<nav>
		  <ul>
		  	<li><a href="smypage_list.do">회원정보</a></li>
		  	<li>구독 관리
		  		<ul>
		  			<li><a href="recsub_list.do?sid=${s_id }">구독 목록</a></li>
		  			<li><a href="recend_list.do?sid=${s_id }">구독 만료 목록</a></li>
		  			<li><a href="reccan_list.do?sid=${s_id }">해지목록</a></li>
		  			<li><a href="cart_list.do?sid=${s_id }">장바구니</a></li>
		  		</ul>
		  	</li>		  	
		  	<li><a href="rev_list.do">나의 리뷰 관리</a></li>
		  	<li><a href="<%=request.getContextPath()%>/qna_list.do">Q&A 게시판</a></li>
		  </ul>
		</nav>
	</c:if>
	<c:if test="${cnum==2}">
		<nav>
		  <ul>
		  	<li><a href="bmemberMypage.do">회원정보</a></li>
		  	<li>매출 조회
		  		<ul>
		  			<li><a href="monthlySales.do">월간 매출 조회</a></li>
		  			<li><a href="yearlySales.do">연간 매출 조회</a></li>
		  		</ul>
		  	</li>
		  	<li><a href="productList.do">나의 상품 관리</a></li>
		  	<li><a href="rev_list.do">상품 리뷰 관리</a></li>
		  	<li><a href="subscriberList.do">구독자 조회</a></li>
		  	<li><a href="<%=request.getContextPath()%>/qna_list.do">Q&A 게시판</a></li>
		  </ul>
		</nav>
	</c:if>	
</body>
</html>