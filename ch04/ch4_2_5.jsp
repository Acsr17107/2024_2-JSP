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
//3�� ���
int gu=3;
int i =1;   //�ʱ�ġ

do{
	out.print(gu+"*"+i+"="+(gu*i)+"<br>");//�ݺ�����
	i=i+1;  //����ġ
}while(i <= 9);  //����
%>
</body>
</html>