<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.MemberDao, com.dream.vo.MemberVO" %>
<% request.setCharacterEncoding("utf-8"); %>    
<jsp:useBean id="vo" class="com.dream.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
MemberDao dao = new MemberDao();
int result = dao.infoUpdate(vo);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title></title>
</head>
<body>
<% if(result == 1 ){ %>
	<script>
	alert("회원정보가 수정되었습니다.");
	location.href="myPage.jsp";
	</script>
<% } %>
</body>
</html>

