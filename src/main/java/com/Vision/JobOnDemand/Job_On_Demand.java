package com.Vision.JobOnDemand;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import database_service.Db_services;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Job_On_Demand.do")
public class Job_On_Demand extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<Map<String, String>> jobs_array = Db_services.get_jobs();
			
			request.setAttribute("jobs", jobs_array);
			request.getRequestDispatcher("/WEB-INF/views/job_on_demand.jsp").forward(request, response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
