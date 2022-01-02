<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Welcome</title>
		<link rel="stylesheet" type="text/css" href="assets/css/homeStyle.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
			    <a class="nav-link   fs-5  text-dark" href="<c:url value="/logout.do"/>" tabindex="-1" >Logout</a>
			  </li>
			</ul>   
		  </div>	
		</nav>
		
		<img alt="" src="assets/images/wing1.png" class="bg">
		
		<main class="site-wrapper">
  			<div class="pt-table desktop-768">
			    <div class="pt-tablecell page-home relative" style="background-position: center;
			    background-size: cover;">

                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">

                                <div class="hexagon-menu clear">
                                   
                                    <div class="hexagon-item">
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                         <a  href="<c:url value="/Job_On_Demand.do"/>"class="hex-content">
                                            <span class="hex-content-inner">
                                                <span class="icon">
                                                    
                                                    <i class="fa fa-id-badge"></i>
                                                </span>
                                                <span class="title">Jobs</span>
                                            </span>
                                            <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#1e2530"></path></svg>
                                        </a>
                                    </div>
                                    <div class="hexagon-item">
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <a  href="skillsOnDemand.html"class="hex-content">
                                            <span class="hex-content-inner">
                                                <span class="icon">
                                                    <i class="fa fa-braille"></i>
                                                </span>
                                                <span class="title">skills</span>
                                            </span>
                                            <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#1e2530"></path></svg>
                                        </a>
                                           
                                    </div>
                                    <div class="hexagon-item">
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <a href="specialty/specialty.html" class="hex-content">
                                            <span class="hex-content-inner">
                                                <span class="icon">
                                                    
                                                    <i class="fa fa-bullseye"></i>
                                                </span>
                                                <span class="title">Specialty</span>
                                            </span>
                                            <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#1e2530"></path></svg>
                                        </a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
  </main>
		
			
		
		
		
		<script src="https://use.fontawesome.com/d531c8d913.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	</body>
</html>