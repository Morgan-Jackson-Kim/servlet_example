package com.morganJ.db;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.morganJ.common.MysqlService;

@WebServlet("/db/ex02_delete")
public class ServletEx02Delete extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String deleteQuery = "DELETE FROM `new_uesr`WHERE `id` = " + id + ";";
		
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		response.sendRedirect("/db/ex02.jsp");
	}

}
