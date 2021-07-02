package com.morganJ.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class ServletTest08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요.",
		        "부산의 제일가는 돼지국밥 맛집입니다.",
		        "너무 더웠던 오늘 이 식당을 추천합니다 제일 좋아요."
				));
		
		String searched = request.getParameter("search");
		
		out.println("<html><head><title>결제정보</title></head>");
		out.println("<body>");
		
		//방법1
		for(String content : list) {
			if(content.contains(searched)) {
				
				//강남역 최고 맛집 소개 합니다.
				// ["강남역 최고","소개 합니다."]
//				String[]contentArray = content.split(searched);
//				out.println(contentArray[0] + "<b>" + searched + "</b> "+ contentArray[1] +"<hr>");
				
				content = content.replace(searched, "<b>" + searched + "</b> ");
				out.println(content + "<hr>");
			}
		}
		
		//방법2
		for(int i = 0; i < list.size() ; i++) {
			if(list.get(i).contains(searched)) {
				out.println(list.get(i).replaceAll(searched, "<b>"+searched+"</b>"));
				out.println("<hr>");
			}
		};
		
		out.print("</body></html>");
		
		
	}
}
