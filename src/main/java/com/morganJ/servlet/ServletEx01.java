package com.morganJ.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글 깨짐 방지
		//인코딩 설정
		response.setCharacterEncoding("UTF-8");
		//컨텐츠 타입
		response.setContentType("text/plain");
		
		// Date 객체 
		Date now = new Date();
		PrintWriter out = response.getWriter();
		out.println(now);
		
		//formatter
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String formatDate = format.format(now);
		out.println(formatDate);
	}
	
}
