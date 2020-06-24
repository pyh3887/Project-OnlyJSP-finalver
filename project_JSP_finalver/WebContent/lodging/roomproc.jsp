<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");%> 
<jsp:useBean id="roomProcess" class="pro.business.RoomProcess"></jsp:useBean>
<jsp:useBean id="bean" class="pro.business.RoomFormBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<%
request.setCharacterEncoding("UTF-8");

System.out.print(bean.getRoom_name());

String image = request.getParameter("image");
boolean b= roomProcess.insert(bean);   

System.out.print(bean.getCont1());
if(b){
	response.sendRedirect("../guest/index.jsp");
}else{
	
	response.sendRedirect("fail.jsp");
}
%>