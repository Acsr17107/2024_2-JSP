<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- include 액션 태그 지정된 파일의 결과 삽입 -->
<h2> include 액션 태그 </h2>
	sub.jsp 파일 red 부분입니다.<br>
	<jsp:include page="sub.jsp" />
	main 파일 부분입니다.
</body>
</html>