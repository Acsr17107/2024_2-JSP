<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
%>
<%
String studentNum = request.getParameter("studentNum");
String[] majors = request.getParameterValues("major");
%>
<h2> 학생 정보 입력 결과 </h2>
학번 : <%= studentNum%> <p>
<%
if (majors == null) {   out.println("전공 없음.");}
else {
	for ( String eachmajor : majors )
		out.println(eachmajor + " ");
	//for (int i=0; i < majors.length; i++)
	//	out.println(majors[i] + " ");
}
%>
</body>
</html>