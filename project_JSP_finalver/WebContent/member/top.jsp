
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
	log = "<a href='login.jsp'>로그인</a>";
	join = "<a href='join.jsp'>회원가입</a>";
}
else{
	log = "<a href='logout.jsp'>로그아웃</a>";
	join ="<a href='mypage.jsp'>회원정보</a>";
}

if (ceoid != null){
	log = "<a href='logout.jsp'>로그아웃</a>";
	join ="<a href='lodging/lodging_in.jsp'>숙소/객실 등록</a>";
	modify ="<a href='lodging/lodging_mo.jsp'>숙소/객실 수정</a>";
}

	
	
%>
<!DOCTYPE html>
<html>
<head>
<title>타이틀</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
    
    </button>
     <a class="navbar-brand" href="#" style="color: gray;" onclick="history.back()">◀</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
   
    <div class="col-sm-3 col-md-3">
        
    </div>
    <ul class="nav navbar-nav navbar-right">
      
      <li><%=log %></li>
      <li><%=join%></li>
     <li><%=modify%></li>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>
</body>
</html>