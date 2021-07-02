package com.morganJ.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class ServletTest05 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String gugu = request.getParameter("gugudan");
		
		int baseNumber = Integer.parseInt(gugu);
		
		out.println("<html> <head> <title> 리스트 </title> </head>"
				+ "<body> <ul>");
		
		for(int i=1; i < 10;i++) {
			out.println("<li>" + baseNumber+" X "+ i + " = " + (baseNumber*i) + "</li>");
		}
		out.println("</ul> </body></html>");
	}
	
}
