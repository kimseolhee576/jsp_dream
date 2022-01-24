<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String sid = (String)session.getAttribute("sid");
	if(sid != null){
		session.invalidate();		
	}
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("로그아웃이 완료되어 홈으로 이동합니다.");
		location.href="http://localhost:9000/dream/index.jsp";
	</script>
</body>
</html>