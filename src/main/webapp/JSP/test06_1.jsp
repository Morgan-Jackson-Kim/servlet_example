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
	<title>장보기 목록</title>
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
			    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	%>
	
	<div class="container">
		<header class="text-center h1">장 목록</header>
		<section class="d-flex">
			<div class="col-4 text-center">
				<hr>
				<h3>번호</h3>
				<hr>
				<%
					for(int i = 1 ; i <= goodsList.size(); i++){
						out.println(i + "<hr>");
					}
				%>
			</div>
			<div class="col-8 text-center">
				<hr>
				<h3>품목</h3>
				<hr>
				<%
					for(int i = 0 ; i < goodsList.size(); i++){
						out.println(goodsList.get(i) + "<hr>");
					}
				%>
			</div>
		</section>
	
	</div>
	
	<div class="container mt-4">
		<header class="text-center h1">장 목록</header>
		<div>
			<table class="table text-center">
				<tr>
					<th class="col-4">번호</th>
					<th class="col-8">품목</th>
				</tr>
				<% 
					for(int i = 0 ; i<goodsList.size(); i++){
						
				%>
				<tr>
					<td>
					<% out.println(i+1);%>
					</td>
					<td>
					<%out.println(goodsList.get(i));%>
					</td>
				</tr>
				<%	} %>
			</table>
		</div>
	</div>
	
	
</body>
</html>