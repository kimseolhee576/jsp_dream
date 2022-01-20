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
	}else{
	    PrintWriter script = response.getWriter();
	    script.println("<script>");
	    script.println("alert('로그인이 필요합니다.')");
	    script.println("location.href='http://localhost:9000/dream/login/login.jsp'");
	    script.println("</script>");
	}     
%>
