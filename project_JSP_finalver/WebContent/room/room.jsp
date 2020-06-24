<%@page import="pack.room.RoomBoardDto"%>
<%@page import="pack.room.RoomDto"%>
<%@page import="pack.room.LodgingDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="fbean" class="pack.room.LodgingFormBean" />
<jsp:setProperty property="*" name="fbean"/>
<jsp:useBean id="lodgingDto" class="pack.room.LodgingDto" />
<jsp:useBean id="roomProc" class="pack.room.RoomProcess" />
<jsp:useBean id="dto" class = "pack.room.RoomDto"></jsp:useBean>
<% String no =request.getParameter("no"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
  
  
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="../css/room.css">


  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">


 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
<script type="text/javascript">
$( function() {
    $( "#datepicker" ).datepicker();
  } );
  
function func() {
	frm.submit();	
}
</script>
</head>
<body>
<%@include file="../guest/top4.jsp" %>

<% ArrayList<LodgingDto> list = (ArrayList<LodgingDto>)roomProc.selectLodg(fbean); %>
<% ArrayList<RoomDto> rolist = (ArrayList<RoomDto>)roomProc.selectRoom(fbean); %>

<div  style=" margin:0 auto;">
<form action="room_detail.jsp" method="post" name="frm" class="frm">
	<table id="mainTa" border="1" style="margin-left: 117px;">
		<tr>
			<td>
			<table border="1" style="width: 100%; height: 500px">
				<c:forEach var="to" items="<%=list %>">
				<tr id="titlePic">
					<td>
						<img src="../upload/${to.lodging_img}" >
					</td>
				<tr>
					<td style="text-align: center;">
						${to.lodging_name}
					</td>
				</tr>
				<tr>
					<td>${to.lodging_loc}
					
					</td>
				</tr>
				</c:forEach>				
			</table>
			<table border="1" style="width: 100%;">
				<c:forEach var="li" items="<%=rolist %>">
				<tr>
					<td>
						<img src="../upload/${li.room_img}" onclick="func()">
				     	<input type="hidden" name="lodging_img" value="${li.room_img}">
				     	
					</td>
					<td>
						<input type="hidden" name="rname" value="${li.room_name}">${li.room_name}
					</td>
					<td>
						<input type="hidden" name="rprice" value="${li.room_price}">
						<fmt:formatNumber value="${li.room_price}" type="number" pattern="#,###" />
					</td>
				</tr>
				
				</c:forEach>
					<% ArrayList<RoomDto> li = (ArrayList<RoomDto>)roomProc.selectLodData(fbean); %>
					<c:forEach var="ro" items="<%=li %>" begin="0" end="0">
				<tr>
					<td colspan="4">
						<h6>※공지사항※</h6>				
						<input type="hidden" name="rcont1" value="${ro.cont1}">
						<input type="hidden" name="rcont2" value="${ro.cont2}"> ${ro.cont2}
						<input type="hidden" name="no1" value="${ro.room_no}">
					</td>
				</tr>
					</c:forEach>
			</table>
			</td>
		</tr>
	</table>

</form>
</div>
</body>
</html>