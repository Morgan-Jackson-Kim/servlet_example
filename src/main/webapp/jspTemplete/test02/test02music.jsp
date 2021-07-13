<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 세부정보</title>
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

<%
    String targetTitle = request.getParameter("title");
%>


<div class="container">
	<jsp:include page="header.jsp"/>
	<jsp:include page="menu.jsp"/>
	<%@ include file="data.jsp" %>
	
	<section>
		<div class="border border-success mainbox d-flex">
			<% for(Map<String, Object> item:musicList){
				if(item.get("title").equals(targetTitle)){ %>
			<img class="m-3" alt="앨범 이미지" src="<%= item.get("thumbnail") %>">
			
			<div class="m-2">
			<span class="display-4"><%= item.get("title") %></span>
			<h4 class="mt-2 font-weight-bold text-success"><%=item.get("singer") %> <br></h4>
			<table>
				<tbody>
					<tr>
						<td>앨범</td>
						<td><%=item.get("album")%></td>
					</tr>
					<tr>
						<td>재생시간</td>
						<td><% out.println( (int)item.get("time")/60 + ":" + (int)item.get("time")%60);  %></td>
					</tr>
					<tr>
						<td>작곡가</td>
						<td><%=item.get("composer")%></td>
					</tr>
					<tr>
						<td>작사가</td>
						<td><%=item.get("lyricist")%></td>
					</tr>
				</tbody>
			</table>
			 </div>
			 <% } } %>
		</div>
		<br>
		<br>
		<h2>가사</h2>
		<hr>
		<h4>가사 정보 없음</h4>
		
		
		
	</section>
	
	<jsp:include page="footer.jsp"/>

</div>


</body>
</html>