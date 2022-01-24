<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.dream.vo.NoticeVO,com.dream.dao.NoticeDao" %>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="com.dream.vo.NoticeVO"></jsp:useBean>
<jsp:setProperty name="vo" property="*" />
<%
	NoticeDao dao = new NoticeDao();
	int result = dao.update(vo);
	if(result == 1) {
		response.sendRedirect("notice_list.jsp");
	}
%>