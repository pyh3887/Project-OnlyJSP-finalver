
<%@page import="java.util.ArrayList"%>
<%@page import="pack.business.mainListDto"%>
<%@page import="pack.business.searchBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("utf-8"); 
%>
    
<jsp:useBean id="bean" class="pack.business.searchBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="datalist" class="pack.business.dataList"></jsp:useBean>


<%
System.out.print(bean.getSearch());

ArrayList<mainListDto> list = (ArrayList<mainListDto>)datalist.selecthotellist();



%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="../css/main/main2.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="../js/navbar.js"></script>
</head>
<body>

<%@include file="top2.jsp"%>

<span class="openmenu" onclick='openNav()' id = 'openbtn'><i class="fa fa-angle-double-left fa-5" aria-hidden="true"></i> open</span>
			

 <div class="container" >
 
 
 		
        <div class="row">
        <div class="gallery col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h1 class="gallery-title">'호텔'의 검색결과</h1>
        </div>

 		
        <div align="center" style="height: 100px">
          
        </div>
        <br/>
			
		
			<div style="margin-left: auto;margin-right: auto; padding: 20px;border: 1;">
			<c:forEach var="m" items="<%= list %>">
            <div class="filter irrigation" style="display: flex; cursor: pointer;" onclick="location.href='../room/room.jsp?lodging_no=${m.lodging_no}';">
            	
            	<div style="float: left;width: 50%; height: auto; padding-bottom: 60px;">
                <a href="../room/room.jsp?lodging_no=${m.lodging_no}">	
                <img alt="" src="../upload/${m.lodging_img }">          
                </a> 
            	</div>
            	<div style="float: left;width: 50%;height: 100%;">
            	<h3 style="text-align: left"><a><br>${m.lodging_name }</a></h3>
            	
            	<a><br>${m.lodging_loc }<br></a>
                </div>
                               
            </div>
			</c:forEach>
			</div>
			
		
        </div>
    </div>
    
    



</body>
</html>