<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dream.dao.NoticeDao, com.dream.vo.NoticeVO"%>

<%
request.setCharacterEncoding("utf-8");
%>

<%
	String notice_id = request.getParameter("notice_id");
	NoticeDao dao = new NoticeDao();
	int result = dao.delete(notice_id);
	if(result == 1) {
	    response.sendRedirect("notice_list.jsp");
	}
%>