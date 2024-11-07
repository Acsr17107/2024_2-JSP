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
//1부터 5까지 짝수합, 홀수합 출력

int esum=0, osum=0;
int i;
for(i=1; i<=5; i++){
	if(i%2==0)   esum=esum+i;
	else osum=osum+i;
}
out.println("1부터"+(i-1)+"까지 짝수합"+esum+"<BR>");
out.println("1부터"+(i-1)+"까지 홀수합"+osum+"<BR>");
%>
</body>
</html>