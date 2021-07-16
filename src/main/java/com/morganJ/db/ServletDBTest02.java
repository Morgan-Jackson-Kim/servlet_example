package com.morganJ.db;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.morganJ.common.MysqlService;

@WebServlet("/db/test02_insert")
public class ServletDBTest02 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String insertQuery = "INSERT INTO `favorite`(`name`,`url`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUE(' "+ name + "','"+ url + "',now(),now());";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("/db/test02.jsp");
	}

}
