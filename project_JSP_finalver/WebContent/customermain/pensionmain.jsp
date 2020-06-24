
<%@page import="java.util.ArrayList"%>
<%@page import="pack.business.mainListDto"%>
<%@page import="pack.business.searchBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("utf-8"); 
%>
    
<jsp:useBean id="bean" class="pack.business.searchBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="datalist" class="pack.business.dataList"></jsp:useBean>


<%
System.out.print(bean.getSearch());

ArrayList<mainListDto> list = (ArrayList<mainListDto>)datalist.selectpensionlist();



%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/main/main2.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js/navbar.js"></script>
</head>
<body>


<nav class="navbar navbar-default" role="navigation" style="background-color: #FBEFF2; height: 70px;margin-bottom: 0;" >
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
    </button>
    
    <a class="navbar-brand" href="showall.jsp" style="font-family: 'Gamja Flower', cursive;font-weight: bold;font-size: 30px" >홈</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
   
    <div class="col-sm-3 col-md-3">
        <form action="good.jsp" class="navbar-form frm" role="search" method="post">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="지역 또는 숙소명을 입력하세요" name="search">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit";onclick= "search()"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="login.jsp" style="font-family: 'Gamja Flower', cursive;font-weight: bold; font-size: 30px;">로그인</a></li>
      <li><a href="assign.jsp" style="font-family: 'Gamja Flower', cursive;font-weight: bold; font-size: 30px;">회원가입</a></li>
     
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>
<span class="openmenu" onclick='openNav()' id = 'openbtn'><i class="fa fa-angle-double-left fa-5" aria-hidden="true"></i> open</span>
			
<div class="total">

		<div class="indexbar" id="mysidenav">
		<a href="#" class="closebtn" onclick='closeNav()' style="padding-top: 15px;">x</a>
		<div style="border: 1px solid #000;"><a href="showall.jsp" >전체보기</a></div>
		<div style="border: 1px solid #000;"><a href="motelmain.jsp">모텔</a></div>
		<div style="border: 1px solid #000;"><a href ="hotelmain.jsp">호텔</a></div>
		<div style="border: 1px solid #000;"><a href ="guestmain.jsp">게스트하우스</a></div>
		<div style="border: 1px solid #000;"><a href ="pensionmain.jsp">펜션</a></div>

		</div>

		<div class="contents">

				<div class="contentsitem1" style="border: 1px solid #000;height: 950px;">
				<select>
				<option id="list1" selected="selected">추천순</option>
				<option id="list2">리뷰순</option>
				</select>
				
			
				<table style="width: 100%; height: 420px;">
				<c:set var="list" value="<%=list %>"/>
				<c:if test = "${empty list}">								
				</c:if>
				<tr>
				<c:forEach var="m" items="<%= list %>" begin="0" end="3">
	
				<td><a href="good.jsp?no=${m.lodging_no}">${m.lodging_img }</a><br>${m.lodging_name }<br>${m.lodging_loc }<br></td>
				
				</c:forEach>
				
				</tr>
				<tr>				
				<c:forEach var="m" items="<%= list %>" begin="4" end="7">
	
				<td><a href="good.jsp?no=${m.lodging_no}">${m.lodging_img }</a><br>${m.lodging_name }<br>${m.lodging_loc }<br></td>
				
				
				</c:forEach>
				<c:forEach var="m" items="<%= list %>" begin="8" end="11">
	
				<td><a href="good.jsp?no=${m.lodging_no}">${m.lodging_img }</a><br>${m.lodging_name }<br>${m.lodging_loc }<br></td>
				
				
				</c:forEach>
				
				</tr>
				
				</table>					
			</div>
				
		</div>
</div>


</body>
</html>