<%@page import="pro.business.CeoDto"%>
<%@page import="pro.business.GogekDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
String id = request.getParameter("gogek_id");
String passwd = request.getParameter("gogek_passwd");
%>

<jsp:useBean id="gogekProcess" class="pro.business.GogekProcess"></jsp:useBean> 
    <jsp:useBean id="ceoProcess" class="pro.business.CeoProcess"></jsp:useBean> 
<%
GogekDto dto = (GogekDto)gogekProcess.selectDataPart(id);
CeoDto dto2 = (CeoDto)ceoProcess.ceoData(id); 

if(dto != null){
	if(dto.getGogek_id().equals(id) && dto.getGogek_passwd().equals(passwd)){
		session.setAttribute("id", dto.getGogek_id());
		//response.sendRedirect("index.jsp"); 
		out.print("success");
		}
}else if(dto2 != null){
	if(dto2.getCeo_id().equals(id) && dto2.getCeo_passwd().equals(passwd) && dto2.getCeo_key() != null){
		session.setAttribute("ceoid", dto2.getCeo_id());
		//response.sendRedirect("index.jsp"); 
		out.print("success");
	}
}
	
%>