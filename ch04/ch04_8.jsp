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
// �빮�� Y, �ҹ��� y�� ��� yes�� ���
// �빮�� N, �ҹ��� n�� ��� NO�� ���
//�� �� ���ڴ� ������ ���

char ch3='n' ;

if (ch3=='Y' || ch3 =='y')
    out.println("yes");
else if(ch3=='N' || ch3=='n')
    out.println("no");
else
    out.println("error");
%>

</body>
</html>