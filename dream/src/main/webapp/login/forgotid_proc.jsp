<%@ page import="com.dream.vo.MemberVO" %>
<%@ page import="com.dream.dao.MemberDao" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<% request.setCharacterEncoding("utf-8"); %>    
<jsp:useBean id="vo" class="com.dream.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/> <!-- 데이터를 vo에 전달  -->
<!-- 빼올 때도 jsp:getProperty써도 되고 < %vo.get~()% > 이렇게 빼와도 됨-->
    
<%
    MemberDao dao = new MemberDao();
    int result = dao.getFindIdResult(vo);
   
    if(result == 1){
        //일치하는 회원정보를 찾았으면 
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("if(confirm('회원님의 아이디는 입니다. 로그인으로 이동하시겠습니까?')){");
        script.println("location.href='http://localhost:9000/dream/login/login.jsp'");
        script.println("}else{");
        script.println("location.href='http://localhost:9000/dream/login/forgotpw.jsp'}");
        script.println("</script>");
    }else{
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('일치하는 회원 정보가 없습니다.')");
        script.println("history.back()");
        script.println("</script>");
    }   
%>