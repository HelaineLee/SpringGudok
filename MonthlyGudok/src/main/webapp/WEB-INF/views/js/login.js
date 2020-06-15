

// 조건 미충족 시  submit 불가능

//조건 미충족 시 로그인 submit 불가능
function Slogin_check(){
	if($.trim($("#s_id").val())==""){
  		alert("구독자아이디를 입력하세요");
  		$("#s_id").focus();
  		return false;
  	}
	
	if($.trim($("#spwd").val())==""){
  		alert("비밀번호를 입력하세요");
  		$("#spwd").focus();
  		return false;
  	}
	
};
function Blogin_check(){
	
	if($.trim($("#b_id").val())==""){
		alert("판매자아이디를 입력하세요");
		$("#b_id").focus();
		return false;
	}
	
	if($.trim($("#bpwd").val())==""){
		alert("비밀번호를 입력하세요");
		$("#bpwd").focus();
		return false;
	}
};
// 아이디 찾기 입력안하면 submit 안되도록
function id_find_check(){
	if($.trim($("f_name").val())==""){
  		alert("이름 입력하세요");
  		$("#f_name").focus();
  		return false;
  	}
	
	if($.trim($("f_email").val())==""){
  		alert("이메일을 입력하세요");
  		$("#f_email").focus();
  		return false;
  	}
	
};



