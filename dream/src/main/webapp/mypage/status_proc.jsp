<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.MemberDao"%>
<% request.setCharacterEncoding("utf-8"); 

	String sid = (String)session.getAttribute("sid");
	if(sid != null){
	session.invalidate();		
	}
	MemberDao dao = new MemberDao();
	int result = dao.status(sid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원탈퇴</title>
</head>
<body>
<% if(result == 1 ){ %>
	<script>
	alert("탈퇴가 완료되었습니다.그동안 이용해주셔서 감사합니다.");
	location.href="http://localhost:9000/dream/index.jsp";
	</script>
<% } %>
</body>
</html>
