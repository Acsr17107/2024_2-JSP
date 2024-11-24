<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String s_name="";
if(session.getAttribute("memName")==null)
{
	response.sendRedirect("login2.html");
}
s_name=(String)session.getAttribute("memName");
%>
<form method="post" action="Logout2.jsp">
<%= s_name %>님 안녕하세요
<br>
저희 홈페이지에 방문해 주셔서 감사합니다.<br>
즐거운 시간 되세요....<br>
<input type="submit" value="로그아웃">
</form>