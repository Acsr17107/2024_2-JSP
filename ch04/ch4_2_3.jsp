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
//1���� 5���� ¦����, Ȧ���� ���

int esum=0, osum=0;
int i;
for(i=1; i<=5; i++){
	if(i%2==0)   esum=esum+i;
	else osum=osum+i;
}
out.println("1����"+(i-1)+"���� ¦����"+esum+"<BR>");
out.println("1����"+(i-1)+"���� Ȧ����"+osum+"<BR>");
%>
</body>
</html>