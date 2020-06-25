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
<body style="height: 100%">
<%@include file="../guest/top4.jsp" %>

<% ArrayList<LodgingDto> list = (ArrayList<LodgingDto>)roomProc.selectLodg(fbean); %>
<% ArrayList<RoomDto> rolist = (ArrayList<RoomDto>)roomProc.selectRoom(fbean); %>


<form action="room_detail.jsp" method="post" name="frm" class="frm">

<div style="margin-left: auto;margin-right: auto;height: 1000px;width: 700px; ">
	<div style= "width: inherit; height: 65%;">
		<img src="../upload/${to.lodging_img}" >
		
	</div>
	<div style="width: inherit; height:35%">
	<div style="height:20%">
	${to.lodging_name}
	</div >	
	<div style="height:80%">
	${to.lodging_loc}
	</div>
	</div>
	
</div>
</form>

</body>
</html>