<%@page import="pack.room.GogekFormBean"%>
<%@page import="pack.room.GogekDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="gogekDto" class="pack.room.GogekDto" />
<jsp:useBean id="fbean" class="pack.room.GogekFormBean" />
<jsp:useBean id="roomDto" class="pack.room.RoomDto" />
<jsp:useBean id="rbean" class="pack.room.RoomFormBean" />

<jsp:setProperty property="*" name="rbean" />
<jsp:useBean id="roomproc" class="pack.room.RoomProcess" />


<%
	//String no = request.getParameter("no3");
	//System.out.print(no);
	String id = (String) session.getAttribute("idKey");
	fbean.setGogek_id(id);
	//rbean.setRoom_no(re);
	
	//boolean b = roomproc.Updatego(fbean);
	boolean b2 = roomproc.Updategro();
	//int mo = gogekDto.getGogek_money();
%>


<%
	if (b2) {
		response.sendRedirect("../guest/index.jsp");
	} else {
		System.out.print("b   ");
	}
%>


<%=request.getParameter("pri")%>
<%-- <% response.sendRedirect("../Wow.html"); %> --%>
