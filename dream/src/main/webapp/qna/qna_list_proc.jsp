<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page import="java.io.PrintWriter" %>

<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.dream.vo.QnaVO"></jsp:useBean>
<jsp:setProperty name="vo" property="*" />

<%
    String sid = null;
    if(session.getAttribute("sid") != null){
	    sid = (String)session.getAttribute("sid");
	    response.sendRedirect("http://localhost:9000/dream/qna/qna_write.jsp");
	
	}     
%>
