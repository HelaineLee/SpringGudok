﻿
function bidCheck(){//판매자 아이디 중복확인 버튼
	
	
	  var b_id = $("#b_id").val();
	
     
  // 입력 길이 체크
     
     if($.trim($("#b_id").val())==""){ // 아이디 입력창이 빈칸일 때
		  var warningTxt = '<font color="red" size="2px">아이디를 입력해주세요.</font>';
         $("#idcheck").text('');   //   idcheck 영역 초기화
         $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
         $("#idcheck").append(warningTxt);
         
         return false; 
         
	  }else if($.trim($("#b_id").val()).length <4){//아이디 4자 이하
        var warningTxt = '<font color="red" size="2px">아이디는 4자 이상이어야 합니다.</font>';
        $("#idcheck").text('');   //   idcheck 영역 초기화
        $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
        $("#idcheck").append(warningTxt);
        
        return false; 
     }else if($.trim($("#b_id").val()).length > 16){ //아이디 16자 이상
         var warningTxt = '<font color="red" size="2px">아이디는 16자 이하여야 합니다.</font>';
         $("#idcheck").text('');   //   idcheck 영역 초기화
         $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
         $("#idcheck").append(warningTxt);
         
         return false; 
      }else {
		 $.ajax({
			type : "post",//데이터 전송 방식(GET, POST 방식)
		 	url : "Bid_existCheck.jsp",
		 	data : {"b_id" : b_id},
			datatype : "jsp" ,//통신할 문서의 데이터 타입 설정
			//통신이 성공한 경우 결과값을 (data)에 저장
			success : function(data) {
				if(data == 1) { //아이디가 중복인 경우
					var warningTxt = '<font color="red" size="2px">중복아이디 입니다.</font>';
					$("#idcheck").text('');   //   idcheck 영역 초기화
		            $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
		            $("#idcheck").append(warningTxt);
		           
		            return false; 
				}else if(data == 0){ //아이디가 중복이 아닌경우
					var warningTxt = '<font color="green" size="2px">사용 가능한 아이디 입니다.</font>';
		            $("#idcheck").text('');   //   idcheck 영역 초기화
		            $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
		            $("#idcheck").append(warningTxt);
		            
		            return false; 
				}
			},
			error : function(){
				alert("data error");
			}
		 });//Ajax end
	  }//if문 end
};//function idCheck() end

