<%@page import="pro.business.GogekDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="gogekProcess" class="pro.business.GogekProcess"></jsp:useBean>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>회원관리</title>
</head>
<body>
	<br>
	<%
		ArrayList<GogekDto> list = (ArrayList) gogekProcess.selectDataAll2();
	%>
	<%@include file="admin_main.jsp"%>

	<table style="width: 80%">
	
		<tr style="background-color: cyan">
			<th>ID</th>
			<th>Name</th>
			<th>PhoneNumber</th>
			<th>Action</th>
		</tr>
		<tr>
			<c:forEach var="g" items="<%=list%>">
				<tr>
					<td>${g.gogek_id}</td>
					<td>${g.gogek_name}</td>
					<td>${g.gogek_tel}</td>
					<td>
					<a href="admin_delete.jsp?gogek_id=${g.gogek_id}">${g.gogek_id} 탈퇴</a></td>				
				</tr>
			</c:forEach>
		</tr>

	</table>

</body>
</html>