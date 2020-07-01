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


<form action="room_detail.jsp" method="post" name="frm" class="frm">
	<div class='container'>
	<br>
			<div class='row'>
				<c:forEach var="to" items="<%=list %>">
				<div class='col-12 col-md-8'>
						<img src="../upload/${to.lodging_img}" style='width:700px;height:380px'>
				</div>
				<div class='col-6 col-md-4'>
						<h2><b>${to.lodging_name}</h2><br>
						<h4>${to.lodging_loc}</h4><br>
						<% ArrayList<RoomDto> li = (ArrayList<RoomDto>)roomProc.selectLodData(fbean); %>
					<c:forEach var="ro" items="<%=li %>" begin="0" end="0">
				
						<h4>※공지사항※</h4>				
						<input type="hidden" name="rcont1" value="${ro.cont1}">
						<input type="hidden" name="rcont2" value="${ro.cont2}"> ${ro.cont2}
						<input type="hidden" name="no1" value="${ro.room_no}">
					
					</c:forEach>
						
				</div>
				</c:forEach>
				
								
			</div>
			<br>
			<div class='row'>
			
				<c:forEach var="li" items="<%=rolist %>">
				<div class='row'>
					<div class='col-6 col-md-4'>
					<br>
						<img src="../upload/${li.room_img}" onclick="func()">
				     	<input type="hidden" name="lodging_img" value="${li.room_img}">
				     	
					</div>
					<div class='col-12 col-md-4'>
						<input type="hidden" name="rname" value="${li.room_name}"><h3><b>${li.room_name}</b></h3>
						 <br><input type="hidden" name="rprice" value="${li.room_price}">
						<h3><b><fmt:formatNumber value="${li.room_price}" type="number" pattern="#,###" />원</b></h3>
						<br><input type='submit' class='btn btn-danger btn-block' value='예약하기'>
					</div>
					
				</div>
				
				</c:forEach>
					<br><br>
			
			</div>
		
		
	</div>

</form>

</body>
</html>