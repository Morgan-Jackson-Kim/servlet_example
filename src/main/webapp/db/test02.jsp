<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.morganJ.common.MysqlService" %>    
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>즐겨찾기 목록</title>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String selectQuery = "SELECT * FROM `favorite` ORDER BY `id` DESC";
		ResultSet resultSet = mysqlService.select(selectQuery);
	%>


	<div class="container">
		<table class="table">
			
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
				</tr>
			</thead>
			
			<tbody>
			<%
				while(resultSet.next()){
					
				
			%>
				<tr>
					<td><%=resultSet.getString("name") %></td>
					<td> <a href="<%=resultSet.getString("url")%>" target="_blank"> <%= resultSet.getString("url") %></a> </td>
					<td><a href="/db/test02_delete?id=<%=resultSet.getInt("id")%>" class="btn btn-danger">삭제</a> </td>
				</tr>
			</tbody>
			
			<% } %>
		
		</table>
	</div>
</body>
</html>