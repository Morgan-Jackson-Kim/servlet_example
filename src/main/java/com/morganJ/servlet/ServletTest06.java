package com.morganJ.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class ServletTest06 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");
		
		int carNum1 = Integer.parseInt(number1);
		int carNum2 = Integer.parseInt(number2);
		
		String addition = "addition : " + (carNum1 + carNum2);
		String subtraction = "subtraction : " + (carNum1 - carNum2);
		String multiplication = "multiplication : " + (carNum1*carNum2);
		String division = "division : " + (carNum1/carNum2);
		
		out.println("{ addition ");
		
		
	}

}
