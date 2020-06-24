<%@page import="pro.business.FacilityDto"%>
<%@page import="pro.business.CeoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:useBean id="ceoProcess" class="pro.business.CeoProcess"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="facilityProcess" class="pro.business.FacilityProcess"></jsp:useBean>
<title>숙소 등록</title>
<script type="text/javascript">
window.onload= function(){
	document.getElementById("room_in").onclick =function(){
		location.href="room.jsp";
	}
}
</script>
</head>
<body>
<%@include file="../guest/top3.jsp"%>
<%
CeoDto dto = (CeoDto)ceoProcess.ceoData(ceoid); 

%>
	
	<form action="lodgingproc.jsp" name="frm">
		<table style="width: 80%">
			<tr>
				<th colspan="2">* 숙소 등록 *</th>
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
					value="room 등록" id='room_in'></td>
					<input type="hidden" name="ceo_id" value="<%=dto.getCeo_id()%>">
					
			</tr>
		</table>
	</form>

</body>
</html>