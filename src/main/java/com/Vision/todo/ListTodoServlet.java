package com.Vision.todo;

import java.io.BufferedInputStream;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/list-todos.do")
public class ListTodoServlet extends HttpServlet {

	private TodoService todoService = new TodoService();

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		HttpClient client = HttpClient.newHttpClient();
		HttpRequest request1 = HttpRequest.newBuilder()
				.uri(URI.create("http://localhost:8080/person"))
				.build();
		
		try {
			HttpResponse response_http = client.send(request1, HttpResponse.BodyHandlers.ofString());
			request.setAttribute("todos", todoService.retrieveTodos());
			
			String data = response_http.body().toString();
			
			JSONParser parser = new JSONParser();
			try {
				JSONObject json = (JSONObject) parser.parse(data);
				request.setAttribute("data", json.get("city"));
				request.getRequestDispatcher("/WEB-INF/views/list-todos.jsp").forward(request, response);
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} catch (IOException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}