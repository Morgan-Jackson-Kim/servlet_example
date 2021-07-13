<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱챠트</title>
 <!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<style type="text/css">
		.mainbox{
			height:250px;
			width:100%;
		}
	</style>
</head>
<body>



<div class="container">
	<jsp:include page="header.jsp"/>
	<jsp:include page="menu.jsp"/>
	<%@ include file="data.jsp" %>
	
	<section>
		<div class="border border-success mainbox d-flex">
			<img class="m-3" alt="아티스트 이미지" src="<%= artistInfo.get("photo") %>">
			<div class="m-3">
			<h1><%= artistInfo.get("name") %></h1>
			<h4 class="mt-3"><%= artistInfo.get("agency") %> <br>
				<%= artistInfo.get("debute") %>
			 </h4>
			  </div>
		</div>
		<br>
		<br>
		<h2>곡 목록</h2>
		
		<table class="table text-center font-weight-bold">
			<thead>
				<th>no</th>
				<th>제목</th>
				<th>앨범</th>
			</thead>
				
			<tbody>	
			<% 
			 	//for(int i = 0 ; i <musicList.size();i++){
			 		// Map<String,Object>info = musicList.get(i);
				for(Map<String,Object> item: musicList){
							
				%>
					<tr>
						<td><%= item.get("id") %></td>
						<td><a href="/jspTemplete/test02/test02music.jsp?title=<%= item.get("title") %>"><%= item.get("title") %></a></td>
						<td><%= item.get("album") %></td>
					</tr>
						<% 	}  %>
				</tbody>
			</table>
		
		
	</section>
	
	<jsp:include page="footer.jsp"/>

</div>


</body>
</html>