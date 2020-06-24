<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="lodgingProcess" class="pro.business.LodgingProcess"></jsp:useBean>
<jsp:useBean id="bean" class="pro.business.LodgingFormBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<%
request.setCharacterEncoding("UTF-8");
String id = (String)session.getAttribute("ceoid");
System.out.println(bean.getLodging_name());


boolean c = lodgingProcess.selectCEO(id);
String image = request.getParameter("image");

if(c == true){
	lodgingProcess.insertData(bean);
	%><script type="text/javascript">
		alert("등록완료")	
		history.back();
	  </script>
	<%
	
}
else{%>
 	<script type="text/javascript">
	alert("숙소는 1번만 등록할수 있습니다")
	history.back()
	</script>
 	
<%}
%>