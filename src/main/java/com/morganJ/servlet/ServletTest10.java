package com.morganJ.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class ServletTest10 extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("userpassword");
		
		
		out.println("<html><head><title>로그인</title></head>");
		out.println("<body>");
		if(!userMap.get("id").equals(userId)) {
			out.println("<h3>id가 일치하지 않습니다.</h3>");
		} else if (!userMap.get("password").equals(password)) {
			out.println("<h3>password가 일치하지 않습니다.</h3>");
		} else {
			out.println("<h1>" + userMap.get("name") + "님 환영 합니다.</h1>");
		};
		out.println("</body> </html>");
		
	}
	
	
}
