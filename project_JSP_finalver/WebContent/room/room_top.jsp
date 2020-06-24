<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String memid = (String)session.getAttribute("idkey");
String log = "";

if(memid == null) {
	log = "<a>로그인</a>";
} else {
	log = "<a>로그아웃</a>";
}

String mem = "";
if(memid == null) {
	mem = "<a>회원가입</a>";
} else {
	mem = "<a>회원수정</a>";
}

%>
<link href="../css/room.css" rel="stylesheet" type="text/css">
<table style="width: 80%";>
	<tr class="roomTop">
		<td><%=log %></td>
		<td><%=mem %></td>
		<td><a href="home.jsp">홈으로</a></td>
	</tr>
</table>