function sidCheck(){//구독자 아이디 중복확인 버튼
	
	
	  var s_id = $("#s_id").val();
	
   
// 입력 길이 체크
   
   if($.trim($("#s_id").val())==""){ // 아이디 입력창이 빈칸일 때
		  var warningTxt = '<font color="red" size="2px">아이디를 입력해주세요.</font>';
       $("#idcheck").text('');   //   idcheck 영역 초기화
       $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
       $("#idcheck").append(warningTxt);
       $("#s_id").val('').focus();
       return false; 
       
	  }else if($.trim($("#s_id").val()).length <4){//아이디 4자 이하
      var warningTxt = '<font color="red" size="2px">아이디는 4자 이상이어야 합니다.</font>';
      $("#idcheck").text('');   //   idcheck 영역 초기화
      $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
      $("#idcheck").append(warningTxt);
      $("#s_id").val('').focus();
      return false; 
   }else if($.trim($("#s_id").val()).length > 16){ //아이디 16자 이상
       var warningTxt = '<font color="red" size="2px">아이디는 16자 이하여야 합니다.</font>';
       $("#idcheck").text('');   //   idcheck 영역 초기화
       $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
       $("#idcheck").append(warningTxt);
       $("#s_id").val('').focus();
       return false; 
    }else {
		 $.ajax({
			type : "post",//데이터 전송 방식(GET, POST 방식)
		 	url : "Sid_existCheck.jsp",
		 	data : {"s_id" : s_id},
			datatype : "jsp" ,//통신할 문서의 데이터 타입 설정
			//통신이 성공한 경우 결과값을 (data)에 저장
			success : function(data) {
				if(data == 1) { //아이디가 중복인 경우
					var warningTxt = '<font color="red" size="2px">중복아이디 입니다.</font>';
					$("#idcheck").text('');   //   idcheck 영역 초기화
		            $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
		            $("#idcheck").append(warningTxt);
		            $("#s_id").focus();
		            return false; 
				}else if(data == 0){ //아이디가 중복이 아닌경우
					var warningTxt = '<font color="green" size="2px">사용 가능한 아이디 입니다.</font>';
		            $("#idcheck").text('');   //   idcheck 영역 초기화
		            $("#idcheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
		            $("#idcheck").append(warningTxt);
		            $("#pwd1").focus();
		            return false; 
				}
			},
			error : function(){
				alert("data error");
			}
		 });//Ajax end
	  }//if문 end
};//function idCheck() end



function bnameCheck(){ // 브랜드명 중복확인 버튼
	
	  var bname = $("#bname").val();
   
// 입력 길이 체크
   
   if($.trim($("#bname").val())==""){ // 브랜드명 입력창이 빈칸일 때
		  var warningTxt = '<font color="red" size="2px">브랜드 이름을 입력해주세요.</font>';
       $("#nameCheck").text('');   //   idcheck 영역 초기화
       $("#nameCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
       $("#nameCheck").append(warningTxt);
      
       return false; 
       
	  }else if($.trim($("#bname").val()).length <2){//브랜드명 1자 이하
      var warningTxt = '<font color="red" size="2px">브랜드 이름은 2자 이상이어야 합니다.</font>';
      $("#nameCheck").text('');   //   idcheck 영역 초기화
      $("#nameCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
      $("#nameCheck").append(warningTxt);
    
      return false; 
   }else if($.trim($("#bname").val()).length > 11){ //브랜드명 10자 이상
       var warningTxt = '<font color="red" size="2px">브랜드 이름은 10자 이하여야 합니다.</font>';
       $("#nameCheck").text('');   //   idcheck 영역 초기화
       $("#nameCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
       $("#nameCheck").append(warningTxt);
      
       return false; 
    }else {
		 $.ajax({
			type : "post",//데이터 전송 방식(GET, POST 방식)
		 	url : "bnameCheck.jsp",
		 	data : {"bname" : bname},
			datatype : "jsp" ,//통신할 문서의 데이터 타입 설정
			//통신이 성공한 경우 결과값을 (data)에 저장
			success : function(data) {
				if(data == 1) { //브랜드 이름이 중복인 경우
					var warningTxt = '<font color="red" size="2px">이미 존재하는 브랜드 이름입니다.</font>';
					$("#nameCheck").text('');   //   idcheck 영역 초기화
		            $("#nameCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
		            $("#nameCheck").append(warningTxt);
		           
		            return false; 
				}else if(data == 0){ //브랜드명이 중복이 아닌경우
					var warningTxt = '<font color="green" size="2px">사용 가능한 브랜드 이름입니다.</font>';
		            $("#nameCheck").text('');   //   idcheck 영역 초기화
		            $("#nameCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
		            $("#nameCheck").append(warningTxt);
		           
		            return false; 
				}
			},
			error : function(){
				alert("data error");
			}
		 });//Ajax end
	  }//if문 end
};//function bnameCheck() end

//비밀번호 길이제한, 일치 확인
function pwdCheck(){ // 
	if($.trim($("#pwd1").val())==""){ // 비번1 입력창이 빈칸일 때
		  var warningTxt = '<font color="red" size="2px">비밀번호를 입력해주세요.</font>';
       $("#pwdCheck").text('');   //   idcheck 영역 초기화
       $("#pwdCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
       $("#pwdCheck").append(warningTxt);
       return false; 
       
	  }else if($.trim($("#pwd1").val()).length <8){//비밀번호 8자 이하
      var warningTxt = '<font color="red" size="2px">비밀번호는 8자 이상이어야 합니다.</font>';
      $("#pwdCheck").text('');   //   idcheck 영역 초기화
      $("#pwdCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
      $("#pwdCheck").append(warningTxt);
      return false; 
      
   }else if($.trim($("#pwd1").val()).length > 16){ //비밀번호 16자 초과
       var warningTxt = '<font color="red" size="2px">비밀번호는 16자 이하여야 합니다.</font>';
       $("#pwdCheck").text('');   //   idcheck 영역 초기화
       $("#pwdCheck").show();   //   sapn 태그 idcheck 영역을 보이게 하자.
       $("#pwdCheck").append(warningTxt);
       return false; 
       
   }else if($.trim($("#pwd1").val())==$.trim($("#pwd2").val())){
		 var warningTxt = '<font color="green" size="2px">비밀번호가 일치합니다.</font>';
       $("#pwdCheck").text('');   //   idcheck 영역 초기화
       $("#pwdCheck").show();   //   sapn 영역을 보이게 하자.
       $("#pwdCheck").append(warningTxt);
		
	}else if($.trim($("#pwd1").val())!==$.trim($("#pwd2").val())){
		 var warningTxt = '<font color="red" size="2px">비밀번호가 일치하지 않습니다.</font>';
       $("#pwdCheck").text('');   //   idcheck 영역 초기화
       $("#pwdCheck").show();   //   sapn 영역을 보이게 하자.
       $("#pwdCheck").append(warningTxt);
		 return false; 
		}
};//비밀번호 확인 메서드 끝


	function ridCheck(){
		var r_id = $("#r_id").val();
		$.ajax({
	      type : "post",//데이터 전송 방식(GET, POST 방식)
	      url : "ridCheck.jsp",
	      data : {"r_id" : r_id},
	      datatype : "jsp" ,//통신할 문서의 데이터 타입 설정
	      //통신이 성공한 경우 결과값을 (data)에 저장
	      success : function(data) {
	        if(data == 1) { //아이디가 존재하는 경우
	      	   alert("포인트 500점 적립!");
	       	   $("#spoint").val('500');
	           return false; 
	        }else if(data == 0){ //아이디가 존재하지 않는 경우
	       	   alert("존재하지 않는 아이디입니다.");
	           return false;
	        }
	     },
	       error : function(){
	       alert("data error");
	        }
	    });	
	}

	function tot_Check(){
	    if($.trim($("s_id").val())==""){
	       alert("아이디를 입력하세요");
	       $("#s_id").focus();
	       return false;
	    }
	    if($.trim($("#pwd1").val())==""){
	       alert("비밀번호를 입력하세요");
	       $("#pwd1").focus();
	       return false;
	    }
	    if($.trim($("#pwd2").val())==""){
	       alert("비밀번호 확인을 입력하세요");
	       $("#pwd2").focus();
	       return false;
	    }
	    if($.trim($("#pwd1").val()) 
	          != $.trim($("#pwd2").val())){
	       alert("비밀번호가 일치하지 않습니다");
	       $("#pwd1").focus();//비번입력창으로 초기화
	       return false;
	    }
	    if($.trim($("#name").val())==""){
	       alert("이름을 입력하세요");
	       $("#name").focus();
	       return false;
	    }
	    if($.trim($("#addr").val())==""){
	       alert("주소를 입력하세요");
	       $("#addr").focus();
	       return false;
	    }	    
	}
	
	
function Btot_Check(){
		
	  	if($.trim($("#b_id").val())==""){
	  		alert("아이디를 입력하세요");
	  		$("#b_id").focus();
	  		return false;
	  	}
	  	if($.trim($("#pwd1").val())==""){
	  		alert("비밀번호를 입력하세요");
	  		$("#pwd1").focus();
	  		return false;
	  	}
	  	if($.trim($("#pwd2").val())==""){
	  		alert("비밀번호확인을 입력하세요");
	  		$("#pwd2").focus();
	  		return false;
	  	}
	  	if($.trim($("#pwd1").val()).length <8){//비밀번호 8자 이하
	    	 alert("비밀번호길이를 확인해주세요");
	         return false; 
	         
	      }
 	  
 	 	if($.trim($("#pwd1").val()).length > 16){ //비밀번호 16자 초과
	    	  alert(" 비밀번호 길이를 확인해주세요");
	          return false; 
	          
	      }
	  	if($.trim($("#pwd1").val()) 
	  			!= $.trim($("#pwd2").val())){
	  		alert("비밀번호가 일치하지 않습니다");
	  		$("#pwd1").focus();
	  		return false;
	  	}
	  	
	  	if($.trim($("#bceo").val())==""){
	  		alert("대표 이름을 입력하세요");
	  		$("#bceo").focus();
	  		return false;
	  	}
	  	if($.trim($("#bname").val())==""){
	  		alert("브랜드 이름을 입력하세요");
	  		$("#bname").focus();
	  		return false;
	  	}
	  	
	  	var b_id = $("#b_id").val();
		
	     
	    // 입력 길이 체크
	       
	      if($.trim($("#b_id").val()).length <4){//아이디 4자 이하
	    	  alert("아이디를 확인해주세요");
	          
	          return false; 
	       }else if($.trim($("#b_id").val()).length > 16){ //아이디 16자 이상
	    	   alert("아이디를 확인해주세요");
	           
	           return false; 
	        }else {
	  		 $.ajax({
	  			type : "post",//데이터 전송 방식(GET, POST 방식)
	  		 	url : "Bid_existCheck.jsp",
	  		 	data : {"b_id" : b_id},
	  			datatype : "jsp" ,//통신할 문서의 데이터 타입 설정
	  			//통신이 성공한 경우 결과값을 (data)에 저장
	  			success : function(data) {
	  				if(data == 1) { //아이디가 중복인 경우
	  					alert("아이디를 확인해주세요");
	  		           
	  		            return false; 
	  				}
	  			},
	  			error : function(){
	  				alert("data error");
	  			}
	  		 });//Ajax end
	  	  }//if문 end
	  	  
	      
	  	  
	  	  
	      var bname = $("#bname").val();
	      
	   // 입력 길이 체크
	      
	     if($.trim($("#bname").val()).length <2){//브랜드명 1자 이하
	        
	         alert("브랜드 이름을 확인해주세요");
	         return false; 
	      }else if($.trim($("#bname").val()).length > 11){ //브랜드명 10자 이상
	    	  alert("브랜드 이름을 확인해주세요");
	         
	          return false; 
	       }else {
	   		 $.ajax({
	   			type : "post",//데이터 전송 방식(GET, POST 방식)
	   		 	url : "bnameCheck.jsp",
	   		 	data : {"bname" : bname},
	   			datatype : "jsp" ,//통신할 문서의 데이터 타입 설정
	   			//통신이 성공한 경우 결과값을 (data)에 저장
	   			success : function(data) {
	   				if(data == 1) { //브랜드 이름이 중복인 경우
	   				 alert("브랜드 이름을 확인해주세요");
	   		           
	   		            return false; 
	   				}
	   			},
	   			error : function(){
	   				alert("data error");
	   			}
	   		 });//Ajax end
	   	  }//if문 end
	   	  
	    
	   	  
	  }

function Stot_Check(){
	
  	if($.trim($("#s_id").val())==""){
  		alert("2. ");
  		$("#s_id").focus();
  		return false;
  	}
  	if($.trim($("#pwd1").val())==""){
  		alert("비밀번호를 입력하세요");
  		$("#pwd1").focus();
  		return false;
  	}
  	if($.trim($("#pwd2").val())==""){
  		alert("비밀번호확인을 입력하세요");
  		$("#pwd2").focus();
  		return false;
  	}
  	if($.trim($("#pwd1").val()).length <8){//비밀번호 8자 이하
    	 alert(" 비밀번호길이를 확인해주세요");
         return false; 
         
      }
	  
	 	if($.trim($("#pwd1").val()).length > 16){ //비밀번호 16자 초과
    	  alert(" 비밀번호 길이를 확인해주세요");
          return false; 
          
      }
  	if($.trim($("#pwd1").val()) 
  			!= $.trim($("#pwd2").val())){
  		alert("비밀번호가 일치하지 않습니다");
  		$("#pwd1").focus();
  		return false;
  	}
  	
  	if($.trim($("#name").val())==""){
  		alert("대표 이름을 입력하세요");
  		$("#bceo").focus();
  		return false;
  	}

  	
  	var s_id = $("#s_id").val();
	
     
    // 입력 길이 체크
       
      if($.trim($("#s_id").val()).length <4){//아이디 4자 이하
    	  alert("아이디를 확인해주세요");
          
          return false; 
       }else if($.trim($("#s_id").val()).length > 16){ //아이디 16자 이상
    	   alert("아이디를 확인해주세요");
           
           return false; 
        }else {
  		 $.ajax({
  			type : "post",//데이터 전송 방식(GET, POST 방식)
  		 	url : "Sid_existCheck.jsp",
  		 	data : {"s_id" : s_id},
  			datatype : "jsp" ,//통신할 문서의 데이터 타입 설정
  			//통신이 성공한 경우 결과값을 (data)에 저장
  			success : function(data) {
  				if(data == 1) { //아이디가 중복인 경우
  					alert("아이디를 확인해주세요");
  		           
  		            return false; 
  				}
  			},
  			error : function(){
  				alert("data error");
  			}
  		 });//Ajax end
  	  }//if문 end
  	  
  }

function terms_check(){
   	window.open("terms.do","월간구독 판매자 이용약관",
    			"width=450,height=150");
    	//자바스크립트에서 window 객체의 open()메서드로 새로운 공지창을 만듬
    	//폭이 450,높이 150 인 새로운 공지창을 만듬.
}



	

	