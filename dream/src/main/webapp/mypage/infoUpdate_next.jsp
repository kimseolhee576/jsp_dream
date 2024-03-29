<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.vo.MemberVO, com.dream.dao.MemberDao" %>
<%
	String login_id = (String)session.getAttribute("sid");
	MemberDao dao = new MemberDao();
	MemberVO vo = dao.getInfo(login_id);
%>    

<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->

<!-- ailed to load resource: the server responded with a status of 404 () 에러나서 추가 -->
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<title>마이페이지 | 드림월드</title>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="http://localhost:9000/dream/css/dreamReview.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css"> -->

</head>
<body>
<%@include file ="../header.jsp" %>
<div class="main-wrapper ">
	<section class="page-title bg-3">
	  <div class="container">
		  <div class="row">
		    <div class="col-md-12">
		       <div class="block text-center">
		         <h1 class="text-capitalize mb-4 text-lg">마이페이지</h1>
		         <ul class="list-inline">
		         </ul>
		       </div>
		     </div>
		   </div>
		 </div>
	</section>
	<section class="section blog-wrap bg-gray">
	   <div class="container">
			<div class="content">
				<section class="info_update">
				<h2>내 정보 수정</h2>
					 <form name="infoUpdateForm" id="infoUpdateForm" action="infoUpdate_proc.jsp" method="post">
						<ul>
							<li>
								<label>*아이디</label>
								<input type="text" name="mem_id" id="id" class="input_style1" value="<%= vo.getMem_id() %>" disabled>
							</li>		
							<li>
								<label>*비밀번호</label>
								<input type="password" name="mem_pass" id="pass" class="input_style1" value="<%= vo.getMem_pass() %>" placeholder="영문+숫자 조합의 6~10자리"  onkeyup="passCheck()">
								<span id="passMsg"></span>
							</li>		
							<li>
								<label>*비밀번호 확인</label>
								<input type="password" name="mem_pass" id="cpass" class="input_style1" value="<%= vo.getMem_pass() %>" placeholder="영문+숫자 조합의 6~10자리" onblur="passSameCheck()" onkeyup="cpassCheck()">
								<span id="cpassMsg"></span>
							</li>		
							<li>
								<label>*성명</label>
								<input type="text" name="name" class="input_style1" value="<%= vo.getMem_name() %>" disabled>
							</li>		
							<li>
								<label>*생년월일</label>
								<input type="text" name="birth" class="input_style1" value="<%= vo.getMem_birth() %>" disabled>
							</li>
							<li>
								<label>*이메일</label>
								<input type="text" name="mem_email1" class="email" id="email1" onchange="emailCheck()" value="<%= vo.getMem_email1() %>">
								@ <input type="text" name="mem_email2" class="email" id="email2" onchange="emailCheck()" value="<%= vo.getMem_email2() %>">
								<select name="email" id="email3" onchange="emailSelectCheck()">
									<option value="choice">선택</option>
									<option value="naver.com">네이버</option>
									<option value="google.com">구글</option>
									<option value="daum.net">다음</option>
									<option value="self">직접입력</option>
								</select>
								 <span id="emailMsg"></span>
							</li>	
							<li>
								<label>*핸드폰번호</label>
								<input type="text" name="mem_hp" class="input_style1" id="hp" value="<%= vo.getMem_hp() %>"  placeholder="숫자만 10~11자리(ex:01012345678)" onKeyup="hpCheck()">
								<span id="hpMsg"></span>
							</li>	
							<li>
								<button type="button" class="btn_style1" onclick="infoUpdateCheck()">수정완료</button>
								<button type="reset" class="btn_style1" onclick="resetForm()">다시입력</button>
							</li>
						</ul>
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
  	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script> <!-- 유효성체크(passCheck(), passSameCheck(), hpCheck()  -->
	<script src="http://localhost:9000/dream/js/infoUpdate.js"></script>
	<!-- <script src="http://localhost:9000/dream/js/contact.js"></script>  -->   
</body>
</html>