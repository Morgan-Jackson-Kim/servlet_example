<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java 제어문 활용</title>
</head>
<body>
	<%
		//map 성적관리
		//{"korea"=85,"math"=90}
	
		Map<String,Integer> scoreMap = new HashMap<>();
		scoreMap.put("korea", 85);
		scoreMap.put("english", 100);
		scoreMap.put("math",90 );
		scoreMap.put("science", 80);
		
	%>
	
	<table border="1">
		<%
			Set<String> keys = scoreMap.keySet();
			for(String key : keys){	
		%>
		<tr>
			<td>
				<%
					if(key.equals("korea")){
						%>
						<!-- html 부분 -->
						국어
						<%
					}
				%>
				<%
					if(key.equals("math")){
						out.println("수학");
					}else if(key.equals("english")){
						out.println("영어");
					}else if(key.equals("science")){
						out.println("과학");
					}
				%>
			</td>
			<td><%= scoreMap.get(key) %></td>
		</tr>
		<%
			}
		%>
		
	</table>
	
</body>
</html>