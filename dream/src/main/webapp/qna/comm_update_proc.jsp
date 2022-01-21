<%@ page import="com.dream.vo.CommVO" %>
<%@ page import="com.dream.dao.CommDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String sid = (String)session.getAttribute("sid");
%>
<jsp:useBean id="vo" class="com.dream.vo.CommVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<%
    
    CommDAO dao = new CommDAO();
    vo.setMem_id2(sid);
	int result = dao.updateC(vo);
	
	if(result ==1){
	    response.sendRedirect("qna_content.jsp?qna_id="+vo.getQna_id());
	}
	
%>
