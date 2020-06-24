<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="reviewProcess" class="pro.business.ReviewProcess"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%
String no = request.getParameter("review_no");

boolean b = reviewProcess.delete(no); 

if(b){
	response.sendRedirect("ad_review.jsp");
}else{
	response.sendRedirect("fail.jsp");
}
%>
</body>
</html>