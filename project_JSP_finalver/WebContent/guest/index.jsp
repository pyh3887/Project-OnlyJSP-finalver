<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<meta charset="utf-8">
<title>오늘어때</title>

<script type="text/javascript">
window.onload=function(){
	document.getElementById("searchbtn").onclick= search;
	
	
}


</script>
<script type="text/javascript" src="../js/please.js">
</script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>


<!-- Bootstrap core CSS -->
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="../vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="../css/landing-page.min.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
</head>

<body>

	<!-- Navigation -->
	<%@include file="top.jsp"%>






	<div  style="background-color: #FBEFF2;">
	<div class="rounded" style="background-image: url('../image/flower.png');height: 500px; width: 984px;
    margin: 0 auto;border-radius: 8.25rem !important;">

		<div style="font-size: 60pt; text-align: center; padding-top: 150px;font-family: 'Gamja Flower', cursive;">오늘어때</div>

		<form action="NewFile.jsp" name = "frm" method="post">
			<div class="serch-bar mx-auto input-group mb-3 " style="padding-top: 30px">
				<input type="text" name="search" class="rounded-pill serch-bar_1 form-control"
					placeholder="지역 또는 숙소명을 입력하세요" onkeydown="sijak()"
					aria-label="Recipient's username" aria-describedby="button-addon2"
					style="height: 50px;border: 2;border-color:#FBEFF2;" >
				<div class="input-group-append" style="margin-left: 10px;">
					<button type="button" class="btn btn-outline-primary" style="background-color: #FBEFF2;" id="searchbtn">search</button>
				</div>	
				<div id="suggest" style="display: none; position: absolute; 
				    margin-left: 550px;background-color: white ;font-family: 'Gamja Flower', cursive; border-radius: 15px;    width: 94px; height: 170px;text-align: center;" >
	 			<div id="suggestList"></div>
				</div>
	 		</div>
	 			
			
		</form>

	</div>
		
		
		
		
		<div style="background-color: #FBEFF2;height: 300px;">
			<div class="container"
				style="margin-bottom: -40px; margin-top: 0; height: 96px; padding-top: 82px;background-color:#FBEFF2 ">
				<div class="row">

					<div style="margin-left: auto; margin-right: 40px">
						<a href="motelmain.jsp"><img src="../icon/motel.png"></a><Br>
						<div><a style="text-align: center;padding-left: 40px;font-family: 'Gamja Flower', cursive;">모텔</a></div>
					</div>
					<div>
						<a href="hotelmain.jsp"><img src="../icon/hotel.png" style="margin-right: 50px"></a><Br>
						<a style="text-align: center;padding-left: 45px;font-family: 'Gamja Flower', cursive;">호텔</a>
						
					</div>
					<div>
						<a href="guestmain.jsp"><img src="../icon/guest.png" style="margin: auto;"></a><Br>
						<a style="text-align: center;padding-left: 20px;font-family: 'Gamja Flower', cursive;">게스트하우스</a>
					</div>
					<div style="margin-right: auto; margin-left: 40px">
						<a href="pensionmain.jsp"><img src="../icon/pension.png"></a><Br>
						<a style="text-align: center;padding-left: 50px;font-family: 'Gamja Flower', cursive;">펜션</a>
					</div>

				</div>
			</div>
	</div>
		</div>




	<!-- Footer -->
	<footer class="bottom  footer bg-light" style="padding-top:0; padding-bottom: 0; height: 200px;"   >

		<div class="container" style="width: 100%; padding-top: 0">
			<div class="row">
				<div class="col-lg-6 h-100 text-center text-lg-left my-auto">
					<ul class="list-inline mb-2">

						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item">
							<p class="text-muted small mb-4 mb-lg-0">
								<a>박윤호</a>
							</p>
						</li>
						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item">
							<p class="text-muted small mb-4 mb-lg-0">
								<a>김성운</a>
							</p>
						</li>
						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item">
							<p class="text-muted small mb-4 mb-lg-0">
								<a>배윤진</a>&nbsp;&nbsp;&nbsp;
							</p>
						</li>
							<li class="list-inline-item">
							<p class="text-muted small mb-4 mb-lg-0">
								<a href="../admin/admin_login.jsp">관리자</a>
							</p>
						</li>
						
					</ul>
					<p class="text-muted small mb-4 mb-lg-0">&copy; 2020-03-29
						web프로젝트</p>
				</div>
				<div class="col-lg-6 h-100 text-center text-lg-right my-auto">
					<ul class="list-inline mb-0">
						<li class="list-inline-item mr-3"><a href="https://www.facebook.com/"> <i
								class="fab fa-facebook fa-2x fa-fw"></i>
						</a></li>
						<li class="list-inline-item mr-3"><a href="https://twitter.com/"> <i
								class="fab fa-twitter-square fa-2x fa-fw"></i>
						</a></li>
						<li class="list-inline-item"><a href="https://www.instagram.com/?hl=ko"> <i
								class="fab fa-instagram fa-2x fa-fw"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	
	
	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

