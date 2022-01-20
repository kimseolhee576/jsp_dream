<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<title>즐길거리 | 드림월드</title>
<!-- Main Stylesheet -->
<link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">
<!-- entertainment Stylesheet -->
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

  <link rel="stylesheet" href="http://localhost:9000/dream/css/entertainment.css">
</head>

<body>
<!-- Header Start --> 
<%@include file ="../header.jsp" %>
<!-- Header Close --> 

<div class="main-wrapper ">
<section class="page-title bg-4">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
       	  <span class="text-white"></span>
          <h1 class="text-capitalize mb-4 text-lg">즐길거리</h1>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- 어트랙션 6가지 -->
<section class="section blog-wrap bg-gray">
	<div class="container">
		<div class="content">
			<h2 class="enter_h2">어트랙션</h2> 
			<section class="attraction-top section about-2 position-relative1">
				<div class="container">
					<div id="showPosition">
						<button id="show" class="btn_style_map">전체지도</button>
					</div>
					<div class="background">
						<div class="window">
							<div class="popup">
								<button id="close" ><img class="all-map" src="http://localhost:9000/dream/images/all_map.jpg"></button>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="attraction">
							<div id="attraction_img">
								<img src="http://localhost:9000/dream/images/bc.jpg" alt="발키리" class="img-attr">
							</div>
							<div id="attraction_text">
								<span class="h6 text-color">DreamWorld</span>
								<h2 class="mt-3 mb-4 position-relative content-title">발키리</h2>
								<div class="at-text">앞으로 뒤로 전장을 날아다니는 발키리<br>
									격렬한 전투의 흔적 속에서 용맹히 싸우다 전사한 용사들의<br>
									 영혼을 수거하는 발키리와 함께 흙의 보물을 찾아 떠나보세요!</div>
								<span class="at-text">테마분류 | 자녀,연인,친구,스릴</span>
								<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 드라켄밸리</span>
								<span class="at-text">탑승인원 | 20명</span>
								<span class="at-text">키&nbsp;&nbsp;제&nbsp;&nbsp;한 | 120cm ~ 200cm</span>
								<span class="at-text">비&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     고    | 보호자 동승시 100cm이상 이용가능</span>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
<section class="attraction-top section about-2 position-relative">
	<div class="container">
		<div class="row">
			<div class="attraction">
				<div id="attraction_img">
					<img src="http://localhost:9000/dream/images/cr.jpg" alt="크라크" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">크라크</h2>
					<div class="at-text">360도 회전하는 메가톤급 스릴 라이드!<br>
						거칠게 좌우로 몰아치다가 거꾸로 매달리는 아찔한 스릴을 <br>
						느껴보세요! (드라켄밸리 내 ‘불의 보물’이 숨겨진 곳)</div>
					<span class="at-text">테마분류 | 자녀,연인,친구,스릴</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 드라켄밸리</span>
					<span class="at-text">탑승인원 | 20명</span>
					<span class="at-text">키&nbsp;&nbsp;제&nbsp;&nbsp;한 | 120cm ~ 200cm</span>
					
				</div>
			</div>
		</div>
	</div>
</section>
<section class="attraction-top section about-2 position-relative">
	<div class="container">
		<div class="row">
			<div class="attraction">
				<div id="attraction_img">
					<img src="http://localhost:9000/dream/images/dr.jpg" alt="드라켄" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">드라켄</h2>
					<div class="at-text">세계 6번째, 국내 최초! 90도 다이브코스터!<br>
						63m 높이에서 수직 하강! 2drop까지!<br>
						지금껏 느껴볼 수 없던 최강 스릴에 도전하세요!</div>
					<span class="at-text">테마분류 | 자녀,연인,친구,스릴</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 드라켄밸리</span>
					<span class="at-text">탑승인원 | 24명</span>
					<span class="at-text">키&nbsp;&nbsp;제&nbsp;&nbsp;한 | 135cm ~ 200cm</span>
					
				</div>
			</div>
		</div>
	</div>
</section>
<section class="attraction-top section about-2 position-relative">
	<div class="container">
		<div class="row">
			<div class="attraction">
				<div id="attraction_img">
					<img src="http://localhost:9000/dream/images/fa.jpg" alt="파에톤" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">파에톤</h2>
					<div class="at-text">그리스 파에톤 신화를 테마로 한<br>
						세계 최강의 인버티드 롤러코스터!<br>
						초고속 익스트림 스릴을 직접 느껴보세요!</div>
					<span class="at-text">테마분류 | 자녀,연인,친구,스릴</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 엑스존</span>
					<span class="at-text">탑승인원 | 32명</span>
					<span class="at-text">키&nbsp;&nbsp;제&nbsp;&nbsp;한 | 145cm ~ 200cm</span>
					
				</div>
			</div>
		</div>
	</div>
</section>
<section class="attraction-top section about-2 position-relative">
	<div class="container">
		<div class="row">
			<div class="attraction">
				<div id="attraction_img">
					<img src="http://localhost:9000/dream/images/mg.jpg" alt="메가드롭" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">메가드롭</h2>
					<div class="at-text">지상 70m 하늘에서 떨어지는 기분!<br>
						하늘에서 내려다보는 경치와<br>
						급하강 할 때 심장 쫄깃한 스릴을 느껴보세요!</div>
					<span class="at-text">테마분류 | 자녀,연인,친구,스릴</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 엑스존</span>
					<span class="at-text">탑승인원 | 20명</span>
					<span class="at-text">키&nbsp;&nbsp;제&nbsp;&nbsp;한 | 140cm ~ 200cm</span>
					
				</div>
			</div>
		</div>
	</div>
</section>
<section class="attraction-top section about-2 position-relative">
	<div class="container">
		<div class="row">
			<div class="attraction">
				<div id="attraction_img">
					<img src="http://localhost:9000/dream/images/tc.jpg" alt="토네이도" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">토네이도</h2>
					<div class="at-text">국내 최고의 스릴 어트랙션 토네이도!<br>
						국내 최대 상승각도 왕복 230도에서 느끼는<br>
						가슴 터질 듯한 스릴! 직접 느껴보세요!</div>
					<span class="at-text">테마분류 | 자녀,연인,친구,스릴</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 엑스존</span>
					<span class="at-text">탑승인원 | 24명</span>
					<span class="at-text">키&nbsp;&nbsp;제&nbsp;&nbsp;한 | 140cm ~ 200cm</span>
					
				</div>
			</div>
		</div>
	</div>
</section>
</section>
  </div>

<script>
function show(){
	document.querySelector(".background").className="background show";
}
function close(){
	document.querySelector(".background").className="background";
}
	document.querySelector("#show").addEventListener('click',show);
	document.querySelector("#close").addEventListener('click',close);
</script>

<!-- footer Start -->
<%@ include file="../footer.jsp" %>
<!-- footer Close --> 

</body>
</html>