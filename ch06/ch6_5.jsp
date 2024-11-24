<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--forward 액션태그 다른 페이지로 이동-->
<h2> forward 액션 태그 </h2>
forwardmain.jsp 파일 시작 부분입니다.<br>
<jsp:forward page="forwardsub.jsp" />
forwardmain.jsp 파일 끝 부분입니다.  제어권넘어가 출력안됨.
</body>
</html>