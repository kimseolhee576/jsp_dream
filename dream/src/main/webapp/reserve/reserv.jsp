<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!doctype html>
<html lang="en">
  <head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">

   <title>예약하기 | 드림월드</title>
  <link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->

  
   <!-- bootstrap.min css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/themify/css/themify-icons.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/fontawesome/css/all.css">
  <link rel="stylesheet" href="http://localhost:9000/dream/plugins/magnific-popup/dist/magnific-popup.css">
   <!-- Main Stylesheet -->
  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">
  
  <!-- reserv.js -->
  <link href="http://localhost:9000/dream/css/reserv.css" rel="stylesheet">
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> <!-- datepicker -->
  <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script> <!-- datepicker -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <!-- datepicker -->
  <script type="text/javascript" src="http://localhost:9000/dream/js/reserv.js"></script>
  
  <!-- popover -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script> 
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.js"></script>


</head>

<body>

<!-- header start -->
<%@ include file="../header.jsp" %>
<!-- Header Close --> 

<div class="main-wrapper ">
	<section class="page-title bg-reserv">
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
<div class="h2"><h2>예매하기</h2></div>
<div id="all" class="all">
	<form name="reservForm" action="reserv_check.jsp" method="post">
		<ul>
			<li>
				<label class="label_style">날짜</label> <input type="text" id="rdate" name="rdate" class="text" readonly>
			</li>
        	<li>
	        	<label class="label_style">입장권</label>
	            <input type="checkbox" class="input1" name="rss" value="0" id="rss" onchange="change()">
	            <label for="rss"> <span></span> 소인</label>
	            <label class="label_style2">인원</label>
	        	<select id="num1" name="num1" onchange="change1()" disabled>
	            <option >0</option>
	            <option value="1">1</option>
	            <option value="2">2</option>
	            <option value="3">3</option>
	            <option value="4">4</option>
	            <option value="5">5</option>
	        	</select>
	        	<br>
	        	<label class="label_style1" >입장권</label>
	            <input type="checkbox" class="start" name="rsb" value="0" id="rsb" onchange="change()">
	            <label for="rsb"> <span></span> 대인</label>
	            <label class="label_style2">인원</label>
	            <select id="num2" name="num2" onchange="change1()" disabled>
	            <option >0</option>
	            <option value="1">1</option>
	            <option value="2">2</option>
	            <option value="3">3</option>
	            <option value="4">4</option>
	            <option value="5">5</option>
	            </select>
	        </li>
        	<li>
	        	<label class="label_style">자유이용권</label>
	            <input type="checkbox" class="free" name="rfs" value="0" id="rfs" onchange="change()">
	            <label for="rfs"> <span></span> 소인</label>
	            <label class="label_style2">인원</label>
	        	<select id="num3" name="num3" onchange="change1()" disabled>
	            <option >0</option>
	            <option value="1">1</option>
	            <option value="2">2</option>
	            <option value="3">3</option>
	            <option value="4">4</option>
	            <option value="5">5</option>
	        	</select>
	        	<br>
	        	<label class="label_style1" >자유이용권</label>
            	<input type="checkbox" class="free" name="rfb" value="0" id="rfb" onchange="change()">
            	<label for="rfb"> <span></span> 대인</label>
				<label class="label_style2">인원</label>
	            <select id="num4" name="num4" onchange="change1()" disabled>
	            <option >0</option>
	            <option value="1">1</option>
	            <option value="2">2</option>
	            <option value="3">3</option>
	            <option value="4">4</option>
	            <option value="5">5</option>
	            </select>
        	</li>
        	<li>
        		<label class="label_style">총 가격 : </label><input type="text" name="total" id="total" class="text" readonly>
        	</li>
        	<li>
       			<input type="button" class="btn_style" value="예매하기" onclick="reservFormCheck()">
        	</li>
        </ul>
	</form>
	<button id="popover_btn" class="btn" data-toggle="popover" title="요금정보" data-content="입장권(소) : 20,000원 <br> 입장권(대) : 30,000원 <br>자유이용권(소) : 40,000원 <br> 자유이용권(대) : 60,000원" data-placement="right"><img src="http://localhost:9000/dream/images/cash-coin.svg" alt=""></button>
</div>
</section>



<!-- footer Start -->
<%@ include file="../footer.jsp" %>
<!-- footer Close -->


  </body>
  </html>