<%@page import="pro.business.ReviewDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:useBean id="reviewProcess" class="pro.business.ReviewProcess"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>후기관리</title>
</head>
<body>
<br>
	<%
		ArrayList<ReviewDto> list = (ArrayList)reviewProcess.selectDataAll3();
	%>
	<%@include file="admin_main.jsp"%>

	<table style="width: 80%">
	
		<tr style="background-color: cyan">
			<th>ID</th>
			<th>글내용</th>
			<th>작성일</th>
			<th>객실이름</th>
			<th>삭제</th>
		</tr>
		<tr>
			<c:forEach var="r" items="<%=list%>">
				<tr>
					<td>${r.gogek_id}</td>
					<td>${r.re_cont}</td>
					<td>${r.rdate}</td>
					<td>${r.room_name}</td>
					<td>
					<a href="review_delete.jsp?review_no=${r.review_no}">${r.review_no}글 지우기</a></td>				
				</tr>
			</c:forEach>
		</tr>

	</table>
</body>
</html>