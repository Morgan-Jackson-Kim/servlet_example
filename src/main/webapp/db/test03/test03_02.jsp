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

<title>물건올리기</title>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String selectQuery = "SELECT * FROM `used_goods` ORDER BY `id` DESC";
		ResultSet resultSet = mysqlService.select(selectQuery);
	
	%>


	<div id="wrap">
		
		<div class="display-4">물건 올리기</div>
		<div class="input-box mt-5">
			<form id="inputForm" method="post" action="/db/test03/test03_insert">
				<div class="d-flex justify-contents-"></div>
			</form>
		</div>
		
		
	</div>





<script>
	$(document).ready(function(){
		$("#submitBtn").on("click",function(){
			var title = $("#titleInput").val();
			var price = $("#priceInput").val();
			
			if(($"#sellerSelect").val() == "0"){
				alert("판매자를 선택하세요");
				return false;
			}
			
			if(title == null || title == ""){
				alert("제목을 입력하세요");
				return false;
			}
			if(price == null || price == ""){
				alert("가격을 입력하세요");
				return false;
			}
			return true;
			
		})	
	
	})
	
</script>

</body>
</html>