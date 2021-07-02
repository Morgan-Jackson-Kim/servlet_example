package com.morganJ.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class ServletTest07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String priceString = request.getParameter("price");
		int price = Integer.parseInt(request.getParameter("price"));
		
		String addressResult;
		String cardResult;
		
		
		out.println("<html><head><title>결제정보</title></head>");
		out.println("<body>");
		if (!address.contains("서울시")) {
			out.println( "<h2>배달 불가 지역입니다.</h2>") ;
		}else if(card.contains("신한카드")) {
			out.println("결제 불가 카드 입니다.");
		}else {
			out.println("<h1>" + address + "</h1>");
			out.println("<hr> 결제금액 : " + price);
		};	
		out.print("</body></html>");
	}

}
