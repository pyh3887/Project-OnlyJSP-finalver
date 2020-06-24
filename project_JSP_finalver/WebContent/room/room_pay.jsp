<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% 
request.setCharacterEncoding("utf-8");
%>

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
<form action="payd.jsp" method="post" name="payfrm">
<table border="1">
	<tr>
		<td colspan="2">
			<%= request.getParameter("rtowname") %>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<%=request.getParameter("stDate") %> &nbsp;/&nbsp;
			<%=request.getParameter("toDate") %>
		</td>
	</tr>
	<tr>
		<td>
			가격
		</td>
		<td>
			<%= request.getParameter("rPri") %>
			<input type="hidden" name="pri" value="<%= request.getParameter("rPri") %>"> 
			<input type="hidden" name="no3" value="<%= request.getParameter("no2") %>">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="결제하기">
		</td>
	</tr>
</table>
</form>
</body>
</html>