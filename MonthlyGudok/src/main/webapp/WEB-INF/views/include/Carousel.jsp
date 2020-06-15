<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<!-- 이미지 슬라이드(캐러셀 - Carousel) bootstrap 이미지 크기는 통일시킬 필요성 있어보임. 
		이미지 높이에 맞춰서 슬라이드 틀이 자꾸 들썩거림-->   
   
   	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
  </ol>


	<div class="carousel-inner" role="listbox" align="center">
    <div class="item active">
	<!-- 캐러셀 메인에서 구동시 경로에  . 하나 뺄 것.
			캐러셀.jsp에서 테스트 수행을 원할 경우 ,파일  경로의 맨 앞 .은 2개
	 -->
      <img src="./images/1.png" alt="하트뭐시기">
    </div>
    <div class="item">
      <img src="./images/2.png" alt="핸드폰 케이스">
    </div>

    <div class="item">
      <img src="./images/3.png" alt="꽃">
    </div>

    <div class="item">
      <img src="./images/4.png" alt="꼬따발">
    </div>
    <div class="item">
      <img src="./images/5.png" alt="꼬따발">
    </div>
    <div class="item">
      <img src="./images/6.png" alt="꼬따발">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</body>
</html>