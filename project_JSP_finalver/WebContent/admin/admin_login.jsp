<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>

<title>관리자 로그인</title>

<script type="text/javascript">
	function chk() {
		//alert("go")
		if (frm.admin_id.value == "" || frm.admin_passwd.value == "") {
			alert("자료를 입력하세요");
			return;
		}
		frm.submit();
	}
</script>
</head>
<body>
	<form action="logincheck.jsp" name="frm" method="post">
		<table style="width: 100%">
			<tr>
				<td>
					<%
						String sessionVal = (String) session.getAttribute("adminKey");
						if (sessionVal != null) {
							
					%> <script type="text/javascript">
					location.href="admin_main.jsp";
					</script>
					 <%
					} else {
				%>
					<table style="width: 100%">
						<tr>
							<td>i d : <input type="text" name="admin_id"></td>
						</tr>
						<tr>
							<td>p w d : <input type="text" name="admin_passwd"></td>
						</tr>
						<tr>
							<td>[<a href="#" onclick="chk()">로그인</a>] [<a
								href="javascript:window.close()">창닫기</a>]
							</td>
						</tr>
					</table> <%
 	}
 %>
				</td>
			</tr>
		</table>
	</form>
</body>

</html>