<%@page import="pro.business.CeoDto"%>
<%@page import="pro.business.LodgingDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="lodgingProcess" class="pro.business.LodgingProcess"></jsp:useBean>
     <jsp:useBean id="ceoProcess" class="pro.business.CeoProcess"></jsp:useBean>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>숙소관리</title>
</head>
<body>
<%

		ArrayList<LodgingDto> list = (ArrayList)lodgingProcess.selectDataAll(); 

	%>
	<%@include file="admin_main.jsp"%>

	<table style="width: 80%">
	
		<tr style="background-color: cyan">
			<th>사장ID</th>
			<th>숙소명</th>
			<th>위치</th>
			<th>삭제</th>
		</tr>
		<tr>
			<c:forEach var="l" items="<%=list%>">
				<tr>
					<td>${l.ceo_id }</td>
					<td>${l.lodging_name}</td>
					<td>${l.lodging_loc}</td>
					<td>
					<a href="lodging_delete.jsp?lodging_no=${l.lodging_no}">숙소제거</a></td>				
				</tr>
			</c:forEach>
		</tr>

	</table>
</body>
</html>