<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<% request.setCharacterEncoding("utf-8"); %>
<% String a= request.getParameter("lodging_img"); %>
<% System.out.print(a); %>
<%@include file="../guest/top4.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>


  <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
        
        <style>
            /*datepicker에서 사용한 이미지 버튼 style적용*/
            img.ui-datepicker-trigger {
                margin-left:5px; vertical-align:middle; cursor:pointer;
}
        </style>
        <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- datepicker 한국어로 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
        
        <script>
        	
            $(function() {
            
                //오늘 날짜를 출력
                $("#today").text(new Date().toLocaleDateString());

                //datepicker 한국어로 사용하기 위한 언어설정
                $.datepicker.setDefaults($.datepicker.regional['ko']); 
                
                // 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
                // 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

                //시작일.
                $('#fromDate').datepicker({
                    showOn: "both",                     // 달력을 표시할 타이밍 (both: focus or button)
                    buttonText: "날짜선택",             // 버튼의 대체 텍스트
                    dateFormat: "yy-mm-dd",             // 날짜의 형식
                    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
                    minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                    onClose: function( selectedDate ) {    
                        // 시작일(fromDate) datepicker가 닫힐때
                        // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                        $("#toDate").datepicker( "option", "minDate", selectedDate );
                    }                
                });

                //종료일
                $('#toDate').datepicker({
                    showOn: "both", 
                    buttonText: "날짜선택",
                    dateFormat: "yy-mm-dd",
                    changeMonth: true,
                    minDate: 0, // 오늘 이전 날짜 선택 불가
                    onClose: function( selectedDate ) {
                        // 종료일(toDate) datepicker가 닫힐때
                        // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                        $("#fromDate").datepicker( "option", "maxDate", selectedDate );
                    }                
                });
            });
            
        </script>
	

</head>
<body>

<form action="room_pay.jsp" method="get" name="frde">
<div class='container'>

	<div class='row'>
	<br>
		<div class='col-md-offset-2 col-md-8'>
			<img src="../upload/<%=a%>" style='width:750px;height:320px'>
			<input type="hidden" name="lodging_img" value="<%=a%>">
			<br>
			<input type="hidden" name="rtowname" value="<%= request.getParameter("rname") %>">
			<h2 style="text-align:center"><b><%= request.getParameter("rname") %></b></h2>
		</div>
		
	</div>
<br>
	<div class='row'>
		<div class='col-md-offset-2 col-md-8' style="text-align:center">
			 <label for="fromDate" >시작일</label>
         	 <input type="text" name="fromDate" id="fromDate">
         	 ~
        	 <label for="toDate">종료일</label>
        	 <input type="text" name="toDate" id="toDate">			
		
		</div>
	</div>
	<br>
	<div class='row'>
		<div class='col-md-offset-2 col-md-8' style="text-align:center;font-size:20px">
			<%= request.getParameter("rcont1") %>
		</div>
	</div>
	<div class='row'>
		<div class='col-md-offset-2 col-md-8' style="text-align:center;font-size:20px">
			<%= request.getParameter("rcont2") %>
		</div>
	</div>
	<br>
	<div class='row'>
		<div class='col-md-offset-2 col-md-8'>
			<input type="hidden" name="rPri" value="<%= request.getParameter("rprice") %>">
			<input type="hidden" name="room_no" value="<%= request.getParameter("no1") %>">
			<input type="submit" value="예약하기" class='btn btn-danger btn-block'>
		</div>
	</div>
</div>
</form>
</body>
</html>