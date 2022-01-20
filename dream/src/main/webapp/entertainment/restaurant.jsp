<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<title>즐길거리 | 드림월드</title>
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
<!-- Main Stylesheet -->
<link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">
<!-- entertainment Stylesheet -->
<link rel="stylesheet" href="http://localhost:9000/dream/css/entertainment.css">
</head>

<body>
<!-- Header Start --> 
<%@ include file="../header.jsp" %>
<!-- Header Close --> 

<div class="main-wrapper ">
<section class="page-title bg-4">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block text-center">
          <h1 class="text-capitalize mb-4 text-lg">즐길거리</h1>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- 레스토랑&스낵 -->
<section class="section blog-wrap bg-gray">
	<div class="container">
		<div class="content">
			<h2 class="enter_h2">레스토랑&amp;스낵</h2> 
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
								<img src="http://localhost:9000/dream/images/pp.jpg" alt="버클리클럽" class="img-attr">
							</div>
							<div id="attraction_text">
								<span class="h6 text-color">DreamWorld</span>
								<h2 class="mt-3 mb-4 position-relative content-title">버클리클럽</h2>
								<div class="at-text">미국 캘리포니아주의 작은 도시를 옮겨온 기분!<br>
									아메리칸 스타일과 다양한 퓨전요리, 한식까지<br>
									원하는 메뉴를 다양하게 드실 수 있어요! </div>
								<span class="at-text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     류&nbsp;| 퓨전, 한식</span>
								<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 푸드 코너</span>
								<span class="at-text">설&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     명&nbsp;| 아메리칸 스타일 퓨전요리, 한식</span>
								<span class="at-text">운영시간 | 10시~20시</span>
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
					<img src="http://localhost:9000/dream/images/qq.jpg" alt="아메리카나" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">아메리카나</h2>
					<div class="at-text">온가족이 즐길 수 있는 간단한 음료, 간식거리 등 <br>
						캐주얼 스타일의 메뉴를 가깝고 편안하게 즐길 수 있어요</div>
					<span class="at-text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     류&nbsp;| 음료, 간식</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 푸드 코너</span>
					<span class="at-text">설&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     명&nbsp;| 간단한 음료, 간식거리</span>
					<span class="at-text">운영시간 | 10시~20시</span>
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
					<img src="http://localhost:9000/dream/images/rr.jpg " alt="드라켄스낵" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">드라켄스낵</h2>
					<div class="at-text">입맛 따라 골라먹는 우동, 콜팝치킨, 어묵,<br>
						만두, 구슬아이스크림, 등심탕수육, 치즈볼도 드세요!</div>
					<span class="at-text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     류&nbsp;| 간식, 분식</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 푸드 코너</span>
					<span class="at-text">설&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     명&nbsp;| 간편하게 분식이 먹고 싶을 때</span>
					<span class="at-text">운영시간 | 10시~20시</span>
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
					<img src="http://localhost:9000/dream/images/ss.jpg" alt="" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">편의점</h2>
					<div class="at-text">다양한 스낵과 간편한 물품이 한 곳에 <br>
						다 모여있어 편리해요!</div>
					<span class="at-text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     류&nbsp;| 물품 판매</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 중앙 공원 입구</span>
					<span class="at-text">설&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     명&nbsp;| 각종 편의 물품, 음식 판매</span>
					<span class="at-text">운영시간 | 10시~20시</span>
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
					<img src="http://localhost:9000/dream/images/tt.jpg" alt="피자빙고" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">피자빙고</h2>
					<div class="at-text">남녀노소 누구나 즐겨찾는 피자빙고! <br>
						간단한 한 끼로도 좋아요</div>
					<span class="at-text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     류&nbsp;| 카페/피자</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 푸드 코너</span>
					<span class="at-text">설&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     명&nbsp;| 피자 전문, 카페</span>
					<span class="at-text">운영시간 | 10시~20시</span>
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
					<img src="http://localhost:9000/dream/images/uu.jpg" alt="스태프핫도그" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">스태프핫도그</h2>
					<div class="at-text">130년 역사를 가진 덴마크 전통 핫도그, <br>
						스태프 핫도그를 맛보세요!</div>
					<span class="at-text">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     류&nbsp;| 간식</span>
					<span class="at-text">위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     치&nbsp;| 푸드 코너</span>
					<span class="at-text">설&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     명&nbsp;| 덴마크 전통 핫도그 전문</span>
					<span class="at-text">운영시간 | 10시~20시</span>
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