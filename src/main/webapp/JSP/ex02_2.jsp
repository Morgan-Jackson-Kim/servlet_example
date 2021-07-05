<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//파마리터 얻어 오기
		//request 객체가 기본으로 사용가능
		String userId = request.getParameter("user_id");
		String name =request.getParameter("name");
		String age = request.getParameter("age");
	%>
	
	<b>아이디:</b><%=userId %> <br>
	<b>이름:</b><%= name %> <br>
	<b>나이:</b><%= age %>

</body>
</html>