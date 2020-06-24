<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link href="<c:url value="/css/logincss.css" />" rel="stylesheet"
	id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		 
		$('#btnlogin').click(function() {
			var id = $("input[name='gogek_id']");
	        if( id.val() =='') {
	            alert("아이디를 입력하세요");
	            id.focus();
	            return false;
	        }
	        var pwd = $("input[name='gogek_passwd']");
	        if( pwd.val() =='') {
	            alert("비밀번호를 입력하세요");
	            pwd.focus();
	            return false;
	        }
	        
			var action = $('#frm').attr("action");
			var formdata = {
				gogek_id : $('#gogek_id').val(),
				gogek_passwd : $('#gogek_passwd').val()
			};
			$.ajax({
				type : "POST",
				url : action,
				data : formdata,
				success : function(response) {
					if (response.trim() == "success") {
						sessionStorage.setItem("gogek_id", formdata.userid);
						alert("로그인 성공!")
						location.href = "../guest/index.jsp";
					} else {
						alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
						history.back();
					}
					
				},
				error : function() {
					alert("ERROR");
				}

			});

		});

	});
</script>
</head>
<body>
	<%@include file="top.jsp"%>
	<div class="main">


		<div class="container">
			<center>
				<div class="middle">
					<div id="login">

						<form action="logincheck.jsp" method="post" id="frm" name="frm">

							<fieldset class="clearfix">

								<p>
									<span class="fa fa-user"></span><input type="text"
										name="gogek_id" Placeholder="Username" id="gogek_id" required="required">
								</p>
								<!-- JS because of IE support; better: placeholder="Username" -->
								<p>
									<span class="fa fa-lock"></span><input type="password"
										name="gogek_passwd" Placeholder="Password" id="gogek_passwd" required="required"
										>
								</p>
								<!-- JS because of IE support; better: placeholder="Password" -->

								<div>
									<span
										style="width: 48%; text-align: left; display: inline-block;"><a
										class="small-text" href="#"> </a></span> <span
										style="width: 50%; text-align: right; display: inline-block;"><input
										type="submit" value="Sign In" id="btnlogin"></span>
								</div>

							</fieldset>
							<div class="clearfix"></div>
						</form>

						<div class="clearfix"></div>

					</div>
					<!-- end login -->
					<div class="logo">
						LOGO

						<div class="clearfix"></div>
					</div>

				</div>
			</center>  
		</div>

	</div>
</body>
</html>