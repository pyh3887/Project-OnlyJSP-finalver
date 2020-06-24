<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String adminId = (String)session.getAttribute("adminKey");
if(adminId == null){
	response.sendRedirect("../login.jsp");
	return;
}else{
	
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>관리자 메인화면</title>
</head>
<body>
<table style="width:80%">
<tr style="background-color: #aabbcc; text-align:center;">
<td><a href="../guest/index.jsp">홈페이지</a></td>
<td><a href="adminLogout.jsp">로그아웃</a></td>
<td><a href="membermanager.jsp">회원관리</a></td>
<td><a href="ad_lodging.jsp">숙소관리</a></td>

</tr>
</table>
</body>
</html>