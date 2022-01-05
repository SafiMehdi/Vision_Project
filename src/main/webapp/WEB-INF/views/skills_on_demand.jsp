<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList;"%>



<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Welcome</title>
		<link rel="stylesheet" type="text/css" href="assets/css/skillsOnDemand.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css'>
		<link rel='stylesheet' href='https://demo.themesberg.com/pixel-pro/css/pixel.css'>
		<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	</head>
	<body>
		
		<nav class="navbar navbar-light">
		  <div class="container">
		    <a class="navbar-brand my-n5" href="#">
		      <img src="assets/images/logo.png" alt="" width="80" height="65">
		    </a>   
		   <ul class="nav me-5">
			  <li class="nav-item">
			    <a class="nav-link  fs-5 text-dark" href="#">Home</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link   fs-5  text-dark" href="#team">Team</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link   fs-5 text-dark" href="#">About</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link   fs-5  disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
			  </li>
			</ul>   
		  </div>	
		</nav>
				<img alt="" src="assets/images/wing1.png" class="bg">
		
		   <div class="container">
		       <!-- Title  -->
		      
		      <div class="row mt-4 skills">
		         <div class="col-md-10 mx-auto">
		            <!-- Timeline -->
		            <div class="timeline timeline-one">
		            	<c:forEach var="skill" items="${requestScope.skills}">
				            <div class="timeline-item">
					            <span class="icon icon-info icon-lg"><i class="fas fa-laptop-code"></i></span>
					            <h5 class="my-3 fw-bold"><c:out value="${skill[\"label\"]}"/></h5>
					            <p><c:out value="${skill[\"description\"]}"/></p>
					        </div>
			            </c:forEach>
		            </div>
		            <!--End of Timeline-->
		         </div>
		      </div>
		</div>
		<script src="https://use.fontawesome.com/d531c8d913.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	</body>
</html>