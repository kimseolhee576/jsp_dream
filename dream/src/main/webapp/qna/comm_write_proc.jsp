<%@ page import="com.dream.vo.CommVO" %>
<%@ page import="com.dream.dao.CommDAO" %>
<%@ page import="com.dream.vo.QnaVO" %>
<%@ page import="com.dream.dao.QnaDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>


<%
request.setCharacterEncoding("utf-8");
int qna_id = Integer.parseInt(request.getParameter("qna_id"));
%>
<jsp:useBean id="vo" class="com.dream.vo.CommVO"></jsp:useBean> 
<jsp:setProperty name="vo" property="*" />

<%
    CommDAO dao = new CommDAO();
    String mem_id1 = request.getParameter("mem_id1");
    
	int result = dao.writeC(vo);
	
	if(result ==1){
	    QnaDAO qdao = new QnaDAO();
	    qdao.subtractHits(qna_id);
	    qdao.addCommCount(qna_id);
		response.sendRedirect("qna_content.jsp?qna_id="+qna_id);
	} 
	
%>    