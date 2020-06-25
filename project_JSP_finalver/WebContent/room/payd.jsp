<%@page import="pack.room.GogekFormBean"%>
<%@page import="pack.room.GogekDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="rbean" class="pack.room.ReserveBean" />


<jsp:setProperty property="*" name="rbean" />
<jsp:useBean id="roomproc" class="pack.room.RoomProcess" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/room.css">

</head>
<body>
<%
	String enter_date = request.getParameter("enter_date");
	String out_date = request.getParameter("out_date");
	
	//String room_no = request.getParameter("id");
	//String id = request.getParameter("id");
	//System.out.print(id);
	//rbean.setGogek_id(id);
	//rbean.setRoom_no(re);
	
	//boolean b = roomproc.Updatego(fbean);
	boolean b2 = roomproc.Updategro(rbean);
	//int mo = gogekDto.getGogek_money();
%>


<%
	if (b2) {
		response.sendRedirect("../guest/index.jsp");
	} else {
		System.out.print("b");
	}
%>


<%=request.getParameter("pri")%>
<%-- <% response.sendRedirect("../Wow.html"); %> --%>


