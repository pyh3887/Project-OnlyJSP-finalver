
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

ArrayList<mainListDto> list = (ArrayList<mainListDto>)datalist.selectallist();



%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="../css/main/main2.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="../js/navbar.js"></script>
</head>
<body>


<%@include file="top2.jsp"%>


<span class="openmenu" onclick='openNav()' id = 'openbtn'><i class="fa fa-angle-double-left fa-5" aria-hidden="true">open</i></span>
			
<div class="total">

		<div class="indexbar" id="mysidenav">
		<a href="#" class="closebtn" onclick='closeNav()' style="padding-top: 15px;">x</a>
		<div style="border: 1px solid #000;"><a href="showall.jsp" >전체보기</a></div>
		<div style="border: 1px solid #000;"><a href="motelmain.jsp">모텔</a></div>
		<div style="border: 1px solid #000;"><a href ="hotelmain.jsp">호텔</a></div>
		<div style="border: 1px solid #000;"><a href ="guestmain.jsp">게스트하우스</a></div>
		<div style="border: 1px solid #000;"><a href ="pensionmain.jsp">펜션</a></div>

		</div>

		<div class="contents" style="width: 1450px;">

				<div class="contentsitem1" style="border: 1px solid #000;height: 950px;">
				
				
			
				<table style="width: 1500px; height: 420px;">
				<c:set var="list" value="<%=list %>"/>
				<c:if test = "${empty list}">
				<tr><th colspan="4" style="font-size: 50px;font-style: italic;">찾으시는 자료가 없어요</th></tr> 	
				</c:if>
				<tr>
				<c:forEach var="m" items="<%= list %>" begin="0" end="2">
	
				<td><a href="../room/room.jsp?lodging_no=${m.lodging_no}"><img alt="" src="../upload/${m.lodging_img }"></a> <br>${m.lodging_name }<br>${m.lodging_loc }<br></td>
				
				</c:forEach>
				
				</tr>
				<tr>				
				<c:forEach var="m" items="<%= list %>" begin="3" end="5">
	
				<td><a href="../room/room.jsp?lodging_no=${m.lodging_no}"><img alt="" src="../upload/${m.lodging_img }"></a> <br>${m.lodging_name }<br>${m.lodging_loc }<br></td>
				
				
				</c:forEach>
				<tr>
				<c:forEach var="m" items="<%= list %>" begin="6" end="8">
	
				<td><a href="../room/room.jsp?lodging_no=${m.lodging_no}"><img alt="" src="../upload/${m.lodging_img }"></a> <br>${m.lodging_name }<br>${m.lodging_loc }<br></td>
				
				
				</c:forEach>
				
				</tr>
				
				</table>					
			</div>
				
		</div>
</div>


</body>
</html>