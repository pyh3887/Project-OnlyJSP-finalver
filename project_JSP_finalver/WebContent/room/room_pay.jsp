<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% 
request.setCharacterEncoding("utf-8");
%>
<% String a= request.getParameter("lodging_img"); %>
<% System.out.print(a); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/room.css">
<script type="text/javascript">
window.onload = function() {
	document.getElementById("btn").onclick = function() {
		frm.submit();
	}
	
}
</script>
</head>
<body>
<%@include file="../guest/top4.jsp" %>
<form action="payd.jsp" method="post" name="payfrm">
<div class='container'>
<div class='row'>
<br><br>
<div class='col-md-offset-2 col-md-8' style="text-align:center">
		
			<font style='font-size:50px; font-weight:bold;color:#f08080'>예&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;약</font>	
	</div>
	<br>
	<div class='col-md-offset-2 col-md-8' style="text-align:center">
		<br>	<br>
		<img src="../upload/<%=a%>" style='width:750px;height:320px'><br><br>
			<font style='font-size:35px;color:#fa8072'><%= request.getParameter("rtowname") %></font>
		<br><br>
	</div>
	<div class='col-md-offset-2 col-md-8' style="text-align:center">
		
			<font style='font-size:20px;font-weight:bold;color:#fa8072'><%=request.getParameter("fromDate") %></font> &nbsp;/&nbsp;
			<font style='font-size:20px;font-weight:bold;color:#fa8072'><%=request.getParameter("toDate") %></font>
		<br><br>
	</div>
	
	<div class='col-md-offset-2 col-md-8' style="text-align:center">

		
			<font style='font-size:20px;font-weight:bold;color:#fa8072'><%= request.getParameter("rPri") %>원</font>
			<input type="hidden" name="enter_date" value="<%= request.getParameter("fromDate") %>"> 
			<input type="hidden" name="out_date" value="<%= request.getParameter("toDate") %>">
			<input type="hidden" name="pri" value="<%= request.getParameter("rPri") %>"> 
			<input type="hidden" name="room_no" value="<%= request.getParameter("room_no") %>">
			<input type="hidden" name="id" value="<%= (String)session.getAttribute("id") %>">
	<br><br>
	</div>
	
	<div class='col-md-offset-2 col-md-8'>
			<input type="submit" value="결제하기" class='btn btn-danger btn-block'>
	</div>
</div>
</div>
</form>
</body>
</html>