<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function showDiv2() {
		($(".category").css("display") == "block") ? $(".category").css(
				"display", "none") : $(".category").css("display", "block");
	}
</script>
<style type="text/css">
	#top_login {
		background-color: #EAEAEA;
		height: 30px;
		border: 1px solid lightgray;
		padding:8px;
		font-size: 13px;
		font-family: "나눔고딕";
	}
	
	.bt {
		background-color: #E4F7BA;
		border: none;
		padding: 10px;
		font-family: "나눔스퀘어라운드";		
		text-align: center;
		font-size: 15px;
		font-weight: bold;
		border-radius: 5px;
		
	}
	
	.box {
		height: 35px;
		border: none;
		border-bottom: 2px solid #E4F7BA;
		width: 300px;		
	}
	
	#search{
		height: 35px;
		border: 2px solid #E4F7BA;		
		border-radius: 5px;
		font-family: "나눔고딕";		
		align: center;
		font-size: 15px;
	}
	
	.category{
		font-family: "나눔고딕";		
		text-align: center;
		font-size: 15px;
		width: 60%;
		height: 0;
		positon: fix;
	}
</style>
</head>
<body>	
	<c:if test="${cnum==1 }">
	<div id="header">
		<div id="top_login" align="right">			
			<a href="<%=request.getContextPath() %>/gotologin.do">${sname }님</a>&nbsp;&nbsp;
			<a href="<%=request.getContextPath() %>/logout.do">로그아웃</a>&nbsp;&nbsp;
			<a href="<%=request.getContextPath() %>/faq_list.do">고객센터</a>
		</div><br /><br />							
		<div id="logo">		
		  <form method="post" action="pSearch.do">											
			<a href="./Smain.jsp">
				<img src="images/MGlogo.png" height="40" border="0">
			</a>
			<select name="find_field" id="search">
				<option value="pname">상품명</option>
				<option value="bname">판매자명</option>
			</select>
			<input type="text" name="find_name" class="box"/>
			<input type="submit" value="검색" class="bt"/>
			 <img src="images/category.PNG" width="50px" class="navi" onclick="showDiv2()"/> &nbsp; &nbsp; &nbsp; &nbsp;
				<p class="category" style="display: none">
					<a href="hr_cgory.do?cnum=10"> 핸드폰 </a> &nbsp; &nbsp; &nbsp;
					&nbsp; <a href="hr_cgory.do?cnum=11"> 꽃다발 </a> &nbsp; &nbsp;
					&nbsp; &nbsp; <a href="hr_cgory.do?cnum=12"> 여성용품 </a> &nbsp;
					&nbsp; &nbsp; &nbsp; <a href="hr_cgory.do?cnum=13"> 화장품 </a>
					&nbsp; &nbsp; &nbsp; &nbsp; <a href="hr_cgory.do?cnum=14"> 패션
					</a></p>			
		  </form>		  
		</div>							
	</div>
	<br /><br />
	</c:if>
	
	<c:if test="${cnum==2 }">
	<div id="header">	
		<div id="top_login" align="right">			
			<a href="<%=request.getContextPath() %>/gotologin.do">${bname }님</a>&nbsp;&nbsp;
			<a href="<%=request.getContextPath() %>/logout.do">로그아웃</a>&nbsp;&nbsp;
			<a href="<%=request.getContextPath() %>/faq_list.do">고객센터</a>
		</div><br /><br />		
		<div id="logo">
		  <form method="post" action="pSearch.do">		  
			<a href="./Bmain.jsp">
				<img src="images/MGlogo.png" height="40" border="0">
			</a>
			<select name="find_field" id="search">
				<option value="pname">상품명</option>
				<option value="bname">판매자명</option>
			</select>
			<input type="text" name="find_name" class="box"/>
			<input type="submit" value="검색" class="bt"/>
			<img src="images/category.PNG" width="50px" class="navi" onclick="showDiv2()"/> &nbsp; &nbsp; &nbsp; &nbsp;
				<p class="category" style="display: none">
					<a href="hr_cgory.do?cnum=10"> 핸드폰 </a> &nbsp; &nbsp; &nbsp;
					&nbsp; <a href="hr_cgory.do?cnum=11"> 꽃다발 </a> &nbsp; &nbsp;
					&nbsp; &nbsp; <a href="hr_cgory.do?cnum=12"> 여성용품 </a> &nbsp;
					&nbsp; &nbsp; &nbsp; <a href="hr_cgory.do?cnum=13"> 화장품 </a>
					&nbsp; &nbsp; &nbsp; &nbsp; <a href="hr_cgory.do?cnum=14"> 패션
					</a></p>	
		  </form>	
		</div>			
	</div>
	<br /><br />
	</c:if>
	
	<c:if test="${cnum==0 || empty cnum}">
	<div id="header">	
		<div id="top_login" align="right">		
			<a href="<%=request.getContextPath() %>/login.do">로그인</a>&nbsp;&nbsp;	
			<a href="<%=request.getContextPath() %>/join.do">회원가입</a>&nbsp;&nbsp;
			<a href="<%=request.getContextPath() %>/faq_list.do">고객센터</a>		
		</div><br /><br />
		<div id="logo">
		  <form method="post" action="pSearch.do">			
			<a href="./main.jsp">
				<img src="images/MGlogo.png" height="40" border="0">
			</a>
			<select name="find_field" id="search">
				<option value="pname">상품명</option>
				<option value="bname">판매자명</option>
			</select>
			<input type="text" name="find_name" class="box"/>
			<input type="submit" value="검색" class="bt"/>
			<img src="images/category.PNG" width="50px" class="navi" onclick="showDiv2()"/> &nbsp; &nbsp; &nbsp; &nbsp;
				<p class="category" style="display: none">
					<a href="hr_cgory.do?cnum=10"> 핸드폰 </a> &nbsp; &nbsp; &nbsp;
					&nbsp; <a href="hr_cgory.do?cnum=11"> 꽃다발 </a> &nbsp; &nbsp;
					&nbsp; &nbsp; <a href="hr_cgory.do?cnum=12"> 여성용품 </a> &nbsp;
					&nbsp; &nbsp; &nbsp; <a href="hr_cgory.do?cnum=13"> 화장품 </a>
					&nbsp; &nbsp; &nbsp; &nbsp; <a href="hr_cgory.do?cnum=14"> 패션
					</a></p>
		  </form>
		</div>			
	</div>
	<br /><br />
	</c:if>
</body>
</html>