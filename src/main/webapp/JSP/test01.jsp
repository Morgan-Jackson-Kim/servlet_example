<%@page import="java.time.Period"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP test 01</title>
</head>
<body>
	
	<% int[] scores = {80,90,100,95,80};
		int sum = 0;
		for(int i = 0 ; i < scores.length ; i ++){
			sum += scores[i];
		}
		
	%>
	
	<div>
		점수 평균은 <%= sum/scores.length %>
	</div>
	
	<%
		int testScore = 0;
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		for (int i = 0; i < scoreList.size() ; i++){
			if ( scoreList.get(i).equals("O")){
				testScore += 10;
			}
		}
		
	%>
	<div>
		채점 결과 <%= testScore %>
	</div>
	
	<%!
		int sumN = 0;
		public int sumtoN(int A) {
		
		for(int i = 1 ; i <= A; i ++){
			sumN += i;
		}
		return sumN;
	}
	%>
	
	<div>
		50까지의 합 <%= sumtoN(50) %>
	</div>
	
	<%!	
		
		//오늘 년도 구하기 Calender 기능 
		Date today = new Date();
		Calendar cal = Calendar.getInstance();
		int todayY = cal.get(Calendar.YEAR);	
		
		public int calAge(String birth){
			int birthY = Integer.parseInt(birth.substring(0, 4));
			return todayY-birthY;
		}
	%>
	
	<div>
		20010820의 나이는 <%= calAge("20010820") %>
	</div>
	
	
</body>
</html>