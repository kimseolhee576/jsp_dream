<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>회원가입 | 드림월드</title>
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->
<!-- join j쿼리lib, 달력 -->
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- join 링크 -->
<link href="http://localhost:9000/dream/css/join.css" rel="stylesheet">
<script src="http://localhost:9000/dream/js/join.js"></script>
</head>

<body>

<!-- Header Start --> 
<%@ include file="../header.jsp" %>
<!-- Header Close --> 
<div class="main-wrapper ">
	<section class="page-title bg-3">
	  <div class="container">
		  <div class="row">
		    <div class="col-md-12">
		       <div class="block text-center">
		         <h1 class="text-capitalize mb-4 text-lg">회원가입</h1>
		       </div>
		     </div>
		   </div>
		 </div>
	</section>
	<section class="section blog-wrap bg-gray">
	   <div class="container">
<div class="content">
	<section class="login">
        <h2>회원가입테스트</h2>
        <form id="joinForm" name="joinForm" action="join_proc.jsp" method="post">
     		<ul>
		        <li>
		            <label>*아이디</label>
		            <input type="text" name="mem_id" placeholder="영문+숫자 조합의 6~10자리" class="input1" id="id" onKeyup="idCheck()">
		            <button type="button" onclick="idDupliCheck()" class="btn_style2">중복확인</button>
		            <span id = "idMsg"></span>
		        </li>
		        <li>
		            <label>*비밀번호</label>
		            <input type="password" name="mem_pass" placeholder="영문+숫자 조합의 6~10자리" class="input1" id="pass" onblur="passSameCheck()" onKeyup="passCheck()">
		            <span id="passMsg"></span>
		        </li>
		        <li>
		            <label>*비밀번호 확인</label>
		            <input type="password" name="mem_cpass" placeholder="영문+숫자 조합의 6~10자리" class="input1" id="cpass" onblur="passSameCheck()" onKeyup="passCheck()">
		            <span id="cpassMsg"></span>
		        </li>
		        <li>
		            <label>*성명</label>
		            <input type="text" name="mem_name" placeholder="한글 2~5자리" class="input1" id="name" onKeyup="nameCheck()">
		            <span id="nameMsg"></span>
		        </li>
		        <li>
		            <label>*생년월일</label>
		            <input type="text" id="birthdate" name="mem_birth" placeholder="숫자 8자리(ex:20010101)" class="input1" onchange="birthdateCheck()" readonly>
		            <span id="birthdateMsg"></span>
		        </li>
		        <li>
		            <label>*이메일</label>
		            <input type="text" name="mem_email1" class="email" id="email1" onchange="emailCheck()"> @
		            <input type="text" name="mem_email2" class="email" id="email2" onchange="emailCheck()">
		            <select class="email" id="email3" onchange="emailSelectCheck()">
		                <option value="choice">선택</option>
		                <option value="naver.com">네이버</option>
		                <option value="google.com">구글</option>
		                <option value="daum.net">다음</option>
		                <option value="self">직접입력</option>
		            </select>
		            <span id="emailMsg"></span>
		        </li>
		        <li>
		            <label>*휴대폰</label>
		            <input type="text" name="mem_hp" placeholder="*숫자만 10~11자리(ex:01012345678)" class="input1" id="hp" onKeyup="hpCheck()">
		            <span id="hpMsg"></span>
		        </li>
		        <li>
		            <button type="button" class="btn_style" onclick="joinFormCheck()">가입하기</button>
		            <button type="reset" class="btn_style" onclick="resetForm()">다시입력</button>
		        </li>
			</ul>   
        </form>
	</section>      
</div>
  		</div>
	</section>
</div>  
<!-- footer Start -->
<%@ include file="../footer.jsp" %>
<!-- footer Close --> 

  </body>
  </html>