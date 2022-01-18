<%@ page language="java" contentType="text/html; charset=UTF-8"
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

<!-- 부대시설 6가지 -->
<section class="section blog-wrap bg-gray">
	<div class="container">
		<div class="content">
			<h2 class="enter_h2">부대시설</h2> 
			<section class="attraction-top section about-2 position-relative1">
				<div class="container">
					<div class="row">
						<div class="attraction">
							<div id="attraction_img">
								<img src="http://localhost:9000/dream/images/aa.jpg" alt="의무실" class="img-attr">
							</div>
							<div id="attraction_text">
								<span class="h6 text-color">DreamWorld</span>
								<h2 class="mt-3 mb-4 position-relative content-title">의무실</h2>
								<div class="at-text">고객의 의료편의시설과 안전사고를 대비하는 <br>
									응급 의료실입니다. </div>
								<span class="at-text">시설분류 : 의료시설</span>
								<span class="at-text">위치 : 정문 입장 후 오른쪽에 위치함.</span>
								<span class="at-text">설명 : 상비약 구비</span>
								<span class="at-text">운영시간 : 놀이 공원 운영 중 상시 운영</span>
								<span class="at-text">비고 : </span>
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
					<img src="http://localhost:9000/dream/images/bb.jpg" alt="전자오락실" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">전자오락실</h2>
					<div class="at-text">화려한 그래픽과 음악이 신나는 최신 게임, <br>
						추억의 전자게임도 즐겨보세요!</div>
					<span class="at-text">시설분류 : 오락시설</span>
					<span class="at-text">위치 : 중앙 공원 입구에 위치함.</span>
					<span class="at-text">설명 : 각종 오락시설 구비</span>
					<span class="at-text">운영시간 : 10시~20시</span>
					<span class="at-text">비고 : </span>
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
					<img src="http://localhost:9000/dream/images/cc.jpg" alt="기념품매장" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">기념품매장</h2>
					<div class="at-text">헬로키티 아이템이 가득한 전문점, <br>
						학용품, 완구 선물, 기념품이 다양합니다.</div>
					<span class="at-text">시설분류 : 판매시설</span>
					<span class="at-text">위치 : 정문 입구에 위치함.</span>
					<span class="at-text">설명 : 놀이 공원 굿즈, 각종 기념품 판매</span>
					<span class="at-text">운영시간 : 10시~20시</span>
					<span class="at-text">비고 : </span>
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
					<img src="http://localhost:9000/dream/images/dd.jpg" alt="고객센터" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">고객센터</h2>
					<div class="at-text">공원 내에서 발생한 미아를 안전하게 보호하고 <br>
						가족을 찾아드립니다.</div>
					<span class="at-text">시설분류 : 판매시설</span>
					<span class="at-text">위치 : 정문 입구 오른쪽(매표소 맞은편)</span>
					<span class="at-text">설명 : 미아보호소, 분실물 보관</span>
					<span class="at-text">운영시간 : 10시~20시</span>
					<span class="at-text">비고 : </span>
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
					<img src="http://localhost:9000/dream/images/ee.jpg" alt="물품보관소" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">물품보관소</h2>
					<div class="at-text">공원을 방문하신 분의 소지품과 가방 등을<br> 
						보관할 수 있는 곳입니다 물품보관함은 유료시설이며, <br>
						분실 우려가 있는 귀중품은 직접 소지해 주시기 바랍니다.</div>
					<span class="at-text">시설분류 : 보관시설</span>
					<span class="at-text">위치 : 정문, 후문 중앙공원 입구에 위치</span>
					<span class="at-text">설명 : 물품 보관</span>
					<span class="at-text">운영시간 : 10시~20시</span>
					<span class="at-text">비고 : </span>
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
					<img src="http://localhost:9000/dream/images/ff.jpg" alt="대여샾" class="img-attr">
				</div>
				<div id="attraction_text">
					<span class="h6 text-color">DreamWorld</span>
					<h2 class="mt-3 mb-4 position-relative content-title">유모차, 휠체어대여</h2>
					<div class="at-text">유모차 대여 시 신분증과 대여비(유료)가 필요합니다.<br>
						휠체어는 반드시 장애인 복지카드 본인확인과 신분증 보관 후 <br>
						보행이 불편하신 장애인 손님부터 선 대여해 드리고 있습니다.</div>
					<span class="at-text">시설분류 : 대여시설</span>
					<span class="at-text">위치 : 정문, 후문 중앙공원 입구에 위치</span>
					<span class="at-text">설명 : 대여는 조기 마감할 수 있음</span>
					<span class="at-text">운영시간 : 10시~20시</span>
					<span class="at-text">비고 : </span>
				</div>
			</div>
		</div>
	</div>
</section>
</section>
  </div>

<!-- footer Start -->
<%@ include file="../footer.jsp" %>
<!-- footer Close --> 
   
</body>
</html>