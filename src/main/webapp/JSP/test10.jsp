<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
					<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
					<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
					<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>달력 만들기</title>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month  = cal.get(Calendar.MONTH);
		
		//몇번째 달인지 세팅
		//cal.set(Calendar.MONTH, 5);
		
		//달의 시작 날짜 세팅
		cal.set(Calendar.DATE, 1);
		
		int startday = cal.get(Calendar.DATE);
		SimpleDateFormat format1 = new SimpleDateFormat("YYYY-MM");
		int startDayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	%>
	
	<div class="container">
		<header class="display-4 text-center justify-content-between">
			<div>
			<% out.println(format1.format(cal.getTime())); %>
			</div>
			
		</header>
		<br>
		
		<table class="table ">
			<thead>
				<tr class="text-center h1">
					<td class="text-danger">일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td>토</td>
				</tr>
			</thead>
			
			<tbody class="text-center h1">
				<tr >
				<%
					for(int i = 1 ; i <=7; i++){
						if(i == startDayOfWeek){
							%>
							<td><%out.print(cal.get(cal.DATE));%> </td>
							<%
							break;
						}else {
							%><td></td><%
						}
					}
					for(int i = startDayOfWeek+1 ; i <=7; i++){
						cal.add(Calendar.DATE, 1);
						%>
						<td><%out.print(cal.get(cal.DATE));%> </td>
						<%
					}
				%>
				</tr>
				<%
				for(int i = 1 ; i < cal.getActualMaximum(Calendar.WEEK_OF_MONTH)  ; i++){
				%>
				<tr>
					<%					
					for(int j = 1 ; j <=7; j++){
						cal.add(Calendar.DATE, 1);
							
						%>
						<td><%out.print(cal.get(cal.DATE));%> </td>
						<%
						if(cal.get(cal.DATE) == cal.getActualMaximum(Calendar.DATE)){
							break;
						}
					}
					if(cal.get(cal.DATE)>cal.getActualMaximum(Calendar.DATE) ){
						break;
					}
					%>
				</tr>
				<% 	}%>				
			</tbody>
			
		</table>
	
	</div>

</body>
</html>