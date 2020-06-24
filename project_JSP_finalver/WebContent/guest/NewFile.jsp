<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="pack.business.mainListDto"%>
<%@page import="pack.business.searchBean"%>

    
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
 

<% request.setCharacterEncoding("utf-8"); 
%>

<jsp:useBean id="bean" class="pack.business.searchBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="datalist" class="pack.business.dataList"></jsp:useBean>


<%


ArrayList<mainListDto> list = (ArrayList<mainListDto>)datalist.selectDataPart(bean.getSearch());

String partsearch = bean.getSearch();

%>

<jsp:include page="top4.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<title>Insert title here
</title>
<style>
<!--
.gallery-title
{
    font-size: 36px;
    color: #42B32F;
    text-align: center;
    font-weight: 500;
    margin-bottom: 70px;
}
.gallery-title:after {
    content: "";
    position: absolute;
    width: 7.5%;
    left: 46.5%;
    height: 45px;
    border-bottom: 1px solid #5e5e5e;
}
.filter-button
{
    font-size: 18px;
    border: 1px solid #42B32F;
    border-radius: 5px;
    text-align: center;
    color: #42B32F;
    margin-bottom: 30px;

}
.filter-button:hover
{
    font-size: 18px;
    border: 1px solid #42B32F;
    border-radius: 5px;
    text-align: center;
    color: #ffffff;
    background-color: #42B32F;

}
.btn-default:active .filter-button:active
{
    background-color: #42B32F;
    color: white;
}

.port-image
{
    width: 100%;
}

.gallery_product
{
    margin-bottom: 30px;
}
 p {
    width: 400px;
  }

-->
</style>
<script type="text/javascript">
$(document).ready(function(){

    $(".filter-button").click(function(){
        var value = $(this).attr('data-filter');
        
        if(value == "all")
        {
            //$('.filter').removeClass('hidden');
            $('.filter').show('1000');
        }
        else
        {
//            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
//            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter").not('.'+value).hide('3000');
            $('.filter').filter('.'+value).show('3000');
            
        }
    });
    
    if ($(".filter-button").removeClass("active")) {
$(this).removeClass("active");
}
$(this).addClass("active");

$(".dd").hide();

$( ".ff" ).click(function() {
  $( ".dd" ).slideToggle( "slow" );
});
});


</script>
</head>
<body>

 <div class="container" >
 
 
 		
        <div class="row">
        <div class="gallery col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h1 class="gallery-title">'<%=bean.getSearch() %>'의 검색결과</h1>
        </div>

 		
        <div align="center">
            <button class="btn btn-default filter-button" data-filter="all">전체</button>
            <button class="btn btn-default filter-button" data-filter="hdpe">모텔</button>
            <button class="btn btn-default filter-button" data-filter="sprinkle">호텔</button>
            <button class="btn btn-default filter-button" data-filter="spray">게스트하우스</button>
            <button class="btn btn-default filter-button" data-filter="irrigation">펜션</button>
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

