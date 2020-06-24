
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%request.setCharacterEncoding("UTF-8"); %>    
<%
String id = (String)session.getAttribute("id");
String ceoid = (String)session.getAttribute("ceoid");
String log = "";
String join = "";
String modify = "";



if (id == null){
	log = "<a href='../member/login.jsp'class='name'>로그인</a>";
	join = "<a href='../member/join.jsp'class='join'>/회원가입</a>";
}
else{
	log = "<a href='../member/logout.jsp'class='name'>로그아웃</a>";
	join ="<a href='../member/mypage.jsp'class='join'>/회원정보</a>";
}

if (ceoid != null){
	log = "<a href='../member/logout.jsp'class='name'>로그아웃</a>";
	join ="<a href='../lodging/lodging_in.jsp'class='name'>/숙소,객실 등록</a>";
	modify ="<a href='../lodging/lodging_myhouse.jsp'class='name'>/내 숙소확인</a>";
}

	
	
%>
<!DOCTYPE html>
<html>
<head>
<title>타이틀</title>
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../css/landing-page.min.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">

<style type="text/css">
.name{
	color: black;
	font-family: 'Gamja Flower', cursive;
	font-size: 25px

}
.join{
	color: blue;
	font-family: 'Gamja Flower', cursive;
	font-size: 25px

}
</style>
</head>
<body>

   
    <div>
		<div class="top" style="background-color: #FBEFF2">
			<span><a onclick="history.back()">◀</a></span>
			<div class="top_login">
				<%=log %>&nbsp;&nbsp;&nbsp;
    			<%=join%>&nbsp;&nbsp;&nbsp;
     			<%=modify%>&nbsp;&nbsp;&nbsp;
    
			</div>
			
		</div>
	</div>

    
    


</body>
</html>