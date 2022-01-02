package com.Vision.login;

import java.io.IOException;
import com.Vision.todo.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	private LoginService userValidationService = new LoginService();
	private TodoService todoService = new TodoService();
	

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean isUserValid = userValidationService.isUserValid(email, password);
		  
		  if (isUserValid) { 
		  request.getSession().setAttribute("first_name", email);
		  response.sendRedirect("/list-todos.do"); 
		  }else{
		  request.setAttribute("errorMessage", "Invalid Credentials!");
		  request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,response); 
		  }
		 
	}

}