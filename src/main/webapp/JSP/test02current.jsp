<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 날짜</title>
</head>
<body>
	<% 
		Date today = new Date();
		String whatformat = request.getParameter("whatformat");
		
		SimpleDateFormat simpleDate = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
		SimpleDateFormat simpletime = new SimpleDateFormat("현재 시간 H시 m분 s초");
		
		String printDT = "";
		if(whatformat.equals("date")){
			 printDT = simpleDate.format(today);
			}else if(whatformat.equals("time")){
				printDT = simpletime.format(today);
			}
		
	%>
	<h1> <%= printDT %> </h1>
	
</body>
</html>