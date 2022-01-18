<%@ page import="com.dream.vo.MemberVO" %>
<%@ page import="com.dream.dao.MemberDao" %>
<%@ page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<jsp:useBean id="vo" class="com.dream.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/> <!-- 데이터를 vo에 전달  -->
<!-- 빼올 때도 jsp:getProperty써도 되고 < %vo.get~()% > 이렇게 빼와도 됨-->
    
<%
    MemberDao dao = new MemberDao();
    int result = dao.getLoginResult(vo);
   
    if(result == 1){
        //로그인에 성공했으면 id를 세션에 담아 브라우저에 전송
        session.setAttribute("sid", vo.getMem_id()); 
        response.sendRedirect("http://localhost:9000/dream/index.jsp");
    }else{
        response.sendRedirect("login.jsp?login_result=fail"); //로그인 실패시 페이지 넣어주기 
    }
%>