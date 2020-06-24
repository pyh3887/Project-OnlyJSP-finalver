<%@page import="pro.business.GogekDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="bean" class='pro.business.GogekBean'></jsp:useBean>
<jsp:setProperty property="*" name="bean" />
<jsp:useBean id="gogekProcess" class="pro.business.GogekProcess"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8");
	String gogek_id = request.getParameter("gogek_id");

	GogekDto dto = (GogekDto) gogekProcess.selectDataPart(gogek_id);
%>
<!DOCTYPE html>
<html>
<head>
<title>ID 중복확인</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" href="css/style.css">

<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>




	<main class="login-form">
	<div class="cotainer">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">ID 중복확인</div>
					<div class="card-body">
						
							<div class="form-group row">
								<label for="email_address"
									class="col-md-4 col-form-label text-md-right"><b><%=gogek_id%></b>
									:</label>
								<div class="col-md-6">
								<c:set var="dto" value="<%=dto%>"></c:set>
									<c:choose>
										<c:when test="${!empty dto}">
											이미 사용중인 아이디 입니다.<p /><br><br>
											<a href="#"
												onclick="opener.document.regForm.gogek_id.focus(); window.close()" class="btn btn-primary">닫기</a>
										</c:when>
										<c:otherwise>
											사용 가능한 아이디 입니다.<p /><br><br>
											<a href="#"
												onclick="opener.document.regForm.gogek_tel.focus(); window.close()" class="btn btn-primary">닫기</a>
										</c:otherwise>
									</c:choose>

								</div>
							</div>
					
					</div>
					
				</div>
			</div>
		</div>
	</div>
	

	</main>

</body>
</html>