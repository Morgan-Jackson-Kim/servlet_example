<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>
	<%
		int cmNumber=Integer.parseInt(request.getParameter("cmNumber"));
		String[] transArray = request.getParameterValues("trans");
	%>
	<h1>변환 결과</h1>
	<h3><%= cmNumber %>cm</h3> 
	<hr>
	<h3>
	<%
		if(transArray != null){
			
			for(String trans : transArray){
				if(trans.equals("inch")){
					double inch = cmNumber*0.39;
					out.println((double)(cmNumber*0.39)+" in"+ "<br>");
					%>
						<!-- html -->
						<%=inch %> in <br>
					<%
				}
				if(trans.equals("yard")){
					out.println((double)(cmNumber*0.0109361329834)+" yd"+ "<br>");
				}
				if(trans.equals("feet")){
					out.println(cmNumber/2.54/12+" ft"+ "<br>");
				}
				if(trans.equals("miter")){
					out.println(cmNumber/100.0 + " m"+ "<br>");
				}
			}
		}
	%>
	</h3>
	
</body>
</html>