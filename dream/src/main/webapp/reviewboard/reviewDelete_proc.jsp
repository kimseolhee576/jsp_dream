<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.ReviewDAO, com.dream.vo.ReviewVO"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
	String review_id = request.getParameter("review_id");
	ReviewDAO dao = new ReviewDAO();
	int result = dao.delete(review_id);
	if(result ==1){
	    response.sendRedirect("reviewList.jsp");
	}
%>
