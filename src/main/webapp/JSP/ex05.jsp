<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		// Date : 날짜와 시간을 저장하는 데이터 클래스
		// Calendar : Date 객체를 포함하고, 날짜 계산을 수월하게 해주는 클래스
		Calendar today = Calendar.getInstance();
		out.println(today);
		
		//심플 데이트 포멧 출력
		SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		out.println(format.format(today.getTime()) + "<br>");
		
		//어제 날짜 출력
		today.add(Calendar.DATE, +100);
		
		out.println(format.format(today.getTime()) + "<br>");
		
		today.add(Calendar.MONTH, +10);
		
		out.println(format.format(today.getTime()) + "<br>");

		today.add(Calendar.YEAR, +6);
		
		out.println(format.format(today.getTime()) + "<br>");
		
		//Calendar로 정보 얻기
		int weeks = today.get(Calendar.WEEK_OF_YEAR);
		
		out.println(weeks);
	
		int day = today.get(Calendar.DAY_OF_WEEK);
		
		out.println(day);
		
		//날짜 비교
		Calendar otherDay = Calendar.getInstance();
		otherDay.add(Calendar.DATE, 36666);
		
		int result = today.compareTo(otherDay);
		
		out.println(result);
		//앞의 객체가 더 크면 1
		// 같으면 0
		// 앞의 객체가 더 작으면 -1
		
		if(result>0){
			out.println("앞 객체가 더 크다");
		} else if (result == 0){
			out.println("앞 와 같다");
		} else if (result < 0){
			out.println("앞 객체가 더 작다");
		}

		
	%>

</body>
</html>