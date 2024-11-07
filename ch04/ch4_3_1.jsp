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
int num[] ={10,20,30};
for (int n : num){
	out.println(n + "  ");
}


/*
String[] strMember = {"김지홍", "이수용", "임화석"};

for(String n : strMember)     //for each문 자바 1.6버전이상부터지원하는문
	out.println(n + "<BR>");
*/
/*
String[] strMember = {"김지홍", "이수용", "임화석", "홍길동"};

for(int i=0;i<strMember.length; i++)
	out.println(strMember[i] + "<BR>");

*/
/*
String[] strMember = new String[3];

strMember[0] = new String("김지홍");
strMember[1] = new String("이수용");
strMember[2] = new String("임화석");

out.println(strMember[0] + "<BR>");
out.println(strMember[1] + "<BR>");
out.println(strMember[2] + "<BR>");
*/
%>
</body>
</html>