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

@WebServlet("/db/ex01")
public class ServletDBex01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response ) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		//used_goods Insert 
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
//		String query = "INSERT INTO `used_goods`\r\n"
//				+ "(`title`, `price`, `description`,`sellerId`,`createdAt`,`updatedAt`)\r\n"
//				+ "VALUE ('고양이 간식 팝니다.', 2000, '저희 고양이가 입맛이 까다로워서 잘 안먹어요',5,now(),now());";
//		
//		int count = 0;
//		
//		try {
//			count=mysqlService.update(query);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		out.println(count +  "행 Insert");
		
		//SELECT 수행 
		String query = "SELECT * FROM `used_goods`";
		
		try {
			ResultSet resultSet = mysqlService.select(query);
			
			while(resultSet.next()) {
				out.println(resultSet.getInt("id"));
				out.println(resultSet.getString("title"));
				out.println(resultSet.getInt("price"));
				out.println(resultSet.getString("description"));
			}
			
			mysqlService.disconnect();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
