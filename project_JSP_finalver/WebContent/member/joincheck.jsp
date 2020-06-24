<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="bean" class='pro.business.GogekFormBean'></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="gogekProcess" class="pro.business.GogekProcess"></jsp:useBean>

<%

boolean b= gogekProcess.insertData(bean);  

if(b){
	response.sendRedirect("../guest/index.jsp");
}else{
	response.sendRedirect("fail.jsp");
}
%>