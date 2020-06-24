
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
	modify ="<a href='../lodging/lodging_mo.jsp'class='name'>/숙소,객실 수정</a>";
}

	
	
%>
<!DOCTYPE html>
<html>
<head>
<title>타이틀</title>
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="../css/main/main2.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="../js/navbar.js"></script>

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

   
<nav class="navbar navbar-default" role="navigation" style="background-color: #FBEFF2; height: 70px;margin-bottom: 0;" >
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
    </button>
    
    <a class="navbar-brand" onclick="history.back()" style="font-family: 'Gamja Flower', cursive;font-weight: bold;font-size: 30px;" >뒤로가기</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
   
    <div class="col-sm-3 col-md-3">
        <form action="menu_all.jsp" class="navbar-form frm" role="search" method="post">
        <div class="input-group">
            
            <div class="input-group-btn">
               
            </div>
        </div>
        </form>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
      <li><%=log %>&nbsp;&nbsp;&nbsp;</li>
      <li><%=join%>&nbsp;&nbsp;&nbsp;</li>
      <li><%=modify%>&nbsp;&nbsp;&nbsp;</li>
     
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>


</body>
</html>