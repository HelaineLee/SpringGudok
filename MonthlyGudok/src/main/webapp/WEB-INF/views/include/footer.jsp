<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	
	
	li{
		list-style:none;
	}
	.garo a{
	
		align : center;
		display: inline;
		overflow: auto;
		font-color: red;
		float: left;	
		margin-left: 240px;
	}
	
	.sangho{
		margin-top: auto;
 		/* margin-left: 270px; */ 
	}
	
	
	
	 a:link { color: red; text-decoration: none;}
	 a:visited { color: black; text-decoration: none;}
	 a:hover { color: blue; text-decoration: underline;}
	 
	
	header {
		position: relateve;
		height: 50px;
		
	}
	html, body{
	
		margin: 0;
		padding: 0;
		height: 100%;
	}
	
	.garowrite{
		margin-top: 20px;
	}
	
	.content{
		height: 100%;
	}
	
	footer{ 
		position:flex; 
		padding: 15px;
		width: 100%; 
		background:grey; 
		color: white;		
		  }
	 
</style>
<title>Insert title here</title>
</head>
<body>

<!-- 본문 -->
<div class="content">
</div>
<footer>
	<div >
		<ul class="garowrite">
			<li class="garo"><a href="">기업 소개</a></li>
			<li class="garo"><a href="">이용 약관</a></li>
			<li class="garo"><a href="">개인 정보 취급 방침</a></li>
			<li class="garo"><a href="">공지사항</a></li>
			<li class="garo"><a href="">자주 묻는 질문</a></li>
		</ul>
	</div>
	<br/><br/><br/>
	<div>	
		<ul class="sangho" align="center">
			<li>상호명 :(주)창업코딩왕  | 대표이사 : 전설의 코딩왕 <strong>코. D. 코피</strong></li>
			<li>사업자번호 : 007-82-00700 | 서울특별시 마포구 월드컵북로 21 풍성빌딩 2층 C강의실 1분단 3,4열</li>
			<li>Copyright © all right reserve</li>
		</ul>
	</div>
</footer>

</body>
</html>
