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
int i, j;
//다중 for문
for(i=1;i<=2;i=i+1){
	out.print("<br>===><br>");
	for(j=1;j<=3;j++){
		out.print(j);
	}  //j
}//i
%>
</body>
</html>