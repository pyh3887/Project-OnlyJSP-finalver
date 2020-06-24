<%@page import="java.util.ArrayList"%>
<%@page import="pro.business.ReserveDto"%>
<%@page import="pro.business.GogekDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="gogekProcess" class="pro.business.GogekProcess"></jsp:useBean>
<jsp:useBean id="reserveProcess" class="pro.business.ReserveProcess"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>회원정보수정</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	function inputCheck() {

		var regExp2 = /^\d{3}\d{3,4}\d{4}/;
		if (!regForm2.gogek_tel.value.match(regExp2)) {
			alert("번호를 정확히 입력하세요");
			regForm2.gogek_tel.focus();
			return;
		}

		if (regForm2.gogek_passwd.value === "") {
			alert("비밀번호를 입력하세요");
			regForm2.gogek_passwd.focus();
			return;
		}

		regForm2.submit();
	}
</script>
</head>
<%
	request.setCharacterEncoding("UTF-8");
%>
<body>
	<%@include file="top.jsp"%>
	<%
		GogekDto dto = gogekProcess.selectDataPart(id);
		ArrayList<ReserveDto> list = (ArrayList)reserveProcess.selectReservePart(id);
	%>

	<div class="container">
		<div class="resume">
			<header class="page-header">
			<h1 class="page-title">회원정보</h1>
			</header>
			<div class="row">
				<div
					class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
					<div class="panel panel-default">
						<div class="panel-heading resume-heading">
							<div class="row">
								<div class="col-lg-12">
									<div class="col-xs-12 col-sm-4">
										<figure> <img class="img-circle img-responsive">
										</figure>
									</div>

									<form name="regForm2" action="mypagecheck.jsp">
										<div class="col-xs-12 col-sm-8">
											<ul class="list-group">
												<br>
												<li class="list-group-item">이름<br><%=dto.getGogek_name()%><input
													type="hidden" class="list-group-item" name="gogek_name"
													value="<%=dto.getGogek_name()%>"></li>
												<li class="list-group-item">아이디 <br> <%=dto.getGogek_id()%><input
													type="hidden" class="list-group-item" name="gogek_id"
													value="<%=dto.getGogek_id()%>"></li>
												<li class="list-group-item">비밀번호 <input type="text"
													class="list-group-item" name="gogek_passwd"
													placeholder="비밀번호 불일치 시 수정 x"></li>
												<li class="list-group-item">전화번호 <input type="text"
													class="list-group-item" value="<%=dto.getGogek_tel()%>"
													name="gogek_tel"><i class="fa fa-phone"></i></li>
											</ul>
										</div>
								</div>
							</div>
						</div>
						<div class="span12">
							<div class="menu">
								<div class="accordion">
									<div class="accordion-group">
										<div class="accordion-heading country">
											<a class="accordion-toggle" data-toggle="collapse"
												href="#country1"><h4>예약내역 보기</h4></a>
										</div>
										<div id="country1" class="accordion-body collapse">
											<div class="accordion-inner">
												<table class="table table-striped table-condensed">
													<thead>
														<tr>
															<th>객실명</th>
															<th>입실</th>
															<th>퇴실</th>
															<th>가격</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="reserve" items="<%=list%>">
															<tr>
																<td>${reserve.room_name }</td>
																<td>${reserve.enter_date }</td>
																<td>${reserve.out_date}</td>
																<td>${reserve.room_price }</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						<div class="span12">
							<div class="menu">
								<div class="accordion">
									<div class="accordion-group">
										<div class="accordion-heading country">
											<a class="accordion-toggle" data-toggle="collapse"
												href="#country2"><h4><%=dto.getGogek_id() %>님께서 작성하신 후기</h4></a>
										</div>
										<div id="country2" class="accordion-body collapse">
											<div class="accordion-inner">
												<table class="table table-striped table-condensed">
													<thead>
														<tr>
															<th>숙소이름</th>
															<th>글 내용</th>
															<th>작성일</th>
														
														</tr>
													</thead>
													<tbody>
														<c:forEach var="reserve" items="<%=list%>">
															<tr>
																<td>${reserve.room_name }</td>
																<td>${reserve.enter_date }</td>
																<td>${reserve.out_date}</td>
																
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>

					</div>
					<br> <input type="button" value="수정완료"
						class="btn btn-primary btn-block" style="height: 50px; onclick="inputCheck()">
					</form>
					<br>
					<br>
				</div>
			</div>
		</div>
	</div>

</body>
</html>