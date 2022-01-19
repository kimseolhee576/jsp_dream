<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import = "com.dream.dao.reservDao,com.dream.vo.reservVO" %>
   
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.dream.vo.reservVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매하기 | 드림월드</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->

 <!-- bootstrap.min css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/themify/css/themify-icons.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/fontawesome/css/all.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/magnific-popup/dist/magnific-popup.css">
  <!-- Owl Carousel CSS -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/slick-carousel/slick/slick-theme.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">


<!-- 부트스트랩 css 사용 --> 
<link rel="stylesheet" href="http://localhost:9000/dream/css/bootstrap.css">
<!-- 부트스트랩 js 사용 --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="http://localhost:9000/dream/js/bootstrap.js"></script>




<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/dream/css/reserv.css">


</head>


<body>

<!-- Header Start --> 
<%@ include file="../header.jsp" %>
<!-- Header Close -->

<div class="main-wrapper ">
	<section class="page-title bg-reserv_check">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">
	        <div class="block text-center">
	          <h1 class="text-capitalize mb-4 text-lg">예매하기</h1>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</div>



<section class="section blog-wrap bg-gray">
	<div class="h2"><h2>예매확인</h2></div>
<div id="all" class="all">
	<section> <!-- 여기 -->
		<form name="reserv_checkForm" action="reserv_kakao.jsp" method="post">
		<ul>
			<li>
				<label class="label_style">방문날짜</label>
				<input type="text" class="form-control" id="reserv_dday" name="reserv_dday" value="<%= vo.getReserv_dday() %>" readonly>
			</li>
			<li>
				<label class="label_style">입장권(소인)</label>
				<input type="text" class="form-control" id="reserv_ss" name="reserv_ss" value="<%= vo.getReserv_ss() %>" readonly>
			</li>
			<li>
				<label class="label_style">입장권(대인)</label>
				<input type="text" class="form-control" id="reserv_sb" name="reserv_sb" value="<%= vo.getReserv_sb() %>" readonly>
			</li>
			<li>
				<label class="label_style">자유이용권(소인)</label>
				<input type="text" class="form-control" id="reserv_fs" name="reserv_fs" value="<%= vo.getReserv_fs() %>" readonly>
			</li>
			<li>
				<label class="label_style">자유이용권(대인)</label>
				<input type="text" class="form-control" id="reserv_fb" name="reserv_fb" value="<%= vo.getReserv_fb() %>" readonly>
			</li>
			<li>
				<label class="label_style">총 가격</label>
				<input type="text" class="form-control" name="reserv_total" id="reserv_total" value="<%= vo.getReserv_total() %>" readonly>
			</li>
			<li>
				<input type="submit" class="btn_style" value="결제하기">
				<input type="button" class="btn_style" value="취소" onclick="location='reserv.jsp'">
			</li>
		</ul>
		
		</form>
		</section>
</div>
</section>

<!-- footer Start -->
<%@ include file="../footer.jsp" %>
<!-- footer Close -->


</body>
</html>

