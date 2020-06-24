<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="gogekProcess" class="pro.business.GogekProcess"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 삭제</title>
</head>
<body>
<%
String id = request.getParameter("gogek_id");
System.out.println(id);
boolean b = gogekProcess.delete(id);

if(b){
	response.sendRedirect("membermanager.jsp");
}else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>