package com.morganJ.db;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.morganJ.common.MysqlService;

public class ServletEx02Insert extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// 파라미터 저장
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		String insertQuery = "INSERT INTO `new_user` \r\n"
				+ "(`name`, `yyyymmdd`, `email`, `introduce`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE ('" + name + "', '" + yyyymmdd + "', '" + email + "', '" + introduce + "', now(), now());";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		mysqlService.disconnect();
		
		// 다른 페이지로 이동하기 
		// response 를 통해서 
		response.sendRedirect("/db/ex02.jsp");
		
	}
}
