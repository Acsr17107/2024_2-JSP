<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String s_id="aa";
String s_pw="12";
String s_name="kim";

if(s_id.equals(request.getParameter("id")) && s_pw.equals(request.getParameter("pw")))
{	session.setAttribute("memName",s_name);
	response.sendRedirect("main2.jsp");
}
else{
	response.sendRedirect("login2.html");
}
%>