<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.dream.vo.MemberVO, com.dream.dao.MemberDao"%>
<%
	String login_id = (String)session.getAttribute("sid");
	MemberDao dao = new MemberDao();
	MemberVO vo = dao.getInfo(login_id);
%>    
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="http://localhost:9000/dream/images/favicon.png"> <!-- 파비콘 -->

<!-- ailed to load resource: the server responded with a status of 404 () 에러나서 추가 -->
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<title>마이페이지 | 드림월드</title>
<!-- Main Stylesheet -->
<link href="http://localhost:9000/dream/css/dreamReview.css" rel="stylesheet">
<!--  <link rel="stylesheet" href="http://localhost:9000/dream/css/style.css">-->


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
					<section class="input-disabled">
					<form name="statusForm" action="status_proc.jsp" method="post">
						<ul>
							<li>
								<label>*아이디</label>
								<input type="text" name="mem_id" class="input_style1" value="<%= vo.getMem_id() %>" disabled>
							</li>		
							<li>
								<label>*비밀번호</label>
								<input type="password" name="mem_pass" class="input_style1" value="<%= vo.getMem_pass() %>" disabled>
							</li>		
							<li>
								<label>*성명</label>
								<input type="text" name="mem_name" class="input_style1" value="<%= vo.getMem_name() %>" disabled>
							</li>		
							<li>
								<label>*생년월일</label>
								<input type="text" name="mem_birth" class="input_style1" value="<%= vo.getMem_birth() %>" disabled>
							</li>
							<li>
								<label>*이메일</label>
								<input type="text" name="mem_email1" class="email" value="<%= vo.getMem_email1() %>" disabled>
								@ <input type="text" name="mem_email2" class="email"value="<%= vo.getMem_email2() %>"  disabled>
							</li>	
							<li>
								<label>*핸드폰번호</label>
								<input type="text" name="mem_hp" class="input_style1" value="<%= vo.getMem_hp() %>" disabled>
							</li>	
							<li>
								<a href="http://localhost:9000/dream/mypage/infoUpdate_next.jsp">
									<button type="button" class="btn_style1">수정하기</button>
								</a>
								<button type="button" class="btn_style1" onclick="memberStatus()">탈퇴하기</button>
							</li>
						</ul>
					  </form>
					</section>
				</section>
			</div>
		</div>
	</section>
</div>
	<!-- footer Start -->
<%@include file ="../footer.jsp" %>
  <!--  Essential Scripts
    =====================================-->
	<script src="http://localhost:9000/dream/js/infoUpdate.js"></script>
    <!--   Main jQuery 
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
    <!-- <script src="js/script.js"></script> -->
</body>
</html>