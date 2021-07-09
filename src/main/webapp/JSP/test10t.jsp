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
<title>달력 만들기 강의</title>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM");
		Date date = format1.parse("2010-10");
		
//		cal.set(Calendar.YEAR,2010);
//		cal.set(Calendar.MONTH,9);
//		cal.set(Calendar.DATE,1);
		cal.setTime(date);
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		//일:1 ,월:2,화:3,수:4....
		int dayNumber = cal.get(Calendar.DAY_OF_WEEK);
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
			<tbody class="text-center">
				<%
				//월요일이 1일이다. -> 0 1 2 3 4 5  DayNumber:2
				//화요일이 1일이다. -> -1 0 1 2 3 4 5 DayNumber:3
				//수요일이 1일이다. -> -2 -1 0 1 2 3 4 DayNumber:4
				int day = 2 - dayNumber;
				for(int j = 0 ; j<6; j++) { %>
				<tr>
					<%for(int i = 1 ; i <=7 ;i++){%>
					
						<td class="display-4">
						<% if(day>0){
							out.print(day);
						} %>
						</td>
					<% 
						if(day == lastDay){
							break;
						}
						day+=1;
						} %>
					
				</tr>
				<%
					if(day == lastDay){
						break;
					}
				} %>
			</tbody>
			
			
			
		</table>
	
	</div>
</body>
</html>