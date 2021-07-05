<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 연습</title>
</head>
<body>
	
	<% 
		int sum = 0;
		for(int i = 1; i <=10; i++){
			sum+=i;
		}
	
		
	%>
	<%-- jsp 주석 안보임 --%>
	
	<!--  주석 -->
	<b>합계: </b> <b><%=sum %></b>
	
	<input type="text" value="<%=sum %>">
	
	<% 
		List<String> animal = new ArrayList<>();
		animal.add("dog");
	%>
	<br>
	<b><%=animal.get(0) %></b>
	
	<%-- 정의 --%>
	<%!
		private int num = 100;
		public String getHelloWorld() {
			return "Hello World";
		}
	%>
	<%= getHelloWorld() %>
	
	<%= num * 10 + 123 %>
	
</body>
</html>