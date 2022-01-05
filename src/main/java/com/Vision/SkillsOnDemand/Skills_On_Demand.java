package com.Vision.SkillsOnDemand;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database_service.Db_services;

@WebServlet("/Skills_On_Demand.do")
public class Skills_On_Demand extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<Map<String, String>> skills_array = Db_services.get_skills();
			
			request.setAttribute("skills", skills_array);
			request.getRequestDispatcher("/WEB-INF/views/skills_on_demand.jsp").forward(request, response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
