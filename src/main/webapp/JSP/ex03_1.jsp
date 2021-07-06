<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method 폼태그</title>
</head>
<body>
	
	<form method="post" action="/JSP/ex03_2.jsp">
		1.취미가 무엇인가요? <input type="text" name="hobby"> 
		<br><br>
		
		2.강아지 or 고양이 or 고슴도치 
		<br>
		<label>강아지 <input type="radio" name="pet" value="dog"></label>
		<label>고양이 </label> <input type="radio" name="pet" value="cat"></label>
		<label>고슴도치 <input type="radio" name="pet" value="hedgehog"></label>
		
		<br><br>
		
		3. 다음중 선호하는 것을 고르세요.
		<br>
		<label>민트초코 <input type="checkbox" name="food" value="mincho"></label>
		<label>하와이안 피자 <input type="checkbox" name="food" value="pizza"></label>
		<label>번데기 <input type="checkbox" name="food" value="pupa"></label>
		
		<br><br>
		4. 좋아하는 과일
		<select name="fruit" >
			<option value="apple">사과</option>
			<option value="bannana">바나나</option>
			<option value="peach">복숭아</option>
			<option value="strawberry">딸기</option>
		</select>
		
		<input type="submit" value="제출">
		</form>	
</body>
</html>