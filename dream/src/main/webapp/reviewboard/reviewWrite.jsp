<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->

<!-- ailed to load resource: the server responded with a status of 404 () 에러나서 추가 -->
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<title>후기게시판 | 드림월드</title>

<!-- Main Stylesheet -->
<link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">

<link href="http://localhost:9000/dream/css/dreamReview.css" rel="stylesheet">

</head>

<body>
<%@include file ="../header.jsp" %>

<div class="main-wrapper ">
	<section class="page-title bg-1">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12">
	        <div class="block text-center">
	          <h1 class="text-capitalize mb-4 text-lg">고객센터</h1>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
	<section class="section blog-wrap bg-gray">
	    <div class="container">
	        <div class="content">
				<section class="review_board">
					<h2>후기게시판</h2>
					<form name="reviewWriteForm" action="reviewWrite_proc.jsp" method="post" >
					<table class="review_write">
						<tr>
							<td colspan="2">
								<a href="http://localhost:9000/dream/reviewboard/reviewList.jsp">
									<button type="button" class="btn_style2">목록</button>
								</a>
							</td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" id="review_title" name="review_title" placeholder="제목을 입력해주세요"></td>
						</tr>	
						<tr>
							<th>별점</th>
							<td>
								<div>
							        <input type="radio" name="review_star" value="5" id="rate1"><label for="rate1">⭐</label><!-- 이모지 : ⭐,  ★ -->
							        <input type="radio" name="review_star" value="4" id="rate2"><label for="rate2">⭐</label>
							        <input type="radio" name="review_star" value="3" id="rate3"><label for="rate3">⭐</label>
							        <input type="radio" name="review_star" value="2" id="rate4"><label for="rate4">⭐</label>
							        <input type="radio" name="review_star" value="1" id="rate5"><label for="rate5">⭐</label> 
						   	 	</div>
							</td>
						</tr>	
						<tr>
							<th>내용</th>
							<td>
								<textarea name="review_content" rows="7" cols="70"  placeholder="내용을 입력해주세요" id="review_content"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="button" class="btn_style1" onclick="reviewWriteFormCheck()">등록</button>
								<button type="reset" class="btn_style1">다시쓰기</button>
							</td>
						</tr>
					</table>
				</form>
				</section>
			</div>
	    </div>
	</section>
</div>
    <!-- footer Start -->
<%@include file ="../footer.jsp" %>

    <!--  Essential Scripts
    =====================================-->
    <script src="http://localhost:9000/dream/js/dreamReview.js"></script>

</body>
</html>