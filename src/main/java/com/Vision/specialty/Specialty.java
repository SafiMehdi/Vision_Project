package com.Vision.specialty;

import java.io.IOException;
import Models.*;
import weka.core.Instances;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/Specialty.do")
public class Specialty extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/Specialty.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
        String[] skills = gson.fromJson(request.getParameter("skills"), String[].class);
        
        ArrayList<String> list = new ArrayList<>();
		list.add("symfony/laravel/php");
        list.add("node/react/vue./angular/javascript/js");
		list.add("bootstrap/html/css");
        list.add("mongodb/mariadb/oracle/sql");
        list.add("hibernate/spring/java");
        list.add("c++/c#/api /.net");
        list.add("bitbucket/git");
        list.add("mesos/kubernetes/docker");
        list.add("puppet/terraform/ansible");
        list.add("jenkins/chef");
        list.add("Linux/Unix/Windows");
        list.add("scala/ r /python/data");
        list.add("business intelligence/power bi/bi");
        list.add("cloudera/azure/gcp/aws/sas/cloud");
        list.add("hadoop/spark/storm/kafka/nifi/ranger/hive");


        
        ArrayList<String> arrayToBeSent= new ArrayList<String>();
		List<String> skillsArray = Arrays.asList(skills);
			for(String skill : list) {
        		String elementList[] = skill.split("/");
        		boolean bool = false;
        		for(String hamid : elementList) {
        			bool = skillsArray.contains(hamid);
        			if(bool)
        				break;
        		}
        		arrayToBeSent.add(String.valueOf(boolToInt(bool)));
			}

		//double[] vals = new double[data.numAttributes()];

		double[] vals = new double[arrayToBeSent.size()];
		
		for(int i=0; i< arrayToBeSent.size(); i++) {
			vals[i] = Double.parseDouble(arrayToBeSent.get(i));
		}
		
		System.out.println(vals);
        
		Classification weka;
		try {

			weka = new Classification("/home/ismailyh/Desktop/Data_Linux_In_Shuffled.csv");
			weka.selectFeatures();
			weka.buildDecisionTree();
			String result = weka.classifyData(vals);
			PrintWriter out = response.getWriter();
			response.setContentType("text");
			out.println(result);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		/*
		 * response.setContentType("text/html");
		 * 
		 * // Actual logic goes here. PrintWriter out = response.getWriter();
		 * out.println("skills are a khay brothers" + arrayToBeSent);
		 */
       
	}
	static double boolToInt(Boolean b) {
	    return b.compareTo(false);
	}

}
