<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.dream.vo.CommVO,com.dream.dao.CommDAO"
    %>

<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.dream.vo.CommVO"></jsp:useBean> 
<jsp:setProperty name="vo" property="*" />

<%
CommDAO dao = new CommDAO();
    String qna_id = request.getParameter("qna_id");
    String mem_id = request.getParameter("mem_id");
    
	int result = dao.writeC(vo);
	
	if(result ==1){
		response.sendRedirect("qna_content.jsp?qna_id="+request.getParameter("qna_id"));
	} 
%>    