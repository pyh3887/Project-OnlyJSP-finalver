<%@page import="pro.business.AdminDto"%>
<%@page import="pro.business.GogekDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
String id = request.getParameter("admin_id");
String passwd = request.getParameter("admin_passwd");
%>

<jsp:useBean id="adminProcess" class="pro.business.AdminProcess"></jsp:useBean> 
    
<%
AdminDto dto = (AdminDto)adminProcess.adminData(id);

if(dto != null){
	if(dto.getAdmin_id().equals(id) && dto.getAdmin_passwd().equals(passwd)){
		session.setAttribute("adminKey", dto.getAdmin_id());
		response.sendRedirect("admin_main.jsp"); 
		//out.print("success");
		}
	
}

%>