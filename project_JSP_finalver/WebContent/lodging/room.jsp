<%@page import="pro.business.LodgingDto"%>
<%@page import="pro.business.CeoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="ceoProcess" class="pro.business.CeoProcess"></jsp:useBean>
<jsp:useBean id="lodgingProcess" class="pro.business.LodgingProcess"></jsp:useBean>
<html>
<head>
<title>Insert title here</title>

<script type="text/javascript">
function func() {
	if(room.name.value === "" || isNaN(room.name.value) == false){ // isNaN 숫자가 하니면 true
		room.name.focus();
		alert("숙소명을 입력하세요");
		return;
	}
	var regExp2 = /^[0-9]{1,2}$/;
	if(!room.price.value.match(regExp2)){
		room.price.focus();
		alert("가격은 숫자로만 입력해주세요");
		return;
	}
	
	room.submit();
}

</script>
</head>
<body>
<%@include file="../member/top.jsp"%>
<%
CeoDto dto = (CeoDto)ceoProcess.ceoData(ceoid);
System.out.print(ceoid);
System.out.print("안녕");
LodgingDto ldto = (LodgingDto)lodgingProcess.selectData(dto.getCeo_id());

%>


	<form action="roomproc.jsp" method="post" name="get">
		<table style="width: 80%">
			<tr>
				<th colspan="2">* room 등록 *</th>
			</tr>
			<tr>
				<td>숙소명</td>
				<td><input type="hidden" name="lodging_no" readonly="readonly" value="<%=ldto.getLodging_no()%>"><%=ldto.getLodging_name()%></td>
			</tr>

			<tr>
				<td>객실명</td>
				<td><input id= "name"type="text" name="room_name"></td>
			</tr>
			<tr>
				<td>객실 가격</td>
				<td><input id="price" type="text" name="room_price"></td>
			</tr>
			<tr>
				<td>객실 정보</td>
				<td><textarea rows="5" cols="5" name="cont1" style="width: 400px;height: 400px;"></textarea></td>
			</tr>
			<tr>
				<td>공지</td>
				<td><textarea rows="5" cols="5" name="cont2" style="width: 200px"></textarea></td>
			</tr>
			<tr>
				<td>객실 이미지</td>
				<td><input type="file" name="room_img"></td>
			</tr>
			<tr>
				<td colspan="2"><br> <input type="submit" value="room 등록" onclick = "func()">
					<input type="reset" value="새로 등록" id= "commit"></td>
			</tr>
		</table>
	</form>
</body>
</html>