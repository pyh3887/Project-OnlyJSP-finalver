<%@page import="pro.business.CeoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="ceoProcess" class="pro.business.CeoProcess"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 페이지</title>
<script type="text/javascript">
window.onload= function(){
	document.getElementById("room_mo").onclick =function(){
		location.href="room_mo.jsp";
	}
	document.getElementById("lod_del").onclick =function(){
		location.href="lod_del.jsp";
	}
}
</script>
</head>
<body>
<%@include file="../member/top.jsp"%>
<%
CeoDto dto = (CeoDto)ceoProcess.ceoData(ceoid); 

%>
<% request.setCharacterEncoding("utf-8"); %>
	
	<form action="lodgingproc.jsp" name="frm">
		<table style="width: 80%">
			<tr>
				<th colspan="2">* 숙소 수정 *</th>
			</tr>

			<tr>
				<td>숙소명</td>
				<td><input type="text" name="lodging_name"></td>
			</tr>
			<tr>
				<td>숙소 위치</td>
				<td><input type="text" name="lodging_loc"></td>
			</tr>
			<tr>
				<td>숙소 분류</td>
				<td><select name="facility_no">
						<option value="1">모텔</option>
						<option value="2">호텔</option>
						<option value="3">게스트하우스</option>
						<option value="4">펜션</option>
				</select>
				
				</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><input type="file" name="lodging_img"></td>
			</tr>

			<tr>
				<td colspan="2"><br> <input type="submit" value="숙소 등록">
					<input type="reset" value="새로 등록"> <input type="button"
					value="room 수정" id='room_mo'>
					<input type="button"
					value="삭제" id='lod_del'>
					</td>
					<input type="hidden" name="ceo_id" value="<%=dto.getCeo_id()%>">
					
			</tr>
		</table>
	</form>

</body>
</html>