package com.morganJ.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.morganJ.common.MysqlService;

@WebServlet("/db/test01")
public class ServletDBTest01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest reqeust, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		
		String query = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL, now(), now());";
		int count = 0;
		try {
			count = mysqlService.update(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		out.println(count + " 행 삽입!!");
		
		String selectQuery = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";
		
		try {
			ResultSet resultSet = mysqlService.select(selectQuery);
			
			while(resultSet.next()) {
				out.print("매물 주소 : " + resultSet.getString("address"));
				out.print(", 면적 : " + resultSet.getInt("area"));
				out.println(", 타입 : " + resultSet.getString("type"));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
				
		
		
		
	}

}
