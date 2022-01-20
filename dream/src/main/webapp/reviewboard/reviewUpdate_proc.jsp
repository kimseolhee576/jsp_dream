<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.ReviewDAO, com.dream.vo.ReviewVO"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.dream.vo.ReviewVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
	String sid=(String)session.getAttribute("sid");
	ReviewDAO dao = new ReviewDAO();
	int result = dao.update(vo, sid);	
	if(result ==1){
	    response.sendRedirect("reviewList.jsp");
	}
%>
