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
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
%>
<%
	if (userid.equals("")) {
%>
		<jsp:include page="loginhandle.jsp" >
			<jsp:param name="userid" value="guest" />
			<jsp:param name="passwd" value="anonymous" />
		</jsp:include>
<%
	} else {
%>
		<jsp:include page="loginhandle.jsp" />
<%
}
%>
</body>
</html>