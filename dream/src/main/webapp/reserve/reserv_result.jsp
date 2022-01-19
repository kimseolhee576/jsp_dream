<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.dream.dao.reservDao,com.dream.vo.reservVO, java.util.ArrayList" %>

<%
	reservDao dao = new reservDao();
	ArrayList<reservVO> list = dao.select();
%>    


<!doctype html>
<html>
  <head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">

  <title>예매하기 | 드림월드</title>

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
  <link rel="stylesheet" href="http://localhost:9000/dream/css/reserv.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">
  
  
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>


</head>

<body>

<!-- header start -->
<%@ include file="../header.jsp" %>
<!-- Header Close --> 

<div class="main-wrapper ">
	<section class="page-title bg-reserv_result">
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
<div class="container">
			<h2 class="reserv_result_h2">예매내역확인</h2>
			<table class="result_content" >
					<tr>
						<th scope="col">예매자</th>
						<th scope="col">입장권(소)<br>(20,000원)</th>
						<th scope="col">입장권(대)<br>(30,000원)</th>
						<th scope="col">자유이용권(소)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(40,000원)</th>
						<th scope="col">자유이용권(대)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(60,000원)</th>
						<th scope="col">결제금액</th>
						<th scope="col">예매날짜</th>
						<th scope="col">방문날짜</th>
					</tr>
					<% for(reservVO vo : list){ %>
					<tr>
						<td><%= vo.getMem_id() %></td>
						<td><%= vo.getReserv_ss() %></td>
						<td><%= vo.getReserv_sb() %></td>
						<td><%= vo.getReserv_fs() %></td>
						<td><%= vo.getReserv_fb() %></td>
						<td><%= vo.getReserv_total() %></td>
						<td><%= vo.getReserv_date() %></td>
						<td><%= vo.getReserv_dday() %></td>
					</tr>
					<% } %>
			</table>
	</div>
</section>

<!-- footer Start -->
<%@ include file="../footer.jsp" %>
<!-- footer Close -->
   
   

  </body>
  </html>