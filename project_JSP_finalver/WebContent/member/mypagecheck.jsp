<%@page import="pro.business.GogekDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="bean" class="pro.business.GogekFormBean"></jsp:useBean>
    <jsp:setProperty property="*" name="bean"/>
    <jsp:useBean id="gogekProcess" class="pro.business.GogekProcess"></jsp:useBean>
<%
String gogek_id= request.getParameter("gogek_id");
boolean b = gogekProcess.updateData(bean); 
GogekDto dto = gogekProcess.selectDataPart(gogek_id);
String gogek_passwd = request.getParameter("gogek_passwd");

if(b){
	response.sendRedirect("../guest/index.jsp");
}else if(!dto.getGogek_passwd().equalsIgnoreCase(gogek_passwd)){
	%>
<script type="text/javascript">
alert("비밀번호가 일치하지 않습니다.");
history.back();
</script>	
	
<%}else{
	response.sendRedirect("fail.jsp");
}
%> 