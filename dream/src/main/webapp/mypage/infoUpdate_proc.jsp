<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.MemberDao, com.dream.vo.MemberVO" %>
<% request.setCharacterEncoding("utf-8"); %>    
<jsp:useBean id="vo" class="com.dream.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
MemberDao dao = new MemberDao();
int result = dao.infoUpdate(vo);

if(result == 1){
    response.sendRedirect("myPage.jsp");
}

%>


