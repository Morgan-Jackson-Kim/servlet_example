package com.morganJ.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class ServletEx05 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		out.println("<html><head><title>회원정보</title></head>");
		out.println("<body>");
		out.println("<table border=1>");
		out.println("<tr> <th>아이디</th> <td>" + userId + "</td> </tr>");
		out.println("<tr> <th>이름</th> <td>" + name + "</td> </tr>");
		out.println("<tr> <th>생년월일</th> <td>" + birth  + " </td> </tr>");
		out.println("<tr> <th>이메일</th> <td>" + email + "</td> </tr>");
		out.println("</table> </body> </html>");
		
	}

}