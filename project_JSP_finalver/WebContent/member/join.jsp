<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8");%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<script type="text/javascript">
window.onload = function(){
	document.getElementById("btnSubmit").onclick = inputCheck;
	document.getElementById("btnId").onclick = idCheck;
}
function idCheck(){
	if(regForm.gogek_id.value ===""){
		alert("id를 입력해주세요");
		regForm.id.focus();
	}else{
		url = "idcheck.jsp?gogek_id=" +regForm.gogek_id.value;
		window.open(url,"gogek_id","width=800,height=300,top=400,left=300");
	}
}

function inputCheck(){
	if(regForm.gogek_name.value === ""){
		alert("이름을 입력하세요");
		regForm.gogek_name.focus();
		return;
	}
	
	if(regForm.gogek_id.value === ""){
		alert("아이디를 입력하세요");
		regForm.gogek_id.focus();
		return;
	}else if((regForm.gogek_id.value < "0" || regForm.gogek_id.value>"9") && (regForm.gogek_id.value < "A" || regForm.gogek_id.value > "Z") && (regForm.gogek_id.value <"a" || regForm.gogek_id.value > "z")){
		alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다");
		return false;
	}
	
	var regExp2 = /^\d{3}\d{3,4}\d{4}/;
	if(!regForm.gogek_tel.value.match(regExp2)){
		alert("번호를 정확히 입력하세요");
		regForm.gogek_tel.focus();
		return;
	}
	
	if(regForm.gogek_passwd.value === ""){
		alert("비밀번호를 입력하세요");
		regForm.gogek_passwd.focus();
		return;
	}
	
	regForm.submit();
}
</script>
</head>
<body>
<%@include file="top.jsp" %>
<br><br><br><br>
<div class="container">

<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">회원가입</h4>
	<p class="text-center">회원가입</p>
	<form name="regForm" action="joincheck.jsp" method="post" >
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="gogek_name" class="form-control" placeholder="Full name" type="text">
        
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="gogek_id" class="form-control" placeholder="ID" type="text">
        <input type="button" value="ID중복확인" id="btnId" class="btn btn-primary btn-sm">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		
    	<input name="gogek_tel" class="form-control" placeholder="Phone number" type="text">
    </div> <!-- form-group// -->
   
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" placeholder="Create password" type="password" name="gogek_passwd">
    </div> <!-- form-group// -->
                                   
    <div class="form-group">
        <input type="button" class="btn btn-primary btn-block" id="btnSubmit" value="가입하기">
    </div> <!-- form-group// -->      
    <p class="text-center">이미 아이디가 있으신가요? <a href="login.jsp">Log In</a> </p>                                                                 
</form>
</article>
</div> <!-- card.// -->

</div> 
<!--container end.//-->

<br><br>

</body>
</html>