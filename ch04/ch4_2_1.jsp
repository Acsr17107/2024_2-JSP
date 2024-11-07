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
int kor=90;
int eng=95;
int mat=90;
int sum, avg;
sum=kor+eng+mat;
avg=sum/3;
switch ((int)(avg/10)){
    case 10:
    case 9:    out.println("평균:"+avg+", 학점:A");    break;
    case 8:    out.println("평균:"+avg+", 학점:B");    break;
    case 7:    out.println("평균:"+avg+", 학점:C");    break;
    case 6:    out.println("평균:"+avg+", 학점:D");    break;
    default:   out.println("평균:"+avg+", 학점:F");
}

/* 평점을 계산하는 프로그램을 평균이 90점 이상 100점 이하면 A학점
  80점이상 90점 미만이면 B학점, 70점 이상 80점 미만이면 c학점, 
  60점 이상 70점 미만이면 D학점 60점 미만이면 F학점 처리

int kor=90;
int eng=95;
int mat=90;
int sum, avg;

sum=kor+eng+mat;
avg=sum/3;

if (avg>=90 && avg <=100)     out.println("A학점");
else if(avg>=80 && avg <90)  out.println("B학점");
else if(avg>=70 && avg <80)  out.println("C학점");
else if(avg>=60 && avg <=70) out.println("D학점");
else    out.println("F학점");

*/
%>
</body>
</html>